import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myflutter/pages/qualifications.dart';

import 'about.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
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
              OutlinedButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lead(),
                      ),
                    );
              },       style: ButtonStyle(
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
          Text('Search',
          style: TextStyle(fontSize: 25),),
          SizedBox(height:10),
                      Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 234, 242, 248),
                  ),
                  alignment: Alignment.center,
                  child: const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      ),
                      hintText: 'Search...',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Change the border radius as needed
                      ), // Adjust the dimensions as needed
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.dashboard_customize_rounded))
              ],
            ), SizedBox(height: 20),
            Text('35 Jobs Opportunity Found'),
             SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
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
                    onPressed: () {  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lead(),
                      ),
                    );},style: ElevatedButton.styleFrom(
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
            SingleChildScrollView(
              
              
              child: ListView(
                 shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                     child: Align(
                       alignment: Alignment.center,
                       child: Container(
                         height: 70,
                           decoration: BoxDecoration(
                             color: Color.fromARGB(255, 234, 242, 248),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           width: 280,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment:
                                     MainAxisAlignment.start,
                                 children: [
                                
                                   Icon(Icons.flag_circle_rounded,
                                   size: 40,
                                       color: Colors.green),
                                         Column(
                                           children: [
                                             Text(
                                 'Redit',
                                 style: TextStyle(
                                   color:Colors.grey,
                                 ),
                               ),
                               Text('Designer',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                 ),),
                                           ],
                                         ),
                                   
                                   
                                  
                                 ],
                               ),
                              
                               Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SizedBox(
                       height: 20,
                     ),
                     Text('\$400/M',
                      style: TextStyle(
                             color: Colors.grey,
                           ),),
                     SizedBox(
                       width: 20,
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.location_pin,
                           color: Colors.deepOrange,
                         ),
                         Text(
                           'Jos,Plateau',
                           style: TextStyle(
                             color: Colors.grey,
                           ),
                         )
                       ],
                     ),
                   ],
                 ),
                               
                              
                             ],
                           )),
                     ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                     child: Align(
                       alignment: Alignment.center,
                       child: Container(
                         height: 70,
                           decoration: BoxDecoration(
                             color: Color.fromARGB(255, 234, 242, 248),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           width: 280,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment:
                                     MainAxisAlignment.start,
                                 children: [
                                
                                   Icon(Icons.flag_circle_rounded,
                                   size: 40,
                                       color: Colors.green),
                                         Column(
                                           children: [
                                             Text(
                                 'Redit',
                                 style: TextStyle(
                                   color:Colors.grey,
                                 ),
                               ),
                               Text('Content Writer',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                 ),),
                                           ],
                                         ),
                                   
                                   
                                  
                                 ],
                               ),
                              
                               Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SizedBox(
                       height: 20,
                     ),
                     Text('\$600/M',
                      style: TextStyle(
                             color: Colors.grey,
                           ),),
                     SizedBox(
                       width: 20,
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.location_pin,
                           color: Colors.deepOrange,
                         ),
                         Text(
                           'Jos,Plateau',
                           style: TextStyle(
                             color: Colors.grey,
                           ),
                         )
                       ],
                     ),
                   ],
                 ),
                               
                              
                             ],
                           )),
                     ),
                   ),
                    Padding(
                     padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                     child: Align(
                       alignment: Alignment.center,
                       child: Container(
                         height: 70,
                           decoration: BoxDecoration(
                             color: Color.fromARGB(255, 234, 242, 248),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           width: 280,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment:
                                     MainAxisAlignment.start,
                                 children: [
                                
                                   Icon(Icons.music_video_outlined,
                                   size: 30,
                                       color: Colors.pink),
                                         Column(
                                           children: [
                                             Text(
                                 'Procreate',
                                 style: TextStyle(
                                   color:Colors.grey,
                                 ),
                               ),
                               Text('Music',
                                style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                 ),),
                                           ],
                                         ),
                                   
                                   
                                  
                                 ],
                               ),
                              
                               Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     SizedBox(
                       height: 20,
                     ),
                     Text('\$600/M',
                      style: TextStyle(
                             color: Colors.grey,
                           ),),
                     SizedBox(
                       width: 20,
                     ),
                     Row(
                       children: [
                         Icon(
                           Icons.location_pin,
                           color: Colors.deepOrange,
                         ),
                         Text(
                           'Jos,Plateau',
                           style: TextStyle(
                             color: Colors.grey,
                           ),
                         )
                       ],
                     ),
                   ],
                 ),
                               
                              
                             ],
                           )),
                     ),
                   ),
                   
                 ],
               ),
                     ),
            
      ]),
  



          

  
    
     );
  }
}
