import 'package:flutter/material.dart';
import 'package:squidgame/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.pinkAccent),
      ),
      title: 'Squid Game',
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/appback.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: InnerCol(),
          ),
        ),
      ),
    );
  }
}

class InnerCol extends StatefulWidget {
  const InnerCol({Key? key}) : super(key: key);

  @override
  _InnerColState createState() => _InnerColState();
}

class _InnerColState extends State<InnerCol> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  child: Image(
                    image: AssetImage("assets/squid_white.png"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Shop",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 252, 250, 0.19),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: NavCon(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavCon extends StatefulWidget {
  const NavCon({Key? key}) : super(key: key);

  @override
  _NavConState createState() => _NavConState();
}

class _NavConState extends State<NavCon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "EVE-RYTHING",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Container(
                    height: 150,
                    width: 300,
                    child: Image(
                      image: AssetImage("assets/squid_white.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Shop your favourite toys and outfits of Squid Game on the go!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 0),
                shadowColor: Colors.pink,
                primary: Colors.pinkAccent,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Text(
                  'Shop Now',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
