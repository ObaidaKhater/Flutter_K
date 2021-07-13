import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_text_form_field_widget.dart';
import 'package:flutter_k/ui/pages/sigIn_pages/custom_textField_widget.dart';

class CustomAddHomeworkWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomTextFormField(
              labelText: 'عنوان التكليف',
              validator: (String value) {},
              onSaved: (String value) {},
              maxLines: 1),
          CustomTextFormField(
              labelText: 'تفاصيل التكليف',
              validator: (String value) {},
              onSaved: (String value) {},
              maxLines: 3),
          SizedBox(height: 10),
          Text(
            '* ملاحظة: علامة تقيم التكليف من  10 .',
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
