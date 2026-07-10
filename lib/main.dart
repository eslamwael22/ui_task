import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_screen/features/Home/views/home_view.dart';
import 'package:ui_screen/generated/l10n.dart';

void main() {
  runApp(const Ui());
}

class Ui extends StatelessWidget {
  const Ui({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          locale: const Locale('en'),
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
          builder: (context, child) =>
              Directionality(textDirection: TextDirection.ltr, child: child!),
          home: const HomeView(),
        );
      },
    );
  }
}
