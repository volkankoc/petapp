import 'package:flutter/material.dart';
import 'package:petapp/config/themes/light_theme.dart';
import 'package:petapp/modules/auth/sign_in/sign_in_view.dart';
import 'package:petapp/modules/main/main_view.dart';
import 'package:petapp/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: Providers.providerList,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const SignIn(),
    );
  }
}
