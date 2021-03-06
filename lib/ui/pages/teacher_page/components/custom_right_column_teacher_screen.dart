import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/classes_pages/classes_page.dart';
import 'package:flutter_k/ui/pages/parent_area/components/components.dart';
import 'package:flutter_k/ui/pages/teacher_chat_page/teacher_chat_page.dart';

class CustomRightColumnTeacherScreen extends StatelessWidget {
  const CustomRightColumnTeacherScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          GestureDetector(
            child: buildSizedBox(context, 'الفصول الدراسية'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ClassesPage()));
            },
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TeacherChatPage()));
            },
            child: buildSizedBox(context, 'المحادثات'),
          ),
        ],
      ),
    );
  }
}
