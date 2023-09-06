import 'package:flutter/material.dart';

import 'loginpage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'REGISTER',
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
            const SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              child: Container(
                height: 40,
                width: 300,
                decoration: const BoxDecoration(
color: Color.fromARGB(255, 240, 225, 220),                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_2_rounded,
                      color: Colors.deepOrange,
                    ),
                    labelText: 'UserName',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              child: Container(
                height: 40,
                width: 300,
                decoration: const BoxDecoration(
color: Color.fromARGB(255, 240, 225, 220),                    borderRadius: BorderRadius.all(Radius.circular(10))),
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
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              child: Container(
                height: 40,
                width: 300,
                decoration: const BoxDecoration(
color: Color.fromARGB(255, 240, 225, 220),                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.deepOrange,
                    ),
                    labelText: 'Password',
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
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
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 2, horizontal: 15), // Adjust padding
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Align text and icon
                children: const [
                  Text('Register'),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Or Continue With',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40.0),
            OutlinedButton.icon(
              onPressed: () {
                // Handle Google sign-in logic here
              },
              style: OutlinedButton.styleFrom(),
              icon: Row(
                children: [
                  Image.asset(
                      'assets/images/download (1)google.png',
                      height: 30.0),
                       Image.asset(
                      'assets/images/download (1)fb.png',
                      height: 30.0),
                ],
              ),
              label: const Text('Login with Google'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already Have An Acccout?'),
                const SizedBox(width: 9), // Add some spacing between the texts
                GestureDetector(
                  onTap: () {
                    // Add navigation or other action here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginPage()), // Replace with your next screen widget
                    );
                  },
                  child: const Text(
                    'Login',
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
