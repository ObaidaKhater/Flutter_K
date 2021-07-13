import 'package:flutter/material.dart';
import 'package:flutter_k/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LargeTextfield extends StatelessWidget {
  const LargeTextfield({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xffffffff),
        border: Border.all(width: 1.0, color: const Color(0xff707070)),
      ),
      child: new SizedBox.expand(
        child: new TextField(
          maxLines: 10,
          style: new TextStyle(fontSize: 16.0, color: Colors.black),
          decoration: const InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: "اكتب هنا ...",
            contentPadding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding),
          ),
        ),
      ),
    );
  }
}
