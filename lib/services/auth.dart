import 'package:firebase_auth/firebase_auth.dart';
import 'package:brew_crew/user/users.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user object based on firebaseuser

  Users _userFromFirebaseUser(Users user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  //sign anony
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //signin with email
  //register with email
}
