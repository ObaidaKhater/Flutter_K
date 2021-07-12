import 'package:flutter/material.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_four_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_one_widget.dart';
import 'package:flutter_k/ui/shared/shared_widget/custom_listTile_style_two_widget.dart';

class ParentNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          'الأخبار',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      // TODO : Get List News To Parent From Admin
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CustomListTileStyleTwoWidget(
                  title: 'مديرة الروضة',
                  subtitle:
                      'عرض فيسبوك معلومات لمساعدتك على فهم الغرض من الصفحة بشكل أفضل. يمكنك التعرف على الإجراءات التي يتخذها الأشخاص الذين يديرون المحتوى وينشرونه.',
                  onTap: null);
            }),
      ),
    );
  }
}
