import 'package:flutter/material.dart';

import 'course_category.dart';
class BatchNo extends StatelessWidget {
  const BatchNo({
    super.key,
    required this.course,
  });

  final CourseCategory course;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        course.batchNo,
        style: TextStyle(fontSize: 9),
      ),
    );
  }
}