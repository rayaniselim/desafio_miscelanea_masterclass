import 'package:flutter/material.dart';

import '../presenter/ui/widget/my_app_bar.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyAppBar(
        title: 'Atividades',
      ),
    );
  }
}
