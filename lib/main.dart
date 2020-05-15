import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ernährung',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Color(0xFF222231),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF222231),
        elevation: 0.0,
        title:
        Text('Ernährung', style: GoogleFonts.lato(color: Colors.white70)),
        centerTitle: true,
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Color(0xFF222231),
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/image_banner.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Muskeln aufbauen',
                      style: TextStyle(
                          color: Colors.white,
                          shadows: [Shadow(color: Colors.black)]),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/image_dish_1.png',
                          width: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Muskeln aufbauen',
                            style: TextStyle(
                                color: Colors.white,
                                shadows: [Shadow(color: Colors.black)]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/image_dish_2.png',
                          width: 150,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Muskeln aufbauen',
                            style: TextStyle(
                                color: Colors.white,
                                shadows: [Shadow(color: Colors.black)]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/image_dish_3.png',
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Miagessen',
                          style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(color: Colors.black)]),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/image_dish_4.png',
                        width: 150,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Snack',
                          style: TextStyle(
                              color: Colors.white,
                              shadows: [Shadow(color: Colors.black)]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF212131),
        ),
        child: BottomNavigationBar(
          onTap: (idx) {
            setState(() {
              currentIndex = idx;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icon_home.svg',
                color: 0 == currentIndex ? Colors.green : Colors.white70,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icon_dumbbell.svg',
                color: 1 == currentIndex ? Colors.green : Colors.white70,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icon_spoon_fork.svg',
                color: 2 == currentIndex ? Colors.green : Colors.white70,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icon_flower.svg',
                color: 3 == currentIndex ? Colors.green : Colors.white70,
              ),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/icon_user.svg',
                color: 4 == currentIndex ? Colors.green : Colors.white70,
              ),
              title: Text(""),
            ),
          ],
        ),
      ),
    );
  }
}
