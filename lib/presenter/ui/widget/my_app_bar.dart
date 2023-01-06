import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_images.dart';
import 'package:flutter/material.dart';

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

    return SizedBox(
      height: 80 + statusBar, // 59
      width: size.width,
      child: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.0468,
          top: size.height * 0.0227 + statusBar,
          right: size.width * 0.0468,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImages.logo,
            SizedBox(
              width: size.width * 0.008,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
              child: AppImages.moonLight,
            ),
          ],
        ),
      ),
    );
  }
}
