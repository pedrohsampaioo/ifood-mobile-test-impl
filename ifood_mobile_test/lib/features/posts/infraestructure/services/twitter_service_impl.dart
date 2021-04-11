import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../http_config/http_twitter_authenticator_decorator.dart';
import '../../domain/entities/post_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/failures/get_posts_by_id_failure.dart';
import '../../domain/failures/get_user_by_username_failure.dart';
import '../../domain/services/twitter_service.dart';
import '../models/post_model.dart';
import '../models/user_model.dart';

class TwitterServiceImpl extends TwitterService {
  final HttpTwitterAuthenticatorDecorator _httpClient;

  const TwitterServiceImpl(this._httpClient);

  @override
  Future<Either<GetPostsByIdFailure, List<PostEntity>>> getPostsById(
    String id,
  ) async {
    final response = await _httpClient.get(
      Uri.parse('/2/users/$id/tweets'),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (!json.containsKey('errors')) {
        final postsJson = jsonDecode(response.body)['data'] as List<dynamic>;
        final posts = postsJson
            .map<PostModel>(
              (post) => PostModel.fromJson(post),
            )
            .toList();
        return right(posts);
      }
      if (json.containsKey('title') && json['title'] == "Invalid Request") {
        return left(GetPostsByIdFailure.invalidPatternId());
      }
      final isUserNotFound = List<Map<String, dynamic>>.from(json['errors'])
          .map<String>((value) => value['title'])
          .contains('Not Found Error');
      if (isUserNotFound) {
        return left(GetPostsByIdFailure.userNotFound());
      }
    }
    return left(GetPostsByIdFailure.unidentifiedHttpFailure());
  }

  @override
  Future<Either<GetUserByUsernameFailure, UserEntity>> getUserByUsername(
    String username,
  ) async {
    final response = await _httpClient.get(
      Uri.parse('/2/users/by/username/$username'),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (!json.containsKey('errors')) {
        final user = UserModel.fromJson(json['data']);
        return right(user);
      }
      final isUserNotFound = List<Map<String, dynamic>>.from(json['errors'])
          .map<String>((value) => value['title'])
          .contains('Not Found Error');
      if (isUserNotFound) {
        return left(GetUserByUsernameFailure.userNotFound());
      }
      return left(GetUserByUsernameFailure.unidentifiedHttpFailure());
    }
    if (response.statusCode == 429) {
      return left(GetUserByUsernameFailure.rateLimiteExceeded());
    }
    return left(GetUserByUsernameFailure.unidentifiedHttpFailure());
  }
}
