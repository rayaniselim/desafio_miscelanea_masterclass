import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_colors.dart';
import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_images.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class MyAppBar extends StatelessWidget {
  final String title;

  const MyAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final statusBar = MediaQuery.of(context).viewPadding.top;
    final theme = Theme.of(context);
    bool isLight = true;

    return Container(
      color: AppColors.backgroundLight,
      // instanciar color com o theme
      height: 80 + statusBar,

      width: size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 21,
          top: 58,
          bottom: 24,
          right: 21,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImages.logo,
            const SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.headline1,
                ),
                Text(
                  'Flutterando Masterclass',
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                ThemeMode.system == isLight ? ThemeMode.light : ThemeMode.dark;
              },
              child: AppImages.moonDark,
            ),
          ],
        ),
      ),
    );
  }
}
