import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui_screen/features/Home/views/home_view.dart';
import 'package:ui_screen/generated/l10n.dart';

void main() {
  runApp(const Ui());
}

class Ui extends StatelessWidget {
  const Ui({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      title: 'Ui Task ',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const HomeView(),
    );
  }
}
