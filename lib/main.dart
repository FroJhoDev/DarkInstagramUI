import 'package:flutter/material.dart';

import 'package:dark_fluttergram/screens/home.dart';
import 'package:dark_fluttergram/widgets/CustomBottomTabs.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'FlutterGram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: CustomBottomTabs(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return SlideRightRoute(widget: CustomBottomTabs());
            break;
          case '/home':
            return SlideRightRoute(widget: HomeScreen());
            break;
        }
      },
    )
  );
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;

  SlideRightRoute({this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return new SlideTransition(
            position: new Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });
}
