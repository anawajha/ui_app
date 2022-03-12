
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 60,
          child: GridView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 5,
                childAspectRatio: 60 /60),
            itemBuilder: (context, index) {
              return Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)
                ),
              );
            },),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return ListTile(
                title: Text('Item1'),
                leading: Icon(Icons.category),
                subtitle: Text('Lorem ipsum1 this is a supTitle for item category.'),
              );
            },
            separatorBuilder: (context,index){
              return Divider(
                thickness: 0.5,
                color: Colors.black45,
                endIndent: 30,
                indent: 30,
              );
            },
            itemCount: 15)
      ],
    );
  }
}
