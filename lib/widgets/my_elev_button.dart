import 'package:flutter/material.dart';
class MyElevButton extends StatelessWidget {
  const MyElevButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ElevatedButton(onPressed: (){}, child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("বিস্তারিত দেখি"),
            Icon(Icons.arrow_forward_outlined),
          ],
        )),
      ),
    );
  }
}