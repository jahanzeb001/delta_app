import 'package:delta_app/constant/styles/colors.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: cGrey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(300.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          hintText: 'Search Here',
          contentPadding: const EdgeInsets.only(top: 15, left: 10),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
