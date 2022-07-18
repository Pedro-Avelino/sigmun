import 'package:flutter/material.dart';
import 'package:nylo_framework/nylo_framework.dart';
import '../../../app/controllers/home_controller.dart';
import 'package:sigmun/core/app_state.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/core/router.dart';
import 'package:sigmun/resources/pages/home/cards/services_card.dart';
import 'package:sigmun/resources/pages/home/cards/news_card.dart';
import 'package:sigmun/resources/shared/circle_button.dart';
import 'package:sigmun/resources/shared/label_button.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends NyStatefulWidget {
  final HomeController controller = HomeController();

  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends NyState<HomePage> {
  final _cards = [
    const NewsCard(),
  ];

  @override
  init() async {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [kPrimaryColor, Colors.white],
          stops: [0.5, 0.5],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(context),
                _body(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: const EdgeInsets.fromLTRB(18, 20, 16, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleButton(Icons.person, () {
                Navigator.pushNamed(context, '/profile_page');
              }),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Olá, $kUsername',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ServicesCard(),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                LabelButton(
                  'Todos os Serviços',
                  Icons.apps,
                  onPressed: () => MyRouter.showBottomSheet,
                ),
                LabelButton(
                  'Saúde',
                  Icons.local_hospital,
                  onPressed: () => MyRouter.showBottomSheet,
                ),
                LabelButton(
                  '1Doc',
                  Icons.contact_page_outlined,
                  onPressed: () => MyRouter.showBottomSheet,
                ),
                LabelButton(
                  'Ajuda',
                  Icons.help,
                  onPressed: () => MyRouter.showBottomSheet,
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(height: 2, thickness: 0.5),
          ..._cards,
        ],
      ),
    );
  }
}
