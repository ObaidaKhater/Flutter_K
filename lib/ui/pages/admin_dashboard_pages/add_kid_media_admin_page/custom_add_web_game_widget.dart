import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_text_form_field_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_button_widget.dart';

class CustomAddWebGameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('إضافة ألعاب ويب',style: Theme.of(context).textTheme.headline3,),
                SizedBox(height: 10),
                CustomTextFormField(
                    labelText: 'إسم اللعبة',
                    validator: (validator) {},
                    onSaved: (onSaved) {},
                    maxLines: 1),
                CustomTextFormField(
                    labelText: 'عنوان الصورة',
                    validator: (validator) {},
                    onSaved: (onSaved) {},
                    maxLines: 1),
                CustomTextFormField(
                    labelText: 'رابط اللعبة',
                    validator: (validator) {},
                    onSaved: (onSaved) {},
                    maxLines: 1),

              ],
            ),
            CustomButtonWidget(title: 'إضافة', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
