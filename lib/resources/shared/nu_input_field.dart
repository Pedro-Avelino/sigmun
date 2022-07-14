import 'package:flutter/material.dart';
import 'package:sigmun/resources/themes/colors/colors.dart';

class NuInputField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final bool autoFocus;
  final String? hint;

  const NuInputField({
    this.controller,
    this.textInputType = TextInputType.text,
    this.autoFocus = false,
    this.hint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          TextFormField(
            cursorColor: kPrimaryColor,
            autofocus: autoFocus,
            keyboardType: textInputType,
            textAlign: TextAlign.left,
            controller: controller,
            style: Theme.of(context).textTheme.headline3,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: Theme.of(context).textTheme.subtitle1,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
