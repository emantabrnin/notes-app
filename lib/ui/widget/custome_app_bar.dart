import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       const DefaultTextStyle(
          style: TextStyle(),
          child: Text(
            'Notes',style: TextStyle(
              fontSize: 20,color: Colors.white),
              )),
          Spacer(),
            Container(
            height: 30,
            width: 30,
             decoration: BoxDecoration(
           color: Colors.white.withOpacity(0.5),
             borderRadius: BorderRadius.circular(15)
        ),
  child: Center(
    child: Icon(Icons.search),
  ),
)
          
      ],
    );
  }
}