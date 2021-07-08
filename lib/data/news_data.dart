import 'package:flutter_k/model/news.dart';

class NewsData {
  NewsData._();

  List<News> news = [
    News(
        id: '5',
        title: 'new 1',
        description:
            'description description description description description',
        imagePath:
            'https://cdn.cnn.com/cnnnext/dam/assets/201005070938-nyc-skyline-file-0929-full-169.jpg',
        date: DateTime.now()),
    News(
        id: '2',
        title: 'خبر 2',
        description:
        'ستشهد شاب فلسطيني، مساء يوم السبت، برصاص الاحتلال الإسرائيلي، في بلدة قصرة جنوب نابلس شمال الضفة الغربية المحتلة، كما وأصيب اثنين آخرين بجراح مختلفة  وأصيب اثنين آخرين بجراح مختلفة.',
        imagePath:
        'https://cdn.cnn.com/cnnnext/dam/assets/201005070938-nyc-skyline-file-0929-full-169.jpg',
        date: DateTime.now()),
    News(
        id: '3',
        title: 'new 3',
        description:
        'description description description description description',
        imagePath:
        'https://cdn.cnn.com/cnnnext/dam/assets/201005070938-nyc-skyline-file-0929-full-169.jpg',
        date: DateTime.now()),
    News(
        id: '4',
        title: 'new 4',
        description:
        'description description description description description',
        imagePath:
        'https://cdn.cnn.com/cnnnext/dam/assets/201005070938-nyc-skyline-file-0929-full-169.jpg',
        date: DateTime.now()),
    News(
        id: '5',
        title: 'new 1',
        description:
        'description description description description description',
        imagePath:
        'https://cdn.cnn.com/cnnnext/dam/assets/201005070938-nyc-skyline-file-0929-full-169.jpg',
        date: DateTime.now()),
    News(
        id: '2',
        title: 'خبر 2',
        description:
        'ستشهد شاب فلسطيني، مساء يوم السبت، برصاص الاحتلال الإسرائيلي، في بلدة قصرة جنوب نابلس شمال الضفة الغربية المحتلة، كما وأصيب اثنين آخرين بجراح مختلفة  وأصيب اثنين آخرين بجراح مختلفة.',
        imagePath:
        'https://cdn.cnn.com/cnnnext/dam/assets/201005070938-nyc-skyline-file-0929-full-169.jpg',
        date: DateTime.now()),
   ];

  static NewsData newsData = NewsData._();


}
