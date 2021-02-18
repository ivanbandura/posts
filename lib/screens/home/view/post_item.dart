import 'package:flutter/material.dart';
import 'package:posts/models/models.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({Key key, this.post}) : super(key: key);

  _handleItemState(BuildContext context, Post post) {
    Navigator.pushNamed(context, "/detail", arguments: post);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _handleItemState(context, post),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Text(
              post.id.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            title: Text(post.title),
            trailing: Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
