import 'package:flutter/material.dart';
import 'package:wra_app/Screens/Login/index.dart';
import 'package:wra_app/Screens/Home/index.dart';
import 'package:wra_app/SwipeAnimation/index.dart';

class Routes {
  Routes() {
    runApp(new MaterialApp(
      title: "Wholesome Recreational Activities App",
      debugShowCheckedModeBanner: false,
      home: new LoginScreen(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/login':
            return new MyCustomRoute(
              builder: (_) => new LoginScreen(),
              settings: settings,
            );

          case '/home':
            return new MyCustomRoute(
//              builder: (_) => new HomeScreen(),
              builder: (_) => new CardDemo(),
              settings: settings,
            );
        }
      },
    ));
  }
}

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return new FadeTransition(opacity: animation, child: child);
  }
}
