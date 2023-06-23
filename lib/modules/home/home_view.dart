import 'package:flutter/material.dart';
import 'package:petapp/modules/auth/components/logo_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            LogoView()
          ]
        ),
      ),
    );
    
  }
}