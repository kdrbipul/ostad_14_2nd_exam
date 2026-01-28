import 'package:flutter/material.dart';
import 'course_category.dart';
import 'course_details.dart';
import 'course_image.dart';
import 'course_title.dart';
import 'eleveted_button.dart';
class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.course,
  });

  final CourseCategory course;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CourseImage(course: course),
          SizedBox(height: 2),
          CourseDetails(course: course),
          Divider(),
          CourseTitle(course: course),
          MyElevetedButton()
        ],
      ),
    );
  }
}