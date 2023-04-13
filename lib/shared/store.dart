import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';


class Store {
  User? user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  /// After Sign in Update User Information In Firebase Firestore
  Future addUser(UserModel userModel) async {
    fireStore.collection('users').doc(userModel.userId).set(
      {
        'userId': userModel.userId,
        'userName': userModel.userName,
        'userEmail': userModel.userEmail,
        'userPhone': userModel.userPhone,
        'userRole': userModel.userRole,
      },
    );
  }


  
}
