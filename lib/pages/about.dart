import 'package:flutter/material.dart';
import 'package:myflutter/pages/contactpage.dart';

import 'homepage.dart';
import 'search.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutApp(),
    );
  }
}

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(onPressed: (){  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );},       style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
        ),
      ),
child: Icon(Icons.arrow_back,color: Colors.deepOrange,)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 SizedBox(height: 20,),
                CircleAvatar(
  radius: 60,
  backgroundColor: const Color.fromARGB(255, 234, 242, 248),
  child: ClipOval(
    child: Image.asset(
      'assets/images/download (1000).jpeg',
      width: 120, // Set the width to twice the radius for a proper circular clipping
      height: 120, // Set the height to twice the radius for a proper circular clipping
      fit: BoxFit.cover, // Use BoxFit.cover to fit the image within the circular clipping
    ),
  ),
),

                  SizedBox(width: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Ifebuche Chukwu',
                              style: TextStyle(
                                fontSize: 22,
                                
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            textAlign:TextAlign.center,
                            'Mobile Developer',
                            
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ),
                );},
                    style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 2, horizontal: 35), // Adjust padding
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
                    child: Text('About',
                    style: TextStyle(color: Colors.deepOrange),),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
                    },style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 2, horizontal: 25), // Adjust padding
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
                    child: Text('Portpolio',),
                  ),
                ],
              ),
             
              Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 10),
          child: Image.asset(
            'assets/images/download (00001).jpeg',
            height: 200,
            width: double.infinity, // Set the width to match the screen width
            fit: BoxFit.cover, // Maintain the aspect ratio and cover the width
          ),
        ),
      ),
              Center(
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ));},style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 2, horizontal: 35), // Adjust padding
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                  child: Text('Search',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


