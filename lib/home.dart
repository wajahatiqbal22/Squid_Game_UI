import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 40, opacity: 1),
          unselectedIconTheme: IconThemeData(size: 20, opacity: 0.5),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white10),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topLeft,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                UpperRow(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.99,
                      height: 200.0,
                      autoPlay: true,
                      scrollDirection: Axis.vertical,
                      reverse: false,
                      enlargeCenterPage: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 1500),
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage('assets/slider$i.jpg'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 10),
                      child: Text(
                        "Recomended for you",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Recomended(
                          image: "assets/funko1.png",
                          title: "Jedi Pop",
                          hero: "btn1",
                        ),
                        Recomended(
                          image: "assets/jhon.png",
                          title: "Jhon Pop",
                          hero: "btn2",
                        ),
                        Recomended(
                          image: "assets/Venom.png",
                          title: "Venom Pop",
                          hero: "btn3",
                        ),
                        Recomended(
                          image: "assets/wolf.png",
                          title: "Wolf Pop",
                          hero: "btn4",
                        ),
                        Recomended(
                          image: "assets/starwars.png",
                          title: "Star Wars Pop",
                          hero: "btn5",
                        ),
                        Recomended(
                          image: "assets/fredi.png",
                          title: "Freddi Pop",
                          hero: "btn6",
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0, top: 20),
                      child: Text(
                        "Recent Orders",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Recent(
                          image: "assets/facemask.png",
                          title: "Supervisor Mask",
                          item_order: "3 Items Ordered",
                        ),
                        Recent(
                          image: "assets/doll.png",
                          title: "Doll Toy",
                          item_order: "3 Item Ordered",
                        ),
                        Recent(
                          image: "assets/wolf.png",
                          title: "Wolf Pop",
                          item_order: "2 Item Ordered",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UpperRow extends StatelessWidget {
  const UpperRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            child: Image(
              image: AssetImage("assets/home_logo.png"),
            ),
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 30),
            child: SizedBox(
              height: 44,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(222, 146, 214, 0.08),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      borderSide: new BorderSide(color: Colors.grey)),
                  labelText: 'Search',
                  labelStyle: TextStyle(fontSize: 20),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixStyle: const TextStyle(color: Colors.green),
                ),
              ),
            ),
          )),
          Icon(
            Icons.menu,
            size: 35,
          ),
        ],
      ),
    );
  }
}

class Recomended extends StatelessWidget {
  String image;
  String title;
  String hero;

  Recomended(
      {Key? key, required this.image, required this.title, required this.hero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.redAccent,
                      size: 26,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(),
                    Flexible(
                      child: Container(
                        child: Text(
                          title,
                          style: TextStyle(
                              fontSize: 20,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xfff2c750),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        heroTag: hero,
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        child: const Icon(Icons.add),
                        backgroundColor: Colors.pinkAccent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Recent extends StatelessWidget {
  String image;
  String title;
  String item_order;
  Recent(
      {Key? key,
      required this.image,
      required this.title,
      required this.item_order})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: SizedBox(
        width: 250,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        item_order,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "View Details ",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
