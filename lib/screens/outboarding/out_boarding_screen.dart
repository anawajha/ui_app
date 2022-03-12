
import 'package:flutter/material.dart';
import 'package:ui_app/widgets/out_boarding_widget.dart';
import 'package:ui_app/widgets/page_indicator.dart';

class OutBoardingScreen extends StatefulWidget {

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _pageIndex = 0;
  late PageController _pageController;
  bool _isLastPage = false;
  bool _isFirstPage = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Visibility(
            visible: _pageIndex != 2,
            replacement: Container(
              alignment: AlignmentDirectional.bottomEnd,
              margin: EdgeInsets.only(top: 60, right: 20,bottom: 0),
              child: TextButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/login_screen');
                },
                child: Text('START NOW',
                  style: TextStyle(
                      fontSize: 18
                  ),),
              ),
            ),
            // maintainSize: true,
            // maintainAnimation: true,
            // maintainState: true,
            child: Container(
              alignment: AlignmentDirectional.bottomEnd,
              margin: EdgeInsets.only(top: 60, right: 20,bottom: 0),
              child: TextButton(
                onPressed: (){
                  _pageController.animateToPage(2, duration: Duration(milliseconds: 700), curve: Curves.easeInOutCubic);
                },
                child: Text('SKIP',
                style: TextStyle(
                  fontSize: 18
                ),),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _pageIndex = value;
                  _isFirstPage = value == 0 ? true : false ;
                  _isLastPage = value == 2 ? true : false;
                });
              },
            children: [
              OutBoardingContent(
                image: AssetImage('assets/images/designer.png'),
                title: 'Professional Designers',
              supTitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum vulputate eros at scelerisque. Fusce luctus, ex eget dapibus placerat, dui mauris vestibulum quam',),
              OutBoardingContent(
                  image: AssetImage('assets/images/programmer.png'),
                  title: 'Professional programmers',
                  supTitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum vulputate eros at scelerisque. Fusce luctus, ex eget dapibus placerat, dui mauris vestibulum quam'),
              OutBoardingContent(image: AssetImage('assets/images/tech_support.png'),
                  title: 'Technical Support',
                  supTitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum vulputate eros at scelerisque. Fusce luctus, ex eget dapibus placerat, dui mauris vestibulum quam'),
            ],
        ),
          ),
          Container(
        margin: EdgeInsets.only(bottom: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageIndicator(isSelected: _pageIndex == 0,),
            PageIndicator(isSelected: _pageIndex == 1, margin: 10,),
            PageIndicator(isSelected: _pageIndex == 2),
          ],
        ),
      ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(onPressed: (){
                  _pageController.previousPage(duration: Duration(milliseconds: 700), curve: Curves.easeInOutCubic);
                }, icon: Icon(Icons.arrow_back_ios,color: _isFirstPage ? Colors.grey.shade400 : Colors.blue.shade400 ,), label: Text('')),
                TextButton.icon(onPressed: (){
                  _pageController.nextPage(duration: Duration(milliseconds: 700), curve: Curves.easeInOutCubic);
                }, icon: Icon(Icons.arrow_forward_ios, color: _isLastPage ? Colors.grey.shade400 : Colors.blue.shade400 ,), label:Text('')),
              ],
            ),
          ),
        ],),
    );
  }
}


