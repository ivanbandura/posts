import 'package:flutter/material.dart';
import 'package:posts/core/app_router.dart';

class MyPostsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts',
      debugShowCheckedModeBanner: false,
      routes: AppRouter.routes,
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AppRouter.routes["/home"](context),
    );
  }
}
