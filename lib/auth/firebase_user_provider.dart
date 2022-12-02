import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MangablueFirebaseUser {
  MangablueFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MangablueFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MangablueFirebaseUser> mangablueFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MangablueFirebaseUser>(
      (user) {
        currentUser = MangablueFirebaseUser(user);
        return currentUser!;
      },
    );
