import 'package:flutter_k/model/opinion.dart';
import 'package:flutter_k/model/option.dart';

class Survey {
  String id;
  String title;
  String description;
  DateTime startDate;
  DateTime endDate;
  List<Option> options;
  List<Opinion> opinions;

  Survey(this.id, this.title, this.description, this.startDate, this.endDate,
      this.options, this.opinions);
}
