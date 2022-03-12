import 'package:flutter/material.dart';

class OutBoardingContent extends StatelessWidget {
  ImageProvider image;
  String title;
  String supTitle;


  OutBoardingContent({required this.image, required this.title, required this.supTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: image, width: 250, height: 250,),
          Text(title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
              color: Colors.blue.shade500
            ),),
          SizedBox(height: 10,),
          Text(supTitle,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600,
                height: 1.2,
                fontFamily: 'Cairo'
            ),
            textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
