import 'package:flutter/material.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class ProfileMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onTap;

  ProfileMenu(
    this.text,
    this.icon, {
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kLabelButtonColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 81,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                Icon(icon, color: kPrimaryColor),
                SizedBox(width: 20),
                Text(
                  text,
                  style: Theme.of(context).textTheme.button,
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: kPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
