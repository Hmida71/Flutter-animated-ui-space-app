import 'package:flutter/material.dart';

import 'fade_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "HomePage": (context) => const HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF000000),
      ),
      body: Container(
        color: const Color(0xFF000000),
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset(
                "images/nasa2.png",
                fit: BoxFit.fill,
              ),
            ),
            FadeAnimation(
              2.0,
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "Explore the universe!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FadeAnimation(
              2.5,
              Container(
                margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: const Text(
                  "Learn about the universe where we all live.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white24,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FadeAnimation(
              2.5,
              GestureDetector(
                onTap: () {
                  print("Clicks");
                  Navigator.of(context).pushReplacementNamed("HomePage");
                },
                child: Container(
                    margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: const Icon(
                      Icons.play_circle_filled,
                      color: Colors.white,
                      size: 80,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

int _selectedIndex = 0; //New

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000),
        leading: Container(
          margin: const EdgeInsets.all(8),
          child: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("images/1.jpg"),
          ),
        ),
        title: const Text(
          "Feed",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.widgets))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: const Color(0xFF000000),
          width: double.infinity,
          child: Column(
            children: [
              FadeAnimation(
                1.0,
                Container(
                    // color: Colors.red,
                    width: double.infinity,
                    height: 80,
                    margin: const EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 12,
                            ),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            height: 35,
                            width: 50,
                            child: const Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                // border: Border.all(color: Colors.white, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(13))),
                            height: 35,
                            width: 100,
                            child: const Text(
                              "Planets",
                              // style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            height: 35,
                            width: 100,
                            child: const Text(
                              "Comets",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            height: 35,
                            width: 100,
                            child: const Text(
                              "Solar system",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            height: 35,
                            width: 100,
                            child: const Text(
                              "Nasa",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              FadeAnimation(
                1.5,
                Container(
                  width: double.infinity,
                  height: 260,
                  // color: Colors.green,
                  child: Row(
                    children: [
                      Expanded(
                          child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 160,
                            width: double.infinity,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white24),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Mars",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '270 views',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(),
                          const Positioned(
                            top: 0,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                "images/mars.png",
                              ),
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 160,
                            width: double.infinity,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white24),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "TrES-2b",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '176 views',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(),
                          const Positioned(
                            top: 0,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                "images/trs.png",
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                1.5,
                Container(
                  width: double.infinity,
                  height: 180,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      image: const DecorationImage(
                          image: AssetImage(
                            "images/nasa.jpg",
                          ),
                          fit: BoxFit.cover),
                      border: Border.all(width: 2, color: Colors.white24),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12))),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                              // color: Colors.green,
                              )),
                      Expanded(
                          child: Container(
                        // color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: const Text(
                                  " Cassini \n on Saturn",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.visibility,
                                    color: Colors.white70,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '176 views',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              FadeAnimation(
                1.5,
                Container(
                  width: double.infinity,
                  height: 260,
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 160,
                            width: double.infinity,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white24),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Cobat",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '460 views',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(),
                          Positioned(
                              top: 0,
                              child: Image.asset(
                                "images/lava.png",
                                height: 85,
                                fit: BoxFit.cover,
                              )),
                        ],
                      )),
                      Expanded(
                          child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 160,
                            width: double.infinity,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white24),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "HD Tr-2C",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.visibility,
                                      color: Colors.white70,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '180 views',
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(),
                          const Positioned(
                            top: 0,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                "images/mars.png",
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
        iconSize: 35,
        backgroundColor: const Color(0xFF000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Color(0xff6775f2)),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? null : Colors.white54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              size: 50,
              color: _selectedIndex == 1 ? null : Colors.white54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp,
              color: _selectedIndex == 2 ? null : Colors.white54,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
