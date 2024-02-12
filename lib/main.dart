import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Layout Demo",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                child: Image.asset("assets/images/layout_image.jpg"),
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  // Firspt Child
                  Padding(
                    padding: EdgeInsets.only(left: 440.0, top: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fast National University",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Karachi, Pakistan',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 200),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 45,
                  ),
                  Text(
                    '41',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.call, size: 35, color: Colors.purple),
                        Text(
                          "CALL",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.directions, size: 35, color: Colors.purple),
                        Text(
                          "ROUTE",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.share, size: 35, color: Colors.purple),
                        Text(
                          "SHARE",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 450.0, top: 40.0),
                  child: Row(
                    children: [
                      SizedBox(height: 20.0),
                      Text(
                        "Founded as a Federally Chartered University in July 2000,\nthe National University of Computer and Emerging Sciences is a premier\nUniversity of Pakistan, renowned for quality and impact of\nits students in the development of local software and other\nindustries. The university has five modern campuses at Karachi, \nLahore, Islamabad, Peshawar and Chiniot-Faisalabad. \nThese campuses provide world class educational environment \nand recreational facilities to about over 11,000 students,\naround one quarter are female and over 500 skilled faculty\nmembers",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
