import 'package:flutter/material.dart';
import 'package:posts/api/posts.dart';
import 'package:posts/screens/home/view/posts_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Home'),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData
            ? PostsList(posts: snapshot.data)
            : Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }
}
