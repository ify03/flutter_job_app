import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Applied extends StatelessWidget {
  const Applied({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 242, 248),
      body: Center(
        child: Container(
          height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
        
            children: [
              Padding(
                padding: const EdgeInsets.only(top:28.0, bottom: 10),
                child: Image.asset('assets/images/download.png'),
              ),
              Center(child: Text('You Have Sucessfully Applied For This Job',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,
              
              fontWeight: FontWeight.bold,
              ),),)
            ],
          ),
        ),
      ),
    );
  }
}