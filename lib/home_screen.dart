import 'package:flutter/material.dart';
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
              itemCount: courseCategories.length ,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                // crossAxisSpacing: 5,
                // mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                final course = courseCategories[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image(
                          image: AssetImage(course.image),
                          // height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 25,
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
                            height: 25,
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
                            height: 25,
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
                      ),
                      Divider(),
                      Text(
                        course.title,
                        style: TextStyle(
                          // fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(height: 10),
                      // ElevatedButton(onPressed: (){}, child: Text('বিস্তারিত দেখি'))
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
