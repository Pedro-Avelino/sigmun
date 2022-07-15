import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/core/router.dart';
import 'package:sigmun/resources/pages/services/components/services_menu.dart';
import 'package:sigmun/resources/shared/label_button.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';
import 'package:page_transition/page_transition.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: kSecondaryTextColor,
          ),
          onPressed: () => MyRouter.popPage(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Mdi.helpCircleOutline, color: kSecondaryTextColor),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Saldo disponível',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'R\$ $kBalance',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 50),
                  ServicesMenu(
                    'Dinheiro guardado',
                    Text(
                      'R\$ $kSaved',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Icons.money_off,
                  ),
                  const SizedBox(height: 38),
                  ServicesMenu(
                    'Rendimento total da conta',
                    RichText(
                      text: TextSpan(
                        text: '+R\$ $kIcome',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: kLimitColor,
                              fontWeight: FontWeight.w500,
                            ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: ' este mês',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Mdi.signal,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
