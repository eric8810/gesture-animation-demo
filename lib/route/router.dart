import 'package:flutter/material.dart';
import 'package:wisper_app/view/item_list_screen.dart';
import 'package:wisper_app/view/main_screen.dart';

class WsRouter {
  static const main = 'main';
  static const list = 'list';

  static final Map<String, WidgetBuilder> routes = {
    main: (ctx) => const MainScreen(title: 'testing'),
    list: (ctx) {
      return ItemListScreen();
    }
  };

  // ignore: prefer_function_declarations_over_variables
  static final RouteFactory generateRoute = (settings) {
    if (settings.name == list) {
      return MaterialPageRoute(builder: (ctx) {
        return ItemListScreen();
      });
    }
    if (settings.name == main) {
      return MaterialPageRoute(builder: (ctx) {
        return const MainScreen(title: 'hehehe');
      });
    }
    return null;
  };

  // static final RouteFactory unknownRoute = (settings) {
  //   return MaterialPageRoute(builder: (ctx) {
  //     return WGUnknownPage();
  //   });
  // };
}
