import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TeacherEvaluation extends StatelessWidget {
  const TeacherEvaluation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'تقييم المعلم',
          style: Theme.of(context).textTheme.headline3,
        ),
        Container(
          margin: EdgeInsets.only(top: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffffffff),
            border: Border.all(width: 1.0, color: const Color(0xff707070)),
          ),
          child: Text('10/7'),
        ),
      ],
    );
  }
}
