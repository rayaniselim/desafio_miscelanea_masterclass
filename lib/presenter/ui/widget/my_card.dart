import 'package:desafio_miscelanea_masterclass/presenter/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../pages/list_animated.dart';
import '../theme/app_images.dart';

class MyCard extends StatelessWidget {
  final String titleCard;
  final String count;
  final String description;
  final Image image;

  const MyCard({
    super.key,
    required this.titleCard,
    required this.count,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: size.height * 0.23,
        width: 400,
        decoration: BoxDecoration(
          color: AppColors.highLightDark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.0465, //43,
                        width: size.width * 0.0959,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: SizedBox(
                          height: size.height * 0.0558,
                          width: size.width * 0.669,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: image,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.0290,
                  ),
                  Column(
                    children: [
                      Text(
                        titleCard,
                        style: theme.textTheme.headline2,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        'Exercicios:',
                        style: theme.textTheme.bodyText2,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.0223,
                  ),
                  Column(
                    children: [
                      Text(
                        count,
                        style: theme.textTheme.bodyText2!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  Text(description),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: size.width * 0.0446,
                        height: size.height * 0.0227,
                        child: AppImages.gitHubLight,
                      ),
                    ],
                  ),
                  SizedBox(width: size.width * 0.0223),
                  Column(
                    children: [
                      Text(
                        'Acessar código fonte',
                        style: theme.textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.0373,
                        width: size.width * 0.26,
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: GestureDetector(
                            child: Text(
                              'Ver mais',
                              style: theme.textTheme.bodyText2!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.cardLight),
                            ),
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ListAnimated(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
