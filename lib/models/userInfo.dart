import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String name;
  String email;
  String profilePic;

  User(this.name, this.email, this.profilePic);

  static User fromSnapshot(DocumentSnapshot snap) {
    return User(
      snap.data['name'],
      snap.data['email'],
      snap.data['profileImageUrl'],
    );
  }
}
