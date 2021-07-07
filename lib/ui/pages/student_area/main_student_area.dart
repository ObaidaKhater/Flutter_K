import 'package:flutter/material.dart';
import 'package:flutter_k/ui/pages/parent_area/main_parent_area.dart';
import 'package:flutter_k/ui/pages/student_area/student_area_wiget.dart';

class MainStudentArea extends StatelessWidget {
  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('منطقة الطالب'),
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) =>
            <PopupMenuEntry<int>>[
               PopupMenuItem<int>(
                child: ListTile(
                  title: Text('منطقة ولي الأمر',style: TextStyle(color: Colors.black)),
                  leading:Icon(Icons.person) ,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainParentArea()),
                    );
                  },
                ),
              ),
              PopupMenuItem<int>(
                child: ListTile(
                  title: Text(
                    'تسجيل خروج',
                      style: TextStyle(color: Colors.black)
                  ),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {},
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Theme
          .of(context)
          .backgroundColor,
      body: buildColumn(context),
    );
  }
}
