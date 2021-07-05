import 'package:flutter/material.dart';
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
            key: _key,
            itemBuilder: (context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(child: Text('0'), value: 0),
                PopupMenuItem(child: Text('1'), value: 1),
              ];
            },
          ),
          IconButton(icon: Icon(Icons.ac_unit),onPressed:  () => _key.currentState.showButtonMenu(),),
        ],

      ),
      backgroundColor: Colors.white,
      body: buildColumn(context),
    );
  }
}
