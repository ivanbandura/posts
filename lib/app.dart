import 'package:flutter/material.dart';
import 'package:posts/core/app_router.dart';
import 'package:posts/core/app_theme.dart';

class MyPostsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts',
      debugShowCheckedModeBanner: false,
      routes: AppRouter.routes,
      theme: AppTheme.theme,
      home: AppRouter.routes["/home"](context),
    );
  }
}
