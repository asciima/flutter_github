import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'generated/i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'top_config.dart';
import 'res/res.dart';
import 'ui/ui.dart';

void main() {
  
  providers..provideValue(gitHubProvide)..provideValue(homeProvide);

  runApp(
    ProviderNode(
      child: MyApp(),
      providers: providers,
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Fg',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/repos': (context) => ReposPage(),
        '/person_set': (context) => PersonSetPage(),
      },
    );
  }
}
