import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'about.dart';
import 'homepage.dart';
import 'registerpage.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: ContactApp(),
    );
  }
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});
  Future<void> _openFileExplorer() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx'], // Add the extensions you want to allow
      );
      if (result != null) {
        // Handle the selected file here
        final filePath = result.files.single.path;
        print("Selected file: $filePath");
      } else {
        // User canceled the file picker
      }
    } catch (e) {
      print("Error picking file: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
    appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(onPressed: (){  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );},       style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28.0),
            ),
          ),
        ),
    child: Icon(Icons.arrow_back,color: Colors.deepOrange,)),
              ],
            ),
       ]   ),
    
        ),
        body: Column(
          children: [
            Text('Contact Information',
            style: TextStyle(fontSize: 25),),
            SizedBox(height:10),
          // ... Add your app bar content ...
         SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 29.0),
              Text('Full Name',
              textAlign: TextAlign.start,),
                          const SizedBox(height: 3.0),
    
              Center(
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 225, 220),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      
                      labelText: 'Full Name',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
               Text('Password',
              textAlign: TextAlign.start,),                        const SizedBox(height: 3.0),
    
              Center(
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 225, 220),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                     
                      labelText: 'Password',
                      border: const OutlineInputBorder(borderSide: BorderSide.none),
                      
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
               Text('Email',
              textAlign: TextAlign.start,),                        const SizedBox(height: 3.0),
    
              Center(
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 225, 220),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      
                      labelText: 'Email',
                      border: const OutlineInputBorder(borderSide: BorderSide.none),
                     
                        
                      ),
                    ),
                  ),
              ),   
              
              
               
                //  OutlinedButton(
                //   onPressed: _openFileExplorer,
                //    child:Icon(Icons.dashboard,color:Colors.deepOrange)            ),
              
  
    //           ),

            
                      const SizedBox(height: 30.0),
    Center(child: Text('Apply CV Here' )),
             
              Center(
                child: OutlinedButton(
                  onPressed:
                    _openFileExplorer,
                
                  style: ElevatedButton.styleFrom(
                
                    backgroundColor: Color.fromARGB(255, 241, 234, 232),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // AlEvelyign text and icon
                    children: const [
                      Text('Apply Cv ',
                      style: TextStyle(color: Colors.grey),),
                      Icon(
                        Icons.dashboard_sharp,
                        size: 12,
                        color:Colors.deepOrange,
                      ),
                    ],
                  ),
                ),
              ),
              
              ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                // Adjust padding
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.0),
                ),
              ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
                    
                      children: [
                        Text('Apply Now',
                        style: TextStyle(color: Colors.white),),
                        Icon(Icons.arrow_forward_ios_outlined,size: 12),
                      ],
                    ),
                  ),
                  
            
         ],
              ),
            
          ),
        
       ] )  ),
    );
  }
}
