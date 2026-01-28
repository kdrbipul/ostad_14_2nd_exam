import 'package:flutter/material.dart';

import 'course_category.dart';
class CourseImage extends StatelessWidget {
  const CourseImage({
    super.key,
    required this.course,
  });

  final CourseCategory course;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Image(
        image: AssetImage(course.image),
        height: 90,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}