import 'package:flutter/material.dart';

import '../presenter/ui/theme/app_images.dart';

class ListAnimated extends StatelessWidget {
  const ListAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLight = true;
    final statusBar = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      body: CustomScrollView(
        // primary: true,
        slivers: <Widget>[
          SliverAppBar(
            title: const Text(
              ' Animações \n Flutterando Masterclass',
            ),
            toolbarHeight: 30 + statusBar,
            centerTitle: false,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    ThemeMode.system == isLight
                        ? ThemeMode.light
                        : ThemeMode.dark;
                  },
                  child: AppImages.moonLight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
