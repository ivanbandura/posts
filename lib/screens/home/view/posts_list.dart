import 'package:flutter/material.dart';
import 'package:posts/models/models.dart';
import 'package:posts/screens/home/view/post_item.dart';

class PostsList extends StatelessWidget {
  final List<Post> posts;

  const PostsList({Key key, this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 8.0,
            left: 8.0,
            top: 2.0,
            bottom: 2.0,
          ),
          child: PostItem(post: posts[index]),
        );
      },
    );
  }
}
