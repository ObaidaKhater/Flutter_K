import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_k/model/teacher.dart';

class CustomDropdownButtonFormFieldWidget extends StatefulWidget {
  Teacher teacher;
  Function onSaved;
  Function validator;

  CustomDropdownButtonFormFieldWidget(
      {@required this.teacher,
      @required this.onSaved,
      @required this.validator});

  @override
  _CustomDropdownButtonFormFieldWidgetState createState() =>
      _CustomDropdownButtonFormFieldWidgetState();
}

class _CustomDropdownButtonFormFieldWidgetState
    extends State<CustomDropdownButtonFormFieldWidget> {
  String initialDropdownValue;

  @override
  void initState() {
    super.initState();
    initialDropdownValue = widget.teacher.subjects[0].nameSubject;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Theme.of(context).accentColor.withOpacity(0.3),
      ),
      child: DropdownButtonFormField<String>(
        hint: Text('المادة', style: Theme.of(context).textTheme.subtitle2),
        //value: initialDropdownValue,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onChanged: (value) {
          initialDropdownValue = value;
          setState(() {});
        },
        items: widget.teacher.subjects.map(
          (subject) {
            return DropdownMenuItem<String>(
              child: Text(
                subject.nameSubject,
                style: Theme.of(context).textTheme.headline6,
              ),
              value: subject.nameSubject,
            );
          },
        ).toList(),
      ),
    );
  }
}
