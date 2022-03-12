import 'package:flutter/material.dart';
import 'package:ui_app/screens/app/tabs/faqs_tab.dart';
import 'package:ui_app/screens/app/tabs/info_tab.dart';

class FAQsScreen extends StatefulWidget {
  const FAQsScreen({Key? key}) : super(key: key);

  @override
  _FAQsScreenState createState() => _FAQsScreenState();
}

class _FAQsScreenState extends State<FAQsScreen> with SingleTickerProviderStateMixin{

  late TabController _tabController;

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
        title: const Text('FAQs',
        style: TextStyle(
          color: Colors.black,
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: 'FAQs',
              ),
              Tab(
                text: 'Info',
              )
            ]
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children: const [
            FAQsTab(),
            InfoTab(),
          ],
      ),
    );
  }
}
