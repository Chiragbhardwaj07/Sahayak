import 'package:sahayak/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: Colors.grey,
        thumbColor: (value ?? false)
            ? theme.colorScheme.primaryContainer.withOpacity(1)
            : theme.colorScheme.primaryContainer.withOpacity(1),
        activeColor: Color(0xff653EF9),
        // focusColor: Colors.red,
        offLabelColor: Colors.grey,
        onChanged: (value) {
          onChange(value);
        },
      );
}
