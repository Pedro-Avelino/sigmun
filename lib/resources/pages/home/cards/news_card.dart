import 'package:flutter/material.dart';
import 'package:sigmun/core/app_state.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/resources/pages/news/news_screen.dart';
import 'package:sigmun/resources/pages/home/components/main_card.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';
import 'package:page_transition/page_transition.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Notícias',
      [
        Text(
          'Acompanhar Notícias Mais Recentes',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 13),
        Image(image: AssetImage('public/assets/images/teste.png')),
      ],
      onTap: () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 400),
          child: const NewsScreen(),
        ),
      ),
    );
  }
}
