import 'package:flutter/material.dart';
import 'package:stock_lab_mobile/src/app.dart';
import 'package:stock_lab_mobile/src/screens/settings.dart';

void main() {
  runApp(
      MaterialApp(
        home: App(),
        routes: <String, WidgetBuilder> {
          Settings.routeName: (BuildContext context) => Settings(),
          
        },
      )
    );
}

