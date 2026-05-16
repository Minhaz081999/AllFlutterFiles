
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign up / registration

  Future<User?>signUp(String email,String password) async {
    final result =await _auth.createUserWithEmailAndPassword(email: email, password: password);
    result.user!.sendEmailVerification();
    print(result.user);
    return result.user;
  }

  //login

  Future<User?>login(String email,String password) async {
    final result =await _auth.signInWithEmailAndPassword(email: email, password: password);
    print(result.user);
    return result.user;
  }


  Future<void>resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  //google sign in

  Future<User?>signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();

    print(googleUser);

    if(googleUser == null) return null ;

    final googleAuth = await googleUser.authentication;
    print(googleAuth);

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken
    );

    final result = await _auth.signInWithCredential(credential);
    return result.user;
  }
}
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter/foundation.dart'; // for kIsWeb

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   // ======================
//   // SIGN UP
//   // ======================
//   Future<User?> signUp(String email, String password) async {
//     final result = await _auth.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//
//     await result.user?.sendEmailVerification();
//     return result.user;
//   }
//
//   // ======================
//   // LOGIN
//   // ======================
//   Future<User?> login(String email, String password) async {
//     final result = await _auth.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     return result.user;
//   }
//
//   // ======================
//   // RESET PASSWORD
//   // ======================
//   Future<void> resetPassword(String email) async {
//     await _auth.sendPasswordResetEmail(email: email);
//   }
//
//   // ======================
//   // GOOGLE SIGN IN (ANDROID + WEB)
//   // ======================
//   Future<User?> signInWithGoogle() async {
//     try {
//       // ---------- WEB ----------
//       if (kIsWeb) {
//         GoogleAuthProvider googleProvider = GoogleAuthProvider();
//
//         final UserCredential userCredential =
//         await _auth.signInWithPopup(googleProvider);
//
//         return userCredential.user;
//       }
//
//       // ---------- ANDROID / IOS ----------
//       final GoogleSignInAccount? googleUser =
//       await GoogleSignIn().signIn();
//
//       if (googleUser == null) {
//         // user cancelled login
//         return null;
//       }
//
//       final GoogleSignInAuthentication googleAuth =
//       await googleUser.authentication;
//
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//
//       final UserCredential userCredential =
//       await _auth.signInWithCredential(credential);
//
//       return userCredential.user;
//     } catch (e) {
//       print("Google Sign-In Error: $e");
//       return null;
//     }
//   }
//
//   // ======================
//   // LOGOUT
//   // ======================
//   Future<void> logout() async {
//     await GoogleSignIn().signOut();
//     await _auth.signOut();
//   }
// }
