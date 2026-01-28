import 'package:flutter/material.dart';

import 'course_category.dart';
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
        Container(
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
        ),
        Container(
          height: 18,
          width: 68,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(Icons.person, size: 12),
              Text(
                course.availableSit,
                style: TextStyle(fontSize: 9),
              ),
            ],
          ),
        ),
        Container(
          height: 18,
          width: 68,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Icon(Icons.timer_rounded, size: 12),
              Text(
                course.day,
                style: TextStyle(fontSize: 9),
              ),
            ],
          ),
        ),
      ],
    );
  }
}