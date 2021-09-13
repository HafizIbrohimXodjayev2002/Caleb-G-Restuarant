import 'package:calebresturant/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  final FirebaseAuth _authUser = FirebaseAuth.instance;

  Foydalanuvchi _firebasedaanKelganFoydalanuvchi(User? user) {
    return Foydalanuvchi(uid: user!.uid);
  }

  Stream<Foydalanuvchi> get user {
    return _authUser.authStateChanges().map(_firebasedaanKelganFoydalanuvchi);
  }

  Future signOutFuksiyasi() async {
    try {
      return await _authUser.signOut();
    } catch (e) {
      print("Auth Service hatop: $e");
    }
  }

  Future signUpWithEmailFunksiyasi(String email, String password) async {
    try {
      UserCredential _credential = await _authUser
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = _credential.user!;

      return _firebasedaanKelganFoydalanuvchi(user);    
    } catch (e) {
      print("Sign Up da Hato Bor: $e");
    }
  }

  Future signInWithEmailFunksiyasi(String email, String password)async{
    try {
      UserCredential _credential  = await _authUser.signInWithEmailAndPassword(email: email, password: password);

      User user = _credential.user!;

      return _firebasedaanKelganFoydalanuvchi(user);

    } catch (e) {
      print("Sign In da Hato Bor: $e");
    }
  }
}

