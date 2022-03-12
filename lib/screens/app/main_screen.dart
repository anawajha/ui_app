import 'package:flutter/material.dart';
import 'package:ui_app/models/bn_screen.dart';
import 'package:ui_app/screens/app/categories_screen.dart';
import 'package:ui_app/screens/app/home_screen.dart';
import 'package:ui_app/screens/app/profile_screen.dart';
import 'package:ui_app/screens/app/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _darkTheme = false;
  int _currentIndex = 0;
  final List<BNScreen> screens = <BNScreen>[
    const BNScreen(title: 'Home', screen: HomeScreen()),
    const BNScreen(title: 'Categories', screen: CategoriesScreen()),
    const BNScreen(title: 'Profile', screen: ProfileScreen()),
    const BNScreen(title: 'Settings', screen: SettingsScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          screens[_currentIndex].title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 48,
                ),
              ),
              accountName: Text('Asad Nawajha'),
              accountEmail: Text('anawajha@icloud.com'),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 6,
                  )
                ],
                  gradient: LinearGradient(
                    begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                      colors: [Colors.grey, Colors.black87],
                  )),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
                CircleAvatar(
                    child: Icon(
                  Icons.person,
                  color: Colors.tealAccent,
                )),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Info'),
              trailing: const Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){
                Navigator.pushNamed(context, '/info_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_answer_sharp),
              title: const Text('FAQs'),
              trailing: const Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){
                Navigator.pushNamed(context, '/faqs_screen');
              },
            ),
            const Divider(thickness: 0.4, color: Colors.black45,
            indent: 10,
            endIndent: 10,),
            const ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('Add Category'),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),
            const ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Product'),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),
            const Divider(thickness: 0.4, color: Colors.black45,
            indent: 10,
            endIndent: 10,),
            SwitchListTile(
              title: const Text('Dark Theme',),
                value: _darkTheme,
                onChanged: (bool value){
                setState(() {
                  _darkTheme = value;
                });
                }),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account settings'),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              trailing: const Icon(Icons.arrow_forward_ios,size: 18,),
              onTap: (){
                Navigator.pushReplacementNamed(context, '/login_screen');
              },
            ),
          ],
        ),
      ),
      body: screens[_currentIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        showSelectedLabels: false,
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        items:  [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              activeIcon: Icon(Icons.category),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: const CircleAvatar(child: Image(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnMDee2vjFJEskStXPWwXv8y3uQdL9kJsa_A&usqp=CAU'),),radius: 13,),
              //Icon(Icons.person_outline),
              activeIcon: Container(
                width: 25,
                height: 25,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnMDee2vjFJEskStXPWwXv8y3uQdL9kJsa_A&usqp=CAU')
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: Colors.deepOrange,
                      style: BorderStyle.solid,
                    )
                ),
              ),
              label: 'Profile'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings'),
        ],
      ),
    );
  }
}
