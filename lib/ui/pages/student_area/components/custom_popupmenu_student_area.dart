import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/parent_area/parent_area_screen.dart';

class CustomPopupMenuStudentArea extends StatelessWidget {
  const CustomPopupMenuStudentArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
        PopupMenuItem<int>(
          child: ListTile(
            title:
                Text('منطقة ولي الأمر', style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParentAreaScreen()),
              );
            },
          ),
        ),
        PopupMenuItem<int>(
          child: ListTile(
            title: Text('تسجيل خروج', style: TextStyle(color: Colors.black)),
            leading: Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
