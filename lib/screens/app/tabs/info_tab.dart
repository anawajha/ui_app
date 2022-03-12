import 'package:flutter/material.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: const Text('Info',style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
