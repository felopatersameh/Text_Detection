// Future<void> _createUserDocument({
//   required String uid,
//   required String email,
//   required String name,
// }) async {
//   try {
//     await _firestore.collection('users').doc(uid).set({
//       'email': email,
//       'name': name,
//       'createdAt': FieldValue.serverTimestamp(),
//       'lastLogin': FieldValue.serverTimestamp(),
//     });
//   } catch (e) {
//     throw Exception('Error creating user document: ${e.toString()}');
//   }
// }
//
// Future<void> _updateLastLogin(String uid) async {
//   try {
//     await _firestore.collection('users').doc(uid).update({
//       'lastLogin': FieldValue.serverTimestamp(),
//     });
//   } catch (e) {
//     print('Error updating last login: ${e.toString()}');
//   }
// }
//
// Future<void> _updateUserEmail(String uid, String newEmail) async {
//   try {
//     await _firestore.collection('users').doc(uid).update({
//       'email': newEmail,
//     });
//   } catch (e) {
//     throw Exception('Error updating user email in Firestore: ${e.toString()}');
//   }
// }
//
// Future<void> _deleteUserDocument(String uid) async {
//   try {
//     await _firestore.collection('users').doc(uid).delete();
//   } catch (e) {
//     throw Exception('Error deleting user document: ${e.toString()}');
//   }
// }
