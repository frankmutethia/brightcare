import 'package:bright_care/chatservices/auth.dart';
import 'package:bright_care/google_maps.dart';
import 'package:bright_care/places.dart';
import 'package:bright_care/placesone.dart';
import 'package:bright_care/services/auth_services.dart';
import 'package:bright_care/views/chat_room.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "homescreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, String> args = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text(
            "Bright Care",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.send), title: Text("Hey")),
        //   ],
        // ),
        drawer: Container(
          color: Colors.orange,
          child: Drawer(
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text(
                    "Name: ${args['name']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    "Email: ${args['email']}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://picsum.photos/200",

                      // userInfo.profilePic
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text(
                    'Guide Maps',
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyHomePage()));
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.car_rental),
                  title: Text(
                    "Car Hire",
                    style: TextStyle(),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ChatRoom()));
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                Divider(),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.card_membership),
                  title: Text('Blog'),
                  onTap: () {
                    // Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () {},
                ),
                SizedBox(
                  height: 2.0,
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    AuthService().signOut();
                    // AuthService.logout(context);
                  },
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            // physics:
            //NeverScrollableScrollPhysics(), //allows the whole screen to be efficiently scrollable apart from one particular screen
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Various Rehabilitation Centers.",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  "Domestic Rehabilitation Centers",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 120.0),
                    child: Text(
                      "Offers",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Padding(
                    padding: EdgeInsets.only(left: 100.0, right: 20.0),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                ],
              ),
              Places(),
              // DestinationCarouselZero(),
              SizedBox(
                height: 15.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 15.0),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 120.0),
                    child: Text(
                      "Others",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Padding(
                    padding: EdgeInsets.only(left: 100.0, right: 20.0),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purpleAccent,
                      ),
                    ),
                  ),
                ],
              ),
              PlacesOne(),
              //DestinationCarouselZero(),
              // DestinationCarousel(),
              //DestinationCarouselZero(),
              // DestinationcarouselTwo(),
              //(),
              // DestinationcarouselTwo(),
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.send), title: Text("Hey")),
        //   ],
        // ),
      ),
    );
  }
}
