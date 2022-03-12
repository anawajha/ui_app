
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);


  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text('Cars'),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        const Text('Cars'),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        const Text('Cars'),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
            ListTile(
              title: Text('Item1'),
              leading: Icon(Icons.category),
              subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
            ),
          ],
        ),
      ],
    );
  }
}
