import 'package:flutter/material.dart';

import 'course_category.dart';
class CourseTitle extends StatelessWidget {
  const CourseTitle({
    super.key,
    required this.course,
  });

  final CourseCategory course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        course.title,
        style: TextStyle(
          // fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}