import 'package:flutter/material.dart';
import 'package:flutter_k/model/new.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewItemWidget extends StatelessWidget {
  New itemNew;

  NewItemWidget(this.itemNew);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.black.withOpacity(0.4),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                itemNew.title,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                itemNew.description,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(itemNew.imagePath),
      )),
    );
  }
}
