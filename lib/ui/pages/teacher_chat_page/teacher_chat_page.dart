import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';

class TeacherChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'المحادثات',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List Teacher Students From (TeacherData.getTeacherStudents)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleTwoWidget(
                title: 'محمد علي حسان',
                subtitle: 'ولي أمر الطالب',
                onTap: (){},
              );
            }),
      ),
    );
  }
}
