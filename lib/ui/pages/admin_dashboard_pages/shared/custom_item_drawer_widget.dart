import 'package:flutter/material.dart';

class CustomItemDrawerWidget extends StatelessWidget {
  int currentTab;
  int indexItem;
  IconData icon;
  String title;
  Function onTap;

  CustomItemDrawerWidget(
      {@required this.currentTab,
      @required this.indexItem,
      @required this.icon,
      @required this.title,
      @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (this.currentTab == this.indexItem)
          ? Color(0xFF2d3343)
          : Colors.transparent,
      child: ListTile(
        leading: Icon(
          this.icon,
          color: (this.currentTab == this.indexItem)
              ? Colors.white
              : Color(0xFFbbbfcb),
        ),
        title: Text(
          this.title,
          style: (this.currentTab == this.indexItem)
              ? TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'cairo',
                )
              : TextStyle(
                  color: Color(0xFFbbbfcb),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'cairo',
                ),
        ),
        onTap: this.onTap,
      ),
    );
  }
}
