import 'package:flutter/material.dart';
import 'package:flutter_k/constants.dart';

class KindergartedPolicy extends StatelessWidget {
  const KindergartedPolicy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'سياسة الخصوصية',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Center(
              child: Text(
            'موقع دوت كوم هي شركة تقدم خدمات حلول الويب ومتواجدة وبقوة في السوق منذ عام 2005, لنا قاعدة كبيرة من العملاء من مختلف دول العالم الذين استطاعنا ان ننال على ثقتهم من خلال تعاملنا معهم في هذه السنوات, نوفر خدمات استضافة المواقع, حجز الدومين, استضافة الدردشة, تصميم المواقع, برمجة المواقع, اشهار و نشر المواقع و التسويق الالكتروني, ادارة المواقع و ادارة صفحات التواصل الاجتماعي, الدعم الفني للمنتديات, الدعم الفني للمواقع, تصميم المطبوعات, واكتسبنا في موقع دوت كوم خبرة كبيرة جدا في تقديم هذه الخدمات من خلال عملنا في السنوات الماضية والتي اتاحت لنا ان نوفر حاليا هذه الخدمات لعملائنا باحترافية شديدة مع ضمان جودة الخدمة, وكان هذا بسبب اصرارنا دائما على ملاحقة التطور المستمر في تكنولوجيا المعلومات لتقديم خدماتنا بأحدث التقنيات المتوفرة دائما, بالاضافة الى اننا نملك فريق عمل يتمتع بالخبرات الدراسية والعملية والادارية لضمان جودة الخدمة المقدمة وتوفير افضل الحلول والاستشارات التقنية.',
            style: Theme.of(context).textTheme.headline3,
          )),
        ),
      ),
    );
  }
}
