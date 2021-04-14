import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/theme/app_theme.dart';
import '../../domain/entities/post_entity.dart';
import '../application/get_posts_by_id/get_posts_by_id_state_notifier.dart';
import '../application/get_user_by_username/get_user_by_username_state_notifier.dart';
import '../widgets/error_composite/error_with_button_widget.dart';
import '../widgets/error_composite/error_without_button_widget.dart';
import 'post_component.dart';

class ListingOfPostsComponent extends StatelessWidget {
  final StateNotifierProvider<GetUserByUsernameStateNotifier,
      GetUserByUsernameState> getUserByUsernameStateNotifierProvider;

  final StateNotifierProvider<GetPostsByIdStateNotifier, GetPostsByIdState>
      getPostsByIdStateNotifierProvider;
  final GetPostsByIdStateNotifier getPostsByIdStateNotifier;
  final VoidCallback tryAgain;
  const ListingOfPostsComponent({
    Key? key,
    required this.getUserByUsernameStateNotifierProvider,
    required this.getPostsByIdStateNotifierProvider,
    required this.getPostsByIdStateNotifier,
    required this.tryAgain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<GetUserByUsernameState>(
      provider: getUserByUsernameStateNotifierProvider,
      onChange: (_, state) {
        state.maybeWhen(
          loadSuccess: (user) => getPostsByIdStateNotifier.fetchPosts(
            user.id,
          ),
          orElse: () {},
        );
      },
      child: Consumer(
        builder: (context, watch, _) {
          final getPostsByIdState = watch(getPostsByIdStateNotifierProvider);
          final getUserByUsernameState = watch(
            getUserByUsernameStateNotifierProvider,
          );
          return getUserByUsernameState.when<Widget>(
            started: () => _buildStartedLabel,
            loadInProgress: () => _buildLoadInProgress,
            loadSuccess: (_) => getPostsByIdState.when(
              started: () => _buildLoadInProgress,
              loadInProgress: () => _buildLoadInProgress,
              loadSuccess: (posts) => _buildPosts(
                _parserPostEntityToPostWidget(posts),
              ),
              loadFailure: (failure) => failure.when(
                twitterServiceFailure: (twitterServiceFailure) =>
                    twitterServiceFailure.when(
                  unidentifiedHttpFailure: () => _buildWithButtonError(
                    'An error occurred while trying to connect to the server'
                    ', check your internet and try again!',
                    tryAgain,
                  ),
                  invalidPatternId: () => _buildStartedLabel,
                  userNotFound: () => _buildWithoutButtonError(
                    'User not found, try another username!',
                  ),
                ),
                idIsEmpty: () => _buildStartedLabel,
                invalidPatternId: () => _buildWithoutButtonError(
                  'User not found, try another username!',
                ),
              ),
            ),
            loadFailure: (failure) => failure.when(
              twitterServiceFailure: (getUserByUsernameFailure) =>
                  getUserByUsernameFailure.when(
                unidentifiedHttpFailure: () => _buildWithButtonError(
                  'An error occurred while trying to connect to the server'
                  ', check your internet and try again!',
                  tryAgain,
                ),
                rateLimiteExceeded: () => _buildWithButtonError(
                  'An error occurred while trying to connect to the server'
                  ', check your internet and try again!',
                ),
                userNotFound: () => _buildWithoutButtonError(
                  'User not found, try another username!',
                ),
              ),
              usernameIsEmpty: () => _buildStartedLabel,
            ),
          );
        },
      ),
    );
  }

  Widget _buildWithoutButtonError(String message) {
    return Expanded(child: ErrorWithoutButtonWidget(message: message));
  }

  Widget _buildWithButtonError(String message, [VoidCallback? onPressed]) {
    return Expanded(
      child: ErrorWithButtonWidget(
        message: message,
        buttonText: 'try again',
        onPressed: onPressed,
      ),
    );
  }

  Widget get _buildStartedLabel => Center(
        child: Text(
          'Search for a user in the field above',
          style: AppTypography.bodyLargeBold.copyWith(
            color: AppColors.gray,
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget get _buildLoadInProgress => Center(child: CircularProgressIndicator());

  List<PostComponent> _parserPostEntityToPostWidget(List<PostEntity> posts) {
    return posts
        .map<PostComponent>(
          (post) => PostComponent(id: post.id, text: post.text),
        )
        .toList();
  }

  Widget _buildPosts(List<PostComponent> posts) {
    if (posts.isEmpty) {
      return _buildWithoutButtonError('This user no has tweets!');
    }

    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: posts,
        shrinkWrap: true,
      ),
    );
  }
}
