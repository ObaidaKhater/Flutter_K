import 'package:flutter/material.dart';
import 'package:flutter_k/data/news_data.dart';
import 'package:flutter_k/ui/pages/main_page/new_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsBoxWidget extends StatefulWidget {
  @override
  _NewsBoxWidgetState createState() => _NewsBoxWidgetState();
}

class _NewsBoxWidgetState extends State<NewsBoxWidget> {
  int currentIndex = NewData.newData.news.length ~/ 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          PageView.builder(
            itemCount: NewData.newData.news.length,
            scrollDirection: Axis.horizontal,
            controller: PageController(
              initialPage: NewData.newData.news.length ~/ 2,
            ),
            itemBuilder: (context, index) {
              return NewItemWidget(NewData.newData.news[index]);
            },
            onPageChanged: (newIndex) {
              currentIndex = newIndex;
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedSmoothIndicator(
                activeIndex: currentIndex,
                count: NewData.newData.news.length,
                effect: ExpandingDotsEffect(
                  dotHeight: 8.r,
                  activeDotColor: Theme.of(context).primaryColor,
                  dotWidth: 8.r,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
