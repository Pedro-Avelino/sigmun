import 'package:flutter/material.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class NewsMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;

  const NewsMenu(
    this.title,
    this.icon, {
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 104,
        height: 104,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: kPrimaryColor, size: 25),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
