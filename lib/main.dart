import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.7),
                          Colors.black.withOpacity(.2)
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'What you would like to find?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(40),
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.orange,
                              ),
                              border: InputBorder.none,
                              hintText: 'Search for cities, pleace ...',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Destination',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem(
                                image: 'assets/images/greece.jpg',
                                title: 'Greece'),
                            makeItem(
                                image: 'assets/images/canada.jpg',
                                title: 'Canada'),
                            makeItem(
                                image: 'assets/images/espana.jpg',
                                title: 'España'),
                            makeItem(
                                image: 'assets/images/italy.jpg',
                                title: 'Italy'),
                          ],
                        ),
                      ),

                      SizedBox(height: 20.0),

                      Container(
                        height: 60,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            AspectRatio(
                              aspectRatio: 1.1 / .8,
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: Icon(Icons.hotel, color: Colors.blue),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 1.1 / .8,
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: Icon(Icons.flight, color: Colors.orange),
                              ),
                            ),
                            AspectRatio(
                              aspectRatio: 1.1 / .8,
                              child: Container(
                                margin: EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: Icon(Icons.event, color: Colors.green),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20.0),

                      Text(
                        'Best Hotels',
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(height: 20.0),

                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            makeItem(
                                image: 'assets/images/hotel-1.jpg',
                                title: 'Greece'),
                            makeItem(
                                image: 'assets/images/hotel-2.jpg',
                                title: 'Canada'),
                            makeItem(
                                image: 'assets/images/hotel-3.jpg',
                                title: 'España'),
                            makeItem(
                                image: 'assets/images/hotel-4.jpg',
                                title: 'Italy'),
                          ],
                        ),
                      ),

                      SizedBox(height: 25.0),
    
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.2)
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
