import '../../domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  const PostModel({required String id, required String text})
      : super(id: id, text: text);

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      PostModel(id: json['id'], text: json['text']);
}
