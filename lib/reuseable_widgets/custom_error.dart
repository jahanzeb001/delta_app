import 'package:delta_app/constant/spacing.dart';
import 'package:delta_app/constant/styles/app_textstyles.dart';
import 'package:flutter/material.dart';

class Custom_Error extends StatelessWidget {
  final Function onpressed;
  String? error;
  double height;
  Custom_Error(
      {super.key,
      required this.onpressed,
      required this.error,
      this.height = 100});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  onpressed();
                },
                icon: const Icon(
                  Icons.refresh,
                  size: 35,
                )),
            vSpac12,
            Text(
              error.toString(),
              style: hMedium.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
