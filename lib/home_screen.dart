import 'package:flutter/material.dart';
import 'package:ostad_14_2nd_exam/widgets/course_card.dart';
import 'package:ostad_14_2nd_exam/widgets/course_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: courseCategories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
              ),
              itemBuilder: (context, index) {
                final course = courseCategories[index];
                return CourseCard(course: course);
              },
            ),
          ],
        ),
      ),
    );
  }
}
