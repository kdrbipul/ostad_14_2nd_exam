import 'package:flutter/material.dart';
import 'available_sit.dart';
import 'batch_no.dart';
import 'course_category.dart';
import 'course_due_day.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    super.key,
    required this.course,
  });

  final CourseCategory course;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BatchNo(course: course),
        AvailableSit(course: course),
        CourseDueDay(course: course),
      ],
    );
  }
}



