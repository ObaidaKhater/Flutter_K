import 'package:flutter/material.dart';

import 'components/ColumnDriverPage.dart';

class DriverPageActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('صفحة سائق الباص',
            style: Theme.of(context).textTheme.headline1),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app)),
      ),
      body: CustomColumnDriverPage(context: context),
    );
  }
}
