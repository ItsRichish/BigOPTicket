import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  const ThickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: Colors.white),
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
