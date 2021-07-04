import 'package:bright_care/chatservices/auth.dart';
import 'package:bright_care/chatservices/database.dart';
import 'package:bright_care/google_maps.dart';
import 'package:bright_care/helper/authenticate.dart';
import 'package:bright_care/helper/constants.dart';
import 'package:bright_care/helper/helperfunctions.dart';
import 'package:bright_care/helper/theme.dart';
import 'package:bright_care/home_screen.dart';
import 'package:bright_care/views/chat.dart';
import 'package:bright_care/views/search.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  static final String id = "chatroom";
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  Stream chatRooms;

  Widget chatRoomsList() {
    return StreamBuilder(
      stream: chatRooms,
      builder: (context, snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.documents.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ChatRoomsTile(
                    userName: snapshot.data.documents[index].data['chatRoomId']
                        .toString()
                        .replaceAll("_", "")
                        .replaceAll(Constants.myName, ""),
                    chatRoomId:
                        snapshot.data.documents[index].data["chatRoomId"],
                  );
                })
            : Container();
      },
    );
  }

  @override
  void initState() {
    getUserInfogetChats();
    super.initState();
  }

  getUserInfogetChats() async {
    Constants.myName = await HelperFunctions.getUserNameSharedPreference();
    DatabaseMethods().getUserChats(Constants.myName).then((snapshots) {
      setState(() {
        chatRooms = snapshots;
        print(
            "we got the data + ${chatRooms.toString()} this is name  ${Constants.myName}");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade700,
      appBar: AppBar(
        title: Text("Chat Room"),
        elevation: 0.0,
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {
              AuthService().signOut();
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Authenticate()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.exit_to_app)),
          ),
        ],
      ),
      drawer: Container(
        color: Colors.orange,
        child: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Bright Care",
                  // "Name: ${args['name']}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text(
                  "Welcome",
                  // "Email: ${args['email']}",
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
                leading: Icon(Icons.home_sharp),
                title: Text(
                  "Rehab Care Centers",
                  style: TextStyle(),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                // onTap: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) => HomeScreen()));
                // },
              ),
              SizedBox(
                height: 2.0,
              ),
              Divider(),
              SizedBox(
                height: 2.0,
              ),
              // ListTile(
              //   leading: Icon(Icons.card_membership),
              //   title: Text('Blog'),
              //   onTap: () {
              //     // Navigator.pushNamed(context, HomeScreen.id);
              //   },
              // ),
              // SizedBox(
              //   height: 2.0,
              // ),
              // ListTile(
              //   leading: Icon(Icons.help),
              //   title: Text('Help'),
              //   onTap: () {},
              // ),
              // SizedBox(
              //   height: 2.0,
              // ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  AuthService().signOut();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Authenticate()));
                },
                // onTap: () {
                //   AuthService().signOut();
                //   // AuthService.logout(context);
                // },
              )
            ],
          ),
        ),
      ),
      body: Container(
        child: chatRoomsList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Search()));
        },
      ),

      //       floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.search),
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => Search()));
      //   },
      // ),
    );
  }
}

class ChatRoomsTile extends StatelessWidget {
  final String userName;
  final String chatRoomId;

  ChatRoomsTile({this.userName, @required this.chatRoomId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Chat(
                      chatRoomId: chatRoomId,
                    )));
      },
      child: Container(
        // color: Colors.black26,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: CustomTheme.colorAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(userName.substring(0, 1),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'OverpassRegular',
                      fontWeight: FontWeight.w300)),
            ),
            SizedBox(
              width: 12,
            ),
            Text(userName,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'OverpassRegular',
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}
