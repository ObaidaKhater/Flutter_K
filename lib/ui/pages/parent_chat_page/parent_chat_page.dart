import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';

class ParentChatPage extends StatelessWidget {
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
      // TODO : Get List Teacher To Student From (StudentData.getTeachersToStudent)
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleTwoWidget(
                title: 'المعلمة: سوسن',
                subtitle: 'الرياضيات',
                onTap: (){},
              );
            }),
      ),
    );
  }
}
