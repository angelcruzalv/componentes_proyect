
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        // const Locale('en', 'US'), // English
        const Locale('es','ES'), // Español
        // const Locale.fromSubtags(languageCode: 'es'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],



      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home:  HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
    );
  }
}