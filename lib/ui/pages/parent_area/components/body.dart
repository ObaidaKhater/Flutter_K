import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/parent_area/components/custom_left_column_parent_area.dart';
import 'package:flutter_k/ui/pages/parent_area/components/custom_right_column_parent_area.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Row(
            children: [
              CustomRightColumnParentArea(),
              CustomLeftColumnParentArea(),
            ],
          ),
        ],
      ),
    );
  }
}
