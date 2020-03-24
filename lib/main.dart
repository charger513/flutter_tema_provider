import 'package:flutter/material.dart';
import 'package:flutter_tema_provider/src/blocs/theme.dart';
import 'package:flutter_tema_provider/src/pages/home.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme()
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);


    return MaterialApp(
      theme: theme.getTheme(),
      home: HomePage()
    );
  }
}
