import 'package:flutter/material.dart';
import 'package:flutter_k/data/class_data.dart';
import 'package:flutter_k/model/class.dart';
import 'package:flutter_k/model/teacher.dart';
import 'package:flutter_k/ui/pages/add_lesson_page/custom_print_list_classes_name_idget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSelectClassesWidget extends StatefulWidget {
  Teacher teacher;

  CustomSelectClassesWidget({@required this.teacher});

  @override
  _CustomSelectClassesWidgetState createState() =>
      _CustomSelectClassesWidgetState();
}

class _CustomSelectClassesWidgetState extends State<CustomSelectClassesWidget> {
  List<Class> classes;
  Class initialDropdownValue;
  List<Class> listSelectClasses = [];

  @override
  void initState() {
    classes = ClassData.classData.getTeacherClasses(widget.teacher.id);
    initialDropdownValue = classes[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      children: [
        Text('> أضافة الدرس للفصول الدراسية :', style: Theme.of(context).textTheme.subtitle2),
        SizedBox(height: 10),
        Container(
          child: DropdownButtonFormField<Class>(
            icon: Icon(Icons.add),
            value: initialDropdownValue,
            onSaved: (value) {
              //TODO Set List selectClasses
            },
            onChanged: (value) {
              initialDropdownValue = value;
              (listSelectClasses.contains(value))
                  ? listSelectClasses.remove(value)
                  : listSelectClasses.add(value);
              setState(() {});
            },
            items: classes.map(
              (classModel) {
                return DropdownMenuItem<Class>(
                  child: Text(
                    classModel.className,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  value: classModel,
                );
              },
            ).toList(),
          ),
        ),
        SizedBox(height: 10),
        CustomPrintListClassesNameWidget(
          classes: listSelectClasses,
        )
      ],
    );
  }
}
