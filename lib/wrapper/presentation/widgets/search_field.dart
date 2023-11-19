import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldSearchWidget extends StatelessWidget {
  final String? title;
  final String? prefixText;
  final Function()? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? height;
  final double? fontSizeHint;
  final bool readOnly;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? hint;
  final int? maxLength;
  final int? maxLines;
  final double? fontSize;

  final TextInputAction? textInputAction;

  const TextFieldSearchWidget(
      {Key? key,
      this.title,
      this.maxLength,
      this.controller,
      this.hint,
      this.onChanged,
      this.validator,
      this.obscureText,
      this.maxLines,
      this.keyboardType,
      this.suffixIcon,
      this.onTap,
      this.prefixIcon,
      this.inputFormatters,
      this.height,
      this.textInputAction,
      this.fontSizeHint,
      this.prefixText,
      required this.readOnly,
      this.fontSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 52.h,
        child: TextFormField(
            maxLength: maxLength,
            readOnly: readOnly,
            obscureText: obscureText ?? false,
            onTap: onTap,
            textAlignVertical: TextAlignVertical.center,
            inputFormatters: inputFormatters,
            validator: validator,
            onChanged: onChanged,
            controller: controller,
            cursorColor: const Color.fromRGBO(5, 119, 130, 1),
            keyboardType: keyboardType,
            expands: false,
            style: TextStyle(
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            enableSuggestions: false,
            textInputAction: textInputAction,
            decoration: InputDecoration(
                filled: true,
                fillColor: suffixIcon == null
                    ? const Color.fromARGB(255, 236, 238, 240)
                    : Colors.white,
                errorStyle: const TextStyle(height: 0),
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                isDense: true,
                prefixIcon: prefixIcon,
                prefixText: prefixText,
                prefixStyle:
                    TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w400),
                contentPadding:
                    EdgeInsets.only(bottom: 1.h, top: 1.h, left: 10, right: 10),
                suffixIcon: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, bottom: 8, right: 14),
                    child: suffixIcon))));
  }
}
