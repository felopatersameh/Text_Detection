// import 'package:firebase_auth/firebase_auth.dart';
//
// Exception _handleAuthError(FirebaseAuthException e) {
//   switch (e.code) {
//     case 'user-not-found':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'No user found with this email.',
//       );
//     case 'wrong-password':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'Incorrect password.',
//       );
//     case 'email-already-in-use':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'An account already exists with this email.',
//       );
//     case 'weak-password':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'Password should be at least 6 characters.',
//       );
//     case 'invalid-email':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'Please enter a valid email address.',
//       );
//     case 'user-disabled':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'This account has been disabled.',
//       );
//     case 'requires-recent-login':
//       return FirebaseAuthException(
//         code: e.code,
//         message: 'Please sign in again to complete this action.',
//       );
//     default:
//       return FirebaseAuthException(
//         code: e.code,
//         message: e.message ?? 'An unknown error occurred.',
//       );
//   }
// }
