import 'package:flutter/material.dart';
import 'package:sigmun/core/constants.dart';
import 'package:sigmun/core/router.dart';
import 'package:sigmun/resources/pages/news/components/news_menu.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

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
            icon: const Icon(Icons.search, color: kSecondaryTextColor),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.help, color: kSecondaryTextColor),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 560,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fatura atual',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        const SizedBox(height: 13),
                        Text(
                          'R\$ $kInvoce',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: kInvoiceColor),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: 'Limite disponível ',
                            style: Theme.of(context).textTheme.bodyText2,
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'R\$ $kLimit',
                                style: TextStyle(
                                  color: kLimitColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 8,
                          height: 300,
                          decoration: const BoxDecoration(
                            color: kLimitColor,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Container(width: 8, height: 50, color: kInvoiceColor),
                        const SizedBox(height: 1),
                        Container(
                          width: 8,
                          height: 150,
                          decoration: const BoxDecoration(
                            color: kNextInvoiceColor,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
            Container(height: 0.3, color: kLineColor),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NewsMenu(
                    'Pagar fatura',
                    Icons.child_friendly,
                  ),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  const NewsMenu('Resumo de faturas', Icons.child_friendly),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  const NewsMenu(
                    'Ajustar limites',
                    Icons.child_friendly,
                  ),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  const NewsMenu('Cartão virtual', Icons.child_friendly),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  const NewsMenu(
                    'Bloquear cartão',
                    Icons.child_friendly,
                  ),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  const NewsMenu('Indicar amigos', Icons.child_friendly),
                ],
              ),
            ),
            Container(height: 0.3, color: kLineColor),
          ],
        ),
      ),
    );
  }
}
