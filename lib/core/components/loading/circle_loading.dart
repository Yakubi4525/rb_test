import 'package:flutter/material.dart';
import 'package:rb_digital_test/core/styles/colors.dart';

class CircleLoading extends StatelessWidget {
  const CircleLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(
          color: kMainColor,
        ),
      ),
    );
  }
}
