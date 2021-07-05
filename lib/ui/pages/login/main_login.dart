import 'package:flutter/material.dart';

import 'wiget_login.dart';

class MainLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: buildColumn(context),
    );
  }
}
