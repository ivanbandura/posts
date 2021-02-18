import 'package:flutter/material.dart';
import 'package:posts/screens/detail/view/detail_screen.dart';
import 'package:posts/screens/home/view/home_screen.dart';

class AppRouter {
  static Map<String, WidgetBuilder> routes = {
    "/home": (context) => HomeScreen(),
    "/detail": (context) => DetailScreen(),
  };
}
