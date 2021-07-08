import 'package:flutter/material.dart';
import 'package:flutter_k/data/news_data.dart';
import 'package:flutter_k/ui/pages/main_page/custom_news_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNewsBoxWidget extends StatefulWidget {
  @override
  _CustomNewsBoxWidgetState createState() => _CustomNewsBoxWidgetState();
}

class _CustomNewsBoxWidgetState extends State<CustomNewsBoxWidget> {
  int currentIndex = NewsData.newsData.news.length ~/ 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          PageView.builder(
            itemCount: NewsData.newsData.news.length,
            scrollDirection: Axis.horizontal,
            controller: PageController(
              initialPage: NewsData.newsData.news.length ~/ 2,
            ),
            itemBuilder: (context, index) {
              return CustomNewsItemWidget(NewsData.newsData.news[index]);
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
                count: NewsData.newsData.news.length,
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
