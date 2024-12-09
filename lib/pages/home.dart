import 'package:english/widget/app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/m_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MColors.arrowColor,
      appBar: MyAppBar(
        title: "title",
        showBack: false,
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
