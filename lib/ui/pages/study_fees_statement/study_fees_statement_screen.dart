import 'package:flutter/material.dart';
import 'package:flutter_k/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudyFeesStatement extends StatefulWidget {
  const StudyFeesStatement({Key key}) : super(key: key);

  @override
  _StudyFeesStatementState createState() => _StudyFeesStatementState();
}

class _StudyFeesStatementState extends State<StudyFeesStatement> {
  int month = 0;
  bool _isPiad = true;
  bool _isPartialPaid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'كشف الرسوم الدراسية',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: kDefaultPadding * 2),
          child: Container(
            height: 500,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: kDefaultPadding),
                child: Container(
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColumnOfYear extends StatelessWidget {
  const ColumnOfYear({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('2020', style: Theme.of(context).textTheme.headline2),
        Expanded(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: kDefaultPadding),
              child: RowOfMonthAndPaid(month: 1),
            ),
          ),
        ),
      ],
    );
  }
}

class RowOfMonthAndPaid extends StatelessWidget {
  const RowOfMonthAndPaid({
    Key key,
    @required this.month,
  }) : super(key: key);

  final int month;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('شهر $month', style: Theme.of(context).textTheme.headline6),
        Container(
          width: kDefaultPadding * 7.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffffffff),
            border: Border.all(width: 1.0.w, color: const Color(0xff707070)),
          ),
          child: Center(
              child:
                  Text('100/80', style: Theme.of(context).textTheme.headline6)),
        ),
      ],
    );
  }
}
