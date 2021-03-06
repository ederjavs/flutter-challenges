import 'package:flutter/material.dart';
import 'package:playground_flutter/bloc/theme.bloc.dart';
import 'package:playground_flutter/configs/routes.dart';
import 'package:playground_flutter/configs/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: themeBloc.themeEnabled,
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: getThemeByType(snapshot.data),
          initialRoute: '/',
          debugShowCheckedModeBanner: false,
          routes: routes,
        );
      }
    );
  }
}
