import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_images.dart';
import 'package:desafio_miscelanea_masterclass/presenter/ui/widget/my_card.dart';
import 'package:flutter/material.dart';

import '../presenter/ui/theme/app_colors.dart';
import '../presenter/ui/widget/my_app_bar.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Column(
        children: [
          const MyAppBar(
            title: 'Atividades',
          ),
          Column(
            children: [
              MyCard(
                titleCard: 'Animações',
                count: '4',
                description: 'Description',
                image: AppImages.runningWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
