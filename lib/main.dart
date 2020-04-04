import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromARGB(100, 25, 25, 112)
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _current = 0;
  int currentIndex = 0;
  String dropdownValue = 'One';

  void pageChange(int index) {
    setState(() {
      _current = index;
    });
  }

  void changeBottomNavPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  CarouselSlider carouselSlider() {
    return CarouselSlider(
      height: 557.0,
      aspectRatio: 16/9,
      viewportFraction: 1.0,
      onPageChanged: (index) {
        pageChange(index);
      },
      items: [1,2,3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            if (i == 1) {
              return Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Let me to take you\naway',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 167,
                    height: 44,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xffeeeeee),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Stack(
                      children:<Widget>[
                        SvgPicture.asset(
                          'assets/people.svg',
                          width: 384,
                          height: 354,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
            else if (i == 2) {
              return Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Your way is my\nway',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 167,
                    height: 44,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xffeeeeee),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Stack(
                      children:<Widget>[
                        SvgPicture.asset(
                          'assets/people-2.svg',
                          width: 384,
                          height: 354,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
            else {
              return Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      'Sweeping you off\n your feet',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 167,
                    height: 44,
                    child: Text(
                      'Adipiscing elit, sed do eiusmod tempor incididunt.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xffeeeeee),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Stack(
                      children:<Widget>[
                        SvgPicture.asset(
                          'assets/people-3.svg',
                          width: 384,
                          height: 354,
                        )
                      ],
                    ),
                  ),
                ],
              );
            }
          },
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Color(0xff191970),
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.9,
        currentIndex: currentIndex,
        onTap: changeBottomNavPage,
        elevation: 8,
        backgroundColor: Color(0xff191970),
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            activeIcon: Icon(
                Icons.home,
                color: Color(0xff191970)
            ),
            title: Text(
              'Home',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff191970),
              ),
            )
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            activeIcon: Icon(
                Icons.search,
                color: Color(0xff191970)
            ),
            title: Text(
              'Search',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff191970),
              ),
            )
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            activeIcon: Icon(
                Icons.message,
                color: Color(0xff191970)
            ),
            title: Text(
              'Message',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff191970),
              ),
            )
          ),
          BubbleBottomBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            activeIcon: Icon(
                Icons.person,
                color: Color(0xff191970)
            ),
            title: Text(
              'Account',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff191970),
              ),
            )
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, left: 30, right: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.menu,
                    color: Colors.white
                  )
                ],
              ),
            ),
            carouselSlider(),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 15.0, left: 175.0, right: 175.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _current == 0 ? const Color(0xfff8f800) : const Color(0xffb9b9b9),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _current == 1 ? const Color(0xfff8f800) : const Color(0xffb9b9b9),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _current == 2 ? const Color(0xfff8f800) : const Color(0xffb9b9b9),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
