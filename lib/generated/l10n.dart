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

  /// `Network Error`
  String get networkError {
    return Intl.message(
      'Network Error',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `System Error`
  String get systemError {
    return Intl.message(
      'System Error',
      name: 'systemError',
      desc: '',
      args: [],
    );
  }

  /// `Permission Request`
  String get permissionRequestTitle {
    return Intl.message(
      'Permission Request',
      name: 'permissionRequestTitle',
      desc: '',
      args: [],
    );
  }

  /// `This feature needs to access your camera for video streaming, microphone for audio streaming, and notification permission to keep streaming in background. Please allow these permissions.`
  String get permissionRequestContent {
    return Intl.message(
      'This feature needs to access your camera for video streaming, microphone for audio streaming, and notification permission to keep streaming in background. Please allow these permissions.',
      name: 'permissionRequestContent',
      desc: '',
      args: [],
    );
  }

  /// `This feature needs to access your camera for QR code scanning. Please allow camera permission.`
  String get scanPermissionRequestContent {
    return Intl.message(
      'This feature needs to access your camera for QR code scanning. Please allow camera permission.',
      name: 'scanPermissionRequestContent',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Microphone`
  String get microphone {
    return Intl.message(
      'Microphone',
      name: 'microphone',
      desc: '',
      args: [],
    );
  }

  /// `Permissions disabled. Please enable manually.`
  String get openPermissionTip {
    return Intl.message(
      'Permissions disabled. Please enable manually.',
      name: 'openPermissionTip',
      desc: '',
      args: [],
    );
  }

  /// `Tips`
  String get tip {
    return Intl.message(
      'Tips',
      name: 'tip',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get openPermission {
    return Intl.message(
      'Settings',
      name: 'openPermission',
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
      Locale.fromSubtags(
          languageCode: 'zh', scriptCode: 'Hans', countryCode: 'CN'),
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
