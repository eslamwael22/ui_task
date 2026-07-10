// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tanta , Al-Estad Area`
  String get appBarTitle {
    return Intl.message(
      'Tanta , Al-Estad Area',
      name: 'appBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search About Meal Or Restaurant`
  String get SearchTitle {
    return Intl.message(
      'Search About Meal Or Restaurant',
      name: 'SearchTitle',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get changeButton {
    return Intl.message(
      'Change',
      name: 'changeButton',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categoriesTitle {
    return Intl.message(
      'Categories',
      name: 'categoriesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get reorderTitle {
    return Intl.message(
      'Reorder',
      name: 'reorderTitle',
      desc: '',
      args: [],
    );
  }

  /// `Most Order`
  String get mostOrderTitle {
    return Intl.message(
      'Most Order',
      name: 'mostOrderTitle',
      desc: '',
      args: [],
    );
  }

  /// `May Be Like`
  String get likeTitle {
    return Intl.message(
      'May Be Like',
      name: 'likeTitle',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get currencySymbol {
    return Intl.message(
      'EGP',
      name: 'currencySymbol',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get reorderButton {
    return Intl.message(
      'Reorder',
      name: 'reorderButton',
      desc: '',
      args: [],
    );
  }

  /// `Quick Order`
  String get category1Title {
    return Intl.message(
      'Quick Order',
      name: 'category1Title',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get category2Title {
    return Intl.message(
      'Restaurants',
      name: 'category2Title',
      desc: '',
      args: [],
    );
  }

  /// `Supermarket`
  String get category3Title {
    return Intl.message(
      'Supermarket',
      name: 'category3Title',
      desc: '',
      args: [],
    );
  }

  /// `Indian Restaurant`
  String get reorder1Title {
    return Intl.message(
      'Indian Restaurant',
      name: 'reorder1Title',
      desc: '',
      args: [],
    );
  }

  /// `Family Meal`
  String get reorder1Description {
    return Intl.message(
      'Family Meal',
      name: 'reorder1Description',
      desc: '',
      args: [],
    );
  }

  /// `Quick Order`
  String get reorder2Title {
    return Intl.message(
      'Quick Order',
      name: 'reorder2Title',
      desc: '',
      args: [],
    );
  }

  /// `Al-Salam Store`
  String get reorder2Description {
    return Intl.message(
      'Al-Salam Store',
      name: 'reorder2Description',
      desc: '',
      args: [],
    );
  }

  /// `Syrian Restaurant`
  String get reorder3Title {
    return Intl.message(
      'Syrian Restaurant',
      name: 'reorder3Title',
      desc: '',
      args: [],
    );
  }

  /// `Dinner Meal`
  String get reorder3Description {
    return Intl.message(
      'Dinner Meal',
      name: 'reorder3Description',
      desc: '',
      args: [],
    );
  }

  /// `Cook Door`
  String get mostOrder1Title {
    return Intl.message(
      'Cook Door',
      name: 'mostOrder1Title',
      desc: '',
      args: [],
    );
  }

  /// `Burger • Fried Chicken`
  String get mostOrder1Description {
    return Intl.message(
      'Burger • Fried Chicken',
      name: 'mostOrder1Description',
      desc: '',
      args: [],
    );
  }

  /// `15 EGP`
  String get mostOrder1DeliveryCost {
    return Intl.message(
      '15 EGP',
      name: 'mostOrder1DeliveryCost',
      desc: '',
      args: [],
    );
  }

  /// `45 min`
  String get mostOrder1Time {
    return Intl.message(
      '45 min',
      name: 'mostOrder1Time',
      desc: '',
      args: [],
    );
  }

  /// `Spectra Cafe`
  String get mostOrder2Title {
    return Intl.message(
      'Spectra Cafe',
      name: 'mostOrder2Title',
      desc: '',
      args: [],
    );
  }

  /// `Chicken • Sandwiches`
  String get mostOrder2Description {
    return Intl.message(
      'Chicken • Sandwiches',
      name: 'mostOrder2Description',
      desc: '',
      args: [],
    );
  }

  /// `20 EGP`
  String get mostOrder2DeliveryCost {
    return Intl.message(
      '20 EGP',
      name: 'mostOrder2DeliveryCost',
      desc: '',
      args: [],
    );
  }

  /// `30 min`
  String get mostOrder2Time {
    return Intl.message(
      '30 min',
      name: 'mostOrder2Time',
      desc: '',
      args: [],
    );
  }

  /// `Akila Meal`
  String get love1Title {
    return Intl.message(
      'Akila Meal',
      name: 'love1Title',
      desc: '',
      args: [],
    );
  }

  /// `Indian Restaurant`
  String get love1RestaurantName {
    return Intl.message(
      'Indian Restaurant',
      name: 'love1RestaurantName',
      desc: '',
      args: [],
    );
  }

  /// `Akila Meal`
  String get love2Title {
    return Intl.message(
      'Akila Meal',
      name: 'love2Title',
      desc: '',
      args: [],
    );
  }

  /// `Indian Restaurant`
  String get love2RestaurantName {
    return Intl.message(
      'Indian Restaurant',
      name: 'love2RestaurantName',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
