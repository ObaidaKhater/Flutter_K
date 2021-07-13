import 'dart:io';

import 'package:flutter_k/model/lesson.dart';
import 'package:image_picker/image_picker.dart';

class LessonData {
  LessonData._();

  static LessonData lessonData = LessonData._();

  List<Lesson> getStudentLessonsRequiredToday(String idStudent) {
    // TODO: Return List Student Lessons Required Today From Firebase
    return [];
  }

  List<Lesson> getStudentLessonsForSemester(String idStudent) {
    // TODO: Return List Student Lessons For Semester From Firebase
    return [];
  }

  Future<File> pickerVideoFromGallery() async {
    final pickedFile = await ImagePicker().getVideo(source: ImageSource.gallery);
    final File file = File(pickedFile.path);
    return file;
  }
}
