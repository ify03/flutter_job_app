import 'package:flutter/material.dart';
import 'package:myflutter/pages/about.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [ 
            Padding(
              padding: EdgeInsets.only(top: 50, bottom: 50, left: 5),
              child: Icon(
                Icons.dashboard_rounded,
                size: 38,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    
      body: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello, Ife!',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Courier',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Find Your\n Creative Job!!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(width: 10),
            const CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 234, 242, 248),
              child: Icon(
                Icons.person,
                color: Color.fromARGB(255, 250, 120, 80),
                size: 44,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
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
                  child: TextField(
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    );
                  },
                  child: const Icon(Icons.dashboard_customize_rounded),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Popular Jobs',
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            //  mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 242, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 200,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(Icons.flag_circle_rounded,
                                        color: Colors.green),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.label_important_outline_rounded,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Content Writer',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('\$1200'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text('San Francisco USA')
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 242, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 200,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(Icons.flag_circle_rounded,
                                      color: Colors.blue),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.label_important_outline_rounded,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Product Manager',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('\$200'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Lekki Lagos')
                                ],
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 242, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 200,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(Icons.flag_circle_rounded,
                                      color: Colors.brown),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.label_important_outline_rounded,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Designer',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('\$120'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('England')
                                ],
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 242, 248),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 200,
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(Icons.flag_circle_rounded,
                                      color: Colors.blueGrey),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.label_important_outline_rounded,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Community Manager',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('\$1700'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text('Mexico')
                                ],
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 234, 242, 248),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 200,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.flag_circle_rounded,
                                    color: Colors.yellow),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.label_important_outline_rounded,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Software Developer',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\$10200'),
                                SizedBox(
                                  width: 20,
                                ),
                                Text('Jos, Nigeria')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    // SizedBox(height: 10),
    //     Align(
    //       alignment: Alignment.bottomLeft,
    //       child: Text(
    //         'Recents Jobs',
    //         textAlign: TextAlign.start,
    //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    //       ),
    //     ),
//          Container(
//             padding: EdgeInsets.only(top: 10.0),
            
//             child: Column(
//             //  mainAxisSize: MainAxisSize.max,
//               children: [
//                 ListView(
//                     scrollDirection: Axis.vertical,
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, bottom: 10),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                             height: 70,
//                               decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 234, 242, 248),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               width: 280,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Icon(Icons.flag_circle_rounded,
//                                       size: 40,
//                                           color: Colors.green),
//                                             Column(
//                                               children: [
//                                                 Text(
//                                     'Redit',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text('Content Writer')
//                                               ],
//                                             ),
                                      
                                      
//                                      Align(
//                                       alignment: Alignment.centerRight,
//                                       child: Text('3days ago'))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
                                
                                  
                                 
//                                 ],
//                               )),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, bottom: 10),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                             height: 70,
//                               decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 234, 242, 248),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               width: 280,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Icon(Icons.flag_circle_rounded,
//                                       size: 40,
//                                           color: Colors.green),
//                                             Column(
//                                               children: [
//                                                 Text(
//                                     'Redit',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text('Content Writer')
//                                               ],
//                                             ),
                                      
                                      
//                                      Align(
//                                       alignment: Alignment.centerRight,
//                                       child: Text('3days ago'))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
                                
                                  
                                 
//                                 ],
//                               )),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10.0, bottom: 10),
//                         child: Align(
//                           alignment: Alignment.center,
//                           child: Container(
//                             height: 70,
//                               decoration: BoxDecoration(
//                                 color: Color.fromARGB(255, 234, 242, 248),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               width: 280,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       SizedBox(
//                                         height: 20,
//                                       ),
//                                       Icon(Icons.flag_circle_rounded,
//                                       size: 40,
//                                           color: Colors.green),
//                                             Column(
//                                               children: [
//                                                 Text(
//                                     'Redit',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Text('Content Writer')
//                                               ],
//                                             ),
                                      
                                      
//                                      Align(
//                                       alignment: Alignment.centerRight,
//                                       child: Text('3days ago'))
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 10,
//                                   ),
                                
                                  
                                 
//                                 ],
//                               )),
//                         ),
//                       ),
                     
//                     ],
//                   ),
              
               ],
             ),
          );
     
  }
}
