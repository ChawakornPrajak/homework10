import 'comment.dart';

class Post {
  final String profile;

  final String author;

  final String postpic;

  final String caption;

  final List<Comment> comment;

  Post({
    required this.profile,
    required this.author,
    required this.postpic,
    required this.caption,
    required this.comment,
  });
}
