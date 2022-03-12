import 'package:flutter/material.dart';
import 'package:ui_app/screens/app/tabs/faqs_tab.dart';
import 'package:ui_app/screens/app/tabs/info_tab.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> with SingleTickerProviderStateMixin{

  late TabController _tabController;
  int _tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info',
        style: TextStyle(
          color: Colors.black,
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){}, child: const Text('SIGN IN',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      )
                    )
                  ),),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(onPressed: (){}, child: const Text('SIGN IN',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1,
                      )
                    )
                  ),),
                ),
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
              onTap: (int value){
              setState(() {
                _tabIndex = value;
              });
              },
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  text: 'SIGN IN',
                ),
                Tab(
                  text: 'SIGN UP',
                ),
              ],),
          IndexedStack(
            index: _tabIndex,
            children: [
              Visibility(
                visible:  _tabIndex == 0,
                  child: const InfoTab()),
              Visibility(
                visible: _tabIndex == 1,
                  child: const FAQsTab()),
            ],
          )
        ],
      ),
    );
  }
}
