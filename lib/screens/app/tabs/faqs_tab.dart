import 'package:flutter/material.dart';

class FAQsTab extends StatelessWidget {
  const FAQsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.orange,
              height: 1000,
              child: const Text('ABC'),
            )
          ],
        )
      ),
    );
  }
}
