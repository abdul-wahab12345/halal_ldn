import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: "maiandra",
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    List<Widget> tabs = [
      Center(child: Text("test")),
      Center(child: Text("test")),
      Favourites(),
      Center(child: Text("test")),
      Center(child: Text("test")),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 228, 228, 1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Color.fromRGBO(96, 48, 16, 1),
        unselectedItemColor: Color.fromRGBO(7, 149, 96, 1),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
          print(value);
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search_outlined,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.favorite,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.notifications,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
          ),
        ],
      ),
      body: tabs[_currentIndex] as Widget,
    );
  }
}

class Favourites extends StatelessWidget {
  const Favourites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Favorites",
              style: TextStyle(
                  color: Color.fromRGBO(96, 48, 16, 1),
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(2.0, 4.0),
                        blurRadius: 8.0,
                        color: Color.fromRGBO(0, 0, 0, 0.16)),
                  ],
                  letterSpacing: 6),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Item(title: "Excepteur sint."),
          SizedBox(
            height: 28,
          ),
          Item(title: "Excepteur sint."),
          SizedBox(
            height: 28,
          ),
          Item(title: "Excepteur sint."),
          SizedBox(
            height: 28,
          ),
          Item(title: "Excepteur sint."),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  String title;
  Item({
    Key? key,
    required String this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.all(0),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Card(
          elevation: 30,
          shadowColor: Color.fromRGBO(0, 0, 0, 0.16),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/images/img.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 22, top: 7),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(96, 48, 16, 1),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Arial"),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(200, 6, 6, 1),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(200, 6, 6, 1),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(200, 6, 6, 1),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(200, 6, 6, 1),
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(200, 6, 6, 0.5),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Icon(Icons.arrow_forward,
                          color: Color.fromRGBO(7, 149, 96, 1), size: 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
