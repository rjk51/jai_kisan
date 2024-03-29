import 'package:flutter/material.dart';
import 'package:vishnu/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vishnu/authentication/login_or_reg.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot) {
          //if the user is logged in
          if(snapshot.hasData) 
            return HomePage();
          else
            return const LoginOrRegister();
          
        }

      ),
    );
  }
}

