import 'package:flutter/material.dart';
import 'package:sigmun/resources/pages/news/news_screen.dart';
import 'package:sigmun/resources/pages/home/components/main_card.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        CarouselSlider(
          options: CarouselOptions(height: 350.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.network(
                        'https://yt3.ggpht.com/ytc/AKedOLT-vIX28fYc5vRSGrb_2qrqaPb5PTlM1yCSoB-pnQ=s900-c-k-c0x00ffffff-no-rj'));
              },
            );
          }).toList(),
        )
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
