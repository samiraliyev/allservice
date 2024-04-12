import 'package:flutter/material.dart';

import '../../../constants/colors/app_colors.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    this.controller,
    this.focus,
    this.validator,
    this.onFieldSubmitted,
    required this.hintColor,
  });
  final TextEditingController? controller;
  final FocusNode? focus;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final Color hintColor;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focus,
      controller: widget.controller,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: const InputDecoration(
        hintStyle: TextStyle(color: AppColor.titleColor),
        filled: true,
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }
}
