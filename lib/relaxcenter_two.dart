import 'package:bright_care/google_maps.dart';
import 'package:bright_care/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'package:square_in_app_payments/models.dart';

class RelaxCenterTwo extends StatefulWidget {
  static final String id = "relaxcenter";
  @override
  _RelaxCenterTwoState createState() => _RelaxCenterTwoState();
}

TextEditingController sampledata1 = new TextEditingController();
TextEditingController sampledata2 = new TextEditingController();
TextEditingController sampledata3 = new TextEditingController();
TextEditingController sampledata4 = new TextEditingController();
TextEditingController sampledata5 = new TextEditingController();
TextEditingController sampledata6 = new TextEditingController();
TextEditingController sampledata7 = new TextEditingController();

TextEditingController sampledata8 = new TextEditingController();
TextEditingController sampledata9 = new TextEditingController();

class _RelaxCenterTwoState extends State<RelaxCenterTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mathira",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              height: 280.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //elevation: 10,
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/7fd81e80a579b6109868c6d40cea2952.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //elevation: 10,
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/7fd81e80a579b6109868c6d40cea2952.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/7fd81e80a579b6109868c6d40cea2952.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/7fd81e80a579b6109868c6d40cea2952.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Container(
                            height: 200.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/7fd81e80a579b6109868c6d40cea2952.jpg"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 10),
            // Center(
            //   child: ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     child: Text("Go back"),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120),
              child: Text(
                'Welcome to Mathira Rehab.',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(color: Colors.orangeAccent),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  //elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        //  Navigator.pushNamed(context, MyHomePage.id);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyHomePage()));
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.location_pin,
                            size: 20,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0, left: 20.0),
              child: Text(
                "Mathira is a rehabilitation center here to help you make a difference in your life. We help our clients get back on their feet and conquer the world.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.orange,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              child: Table(
                textDirection: TextDirection.ltr,
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(children: [
                    Text("Age of clients", textScaleFactor: 1.0),
                    Text("Period of Stay", textScaleFactor: 1.0),
                    Text("Charges for stay", textScaleFactor: 1.0),
                  ]),
                  TableRow(children: [
                    Text("10-18", textScaleFactor: 1.0),
                    Text("3 months", textScaleFactor: 1.0),
                    Text("Kshs. 58,999/-", textScaleFactor: 1.0),
                  ]),
                  TableRow(children: [
                    Text("18- 25", textScaleFactor: 1.0),
                    Text("4 months", textScaleFactor: 1.0),
                    Text("Kshs. 78,999/-", textScaleFactor: 1.0),
                  ]),
                  TableRow(children: [
                    Text("26-28", textScaleFactor: 1.0),
                    Text("4 months", textScaleFactor: 1.0),
                    Text("Kshs. 89,999/-", textScaleFactor: 1.0),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.orange,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Make Your Bookings',
              style: TextStyle(
                fontFamily: 'PatrickHand',
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                height: 20.0,
                child: Divider(
                  color: Colors.orange.shade100,
                )),
            Form(
              // key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata1,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.verified_user_sharp,
                          //size: 40.0,
                        ),
                        labelText: 'Enter Full Name', //firstname
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      // validator: (firstname) => firstname.trim().isEmpty
                      //     ? 'Enter valid name'
                      //     : null,
                      // onSaved: (firstname) => _firstname = firstname,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata2,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.phone,
                          // size: 40.0,
                        ),
                        labelText: 'Enter Phone Number', //firstname
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      // keyboardType: TextInputType.text,
                      // validator: (lastname) =>
                      //     lastname.trim().isEmpty ? 'Enter valid name' : null,
                      // onSaved: (lastname) => _lastname = lastname,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata3,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.email_sharp,
                          //size: 40.0,
                        ),
                        labelText: 'Email', //firstname
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      // validator: (firstname) => firstname.trim().isEmpty
                      //     ? 'Enter valid name'
                      //     : null,
                      // onSaved: (firstname) => _firstname = firstname,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata4,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.place_outlined,
                          //size: 40.0,
                        ),
                        labelText: 'Citizenship',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      //validator: (email) =>
                      //   !email.contains('@') ? 'Email is invalid' : null,
                      // onSaved: (email) => _email = email,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata5,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.card_travel_sharp,
                        ),
                        labelText: 'ID/Passport Number',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata6,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.supervised_user_circle,
                          //size: 40.0,
                        ),
                        labelText: 'Guardian Name', //firstname
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      // validator: (firstname) => firstname.trim().isEmpty
                      //     ? 'Enter valid name'
                      //     : null,
                      // onSaved: (firstname) => _firstname = firstname,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata7,
                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.phone,
                          //size: 40.0,
                        ),
                        labelText: 'Guardian Contact', //firstname
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      // validator: (firstname) => firstname.trim().isEmpty
                      //     ? 'Enter valid name'
                      //     : null,
                      // onSaved: (firstname) => _firstname = firstname,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    width: 340.0,
                    height: 45.0,
                    child: FlatButton(
                      onPressed: () async {
                        // calling the submit button
                        Map<String, dynamic> data = {
                          "field1": sampledata1.text,
                          "field2": sampledata2.text,
                          "field3": sampledata3.text,
                          "field4": sampledata4.text,
                          "field5": sampledata5.text,
                          "field6": sampledata6.text,
                          "field7": sampledata7.text,
                        };
                        Firestore.instance.collection("bookings").add(data);
                        //_submit();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0)),
                      color: Colors.blueGrey,
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Book Now',
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    child: Divider(
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Payment Options',
                    style: TextStyle(
                      fontFamily: 'PatrickHand',
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                        child: Text(
                          "Visa Payment",
                          style: TextStyle(fontSize: 15.0),
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          _payment();
                        }),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(25),
                  //   child: FlatButton(
                  //       child: Text(
                  //         "Mpesa Payment",
                  //         style: TextStyle(fontSize: 15.0),
                  //       ),
                  //       color: Colors.blueAccent,
                  //       textColor: Colors.white,
                  //       onPressed: () {
                  //         // _payment();
                  //       }),
                  // ),
                  SizedBox(height: 10.0),
                  // Container(
                  //   margin: EdgeInsets.all(25),
                  //   child: FlatButton(
                  //     child: Text(
                  //       "Cancel",
                  //       style: TextStyle(fontSize: 15.0),
                  //     ),
                  //     color: Colors.blueAccent,
                  //     textColor: Colors.white,
                  //     onPressed: () {
                  //       // FirebaseFirestore.instance
                  //       // .collection("booking package")
                  //       // .where('email', isEqualTo: field4)
                  //       // .get()
                  //       // .then(value(){
                  //       //   value.docs.forEach((element)
                  //       //   {
                  //       //     FirebaseFirestore.instance
                  //       //     .collection('bookings')
                  //       //     .doc(element.id)
                  //       //     .delete()
                  //       //     .then((value)
                  //       //     {
                  //       //       print("Success!");
                  //       //     });
                  //       //   });
                  //       // }
                  //       // );
                  //     },
                  //   ),
                  // ),
                  SizedBox(
                    height: 20.0,
                    child: Divider(
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    'Cancel Your Bookings',
                    style: TextStyle(
                      fontFamily: 'PatrickHand',
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata8,
                      decoration: InputDecoration(
                        labelText: 'Enter reason for canceling', //firstname
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      // validator: (firstname) => firstname.trim().isEmpty
                      //     ? 'Enter valid name'
                      //     : null,
                      // onSaved: (firstname) => _firstname = firstname,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10.0),
                    child: TextFormField(
                      controller: sampledata9,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      // validator: (email) =>
                      //     !email.contains('@') ? 'Email is invalid' : null,
                      // onSaved: (email) => _email = email,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: FlatButton(
                      child: Text(
                        "Send",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      onPressed: () async {
                        // calling the submit button
                        Map<String, dynamic> data = {
                          "field8": sampledata8.text,
                          "field9": sampledata9.text,
                        };
                        Firestore.instance
                            .collection("cancelledbooking")
                            .add(data);
                        //_submit();
                      },
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.all(25),
                  //   child: FlatButton(
                  //     child: Text(
                  //       "Visa Payments",
                  //       style: TextStyle(fontSize: 15.0),
                  //     ),
                  //     color: Colors.blueAccent,
                  //     textColor: Colors.white,
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
        //       Container(
        //         margin: EdgeInsets.all(25),
        //         child: FlatButton(
        //           child: Text(
        //             "Book Now",
        //             style: TextStyle(fontSize: 15.0),
        //           ),
        //           color: Colors.blueAccent,
        //           textColor: Colors.white,
        //           onPressed: () {
        //             Navigator.push(
        //               context,
        //               MaterialPageRoute(builder: (context) => BookingScreen()),
        //             );
        //           },
        //         ),
        //       ),
        //       RoundedButton(
        //         text: "Book Now",
        //         textColor: Colors.black,
        //         press: () {
        //           Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) {
        //                 return BookingScreen();
        //               },
        //             ),
        //           );
        //         },
        //       ),
      ),
    );
  }

  _payment() async {
    await InAppPayments.setSquareApplicationId('sq0idp-kX6Ph1lswQvG32zYw174iQ');
    await InAppPayments.startCardEntryFlow(
        onCardNonceRequestSuccess: (CardDetails result) {
          try {
            result.nonce;
            print('Success');
            InAppPayments.completeCardEntry(
                onCardEntryComplete: () =>
                    Navigator.pushNamed(context, HomeScreen.id));
          } catch (ex) {
            InAppPayments.showCardNonceProcessingError(ex.toString());
          }
        },
        onCardEntryCancel: () {});
    //ExpandingBottomSheet.of(context).close();
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color = Colors.orange,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
