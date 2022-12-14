import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_colors.dart';
import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_images.dart';
import 'package:flutter/material.dart';

import 'pages/activities_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ActivitiesPage(),
                ),
              ),
              child: AppImages.logoMasterclass,
            ),
          ],
        ),
      ),
    );
  }
}
