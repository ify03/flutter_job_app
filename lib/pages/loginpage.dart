import 'package:flutter/material.dart';
import 'package:myflutter/pages/about.dart';
import 'package:myflutter/pages/contactpage.dart';
import 'package:myflutter/pages/registerpage.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'LOGIN',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                fontStyle: FontStyle.normal),
          ),
        ),
 backgroundColor: Colors.transparent,
        elevation: 0,
        // ... Add your app bar content ...
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 29.0),
            Container(
              height: 40,
              width: 300,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 225, 220),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.deepOrange,
                  ),
                  labelText: 'Email',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 40,
              width: 300,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 240, 225, 220),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.deepOrange,
                  ),
                  labelText: 'Password',
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      // Toggle obscureText value to show/hide password
                      // You need to manage the state to toggle the password visibility.
                    },
                    child: const Icon(
                      Icons.visibility_off_sharp,
                      size: 15,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
              //  padding: const EdgeInsets.symmetric(
                //    vertical: 2, horizontal: 5), // Adjust padding
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Align text and icon
                children: const [
                  Text('Login'),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Or Continue With',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                      'assets/images/download (1)google.png',
                      height: 40.0),
                       Image.asset(
                      'assets/images/download (1)fb.png',
                      height: 40.0),
                ],
              ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('New User?'),
                const SizedBox(width: 9), // Add some spacing between the texts
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RegisterPage()), // Replace with your next screen widget
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                    
                  },
                  child: const Text(
                    'Create An Account',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
