import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_font.dart';
import '../theme/app_images.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BottomNavigationBar(
      backgroundColor: theme.backgroundColor,
      elevation: 0,
      selectedItemColor: AppColors.highLightLight,
      selectedLabelStyle: AppFont.bodyText2!.copyWith(fontSize: 11),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: AppImages.target2xLight,
          label: 'Atividades',
        ),
        BottomNavigationBarItem(
          icon: AppImages.gitHubLight,
          label: 'Repositorios',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 24,
            color: AppColors.highLightLight,
          ),
          label: 'Sobre o dev',
        ),
      ],
      onTap: ((value) => {}),
    );
  }
}
