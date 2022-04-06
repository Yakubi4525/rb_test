import 'package:flutter/material.dart';
import 'package:rb_digital_test/core/styles/colors.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    Key? key,
    required this.width,
    required this.textInputType,
    required this.controller,
    required this.height,
    required this.onChanged,
    required this.hintText,
    this.focus = false,
    this.keyBoardType = TextInputType.multiline,
  }) : super(key: key);
  final double width;
  final TextInputType textInputType;
  final TextEditingController controller;
  final double height;
  final Function onChanged;
  final bool focus;
  final TextInputType keyBoardType;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // height: height,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          onSubmitted: (s) {
            // {widget.registrationParametersScreenState.setState(() {})};
          },
          keyboardType: keyBoardType,
          maxLines: null,
          controller: controller,
          autofocus: focus,
          style: const TextStyle(fontSize: 16),
          decoration:  InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            isDense: true,
            contentPadding:
                const EdgeInsets.only(left: 20, bottom: 5, top: 5, right: 20),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(3, 3), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
    );
  }
}
