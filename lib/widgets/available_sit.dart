import 'package:flutter/material.dart';
import 'course_category.dart';

class AvailableSit extends StatelessWidget {
  const AvailableSit({
    super.key,
    required this.course,
  });

  final CourseCategory course;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}