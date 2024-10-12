import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/add_contact.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/contact_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      home: MyHomePage(title: 'My App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> contactName = [
    'Contact 1',
    'Contact 2',
    'Contact 3',
    'Contact 4',
    'Contact 5',
    'Contact 6'
  ];
  static List<String> contactNumber = [
    '+91 9074270235',
    '+91 9074270235',
    '+91 9074270235',
    '+91 9074270235',
    '+91 9074270235',
    '+91 9074270235'
  ];
  static List<String> givorgets = [
    'You will give',
    'You will get',
    'You will give',
    'You will get',
    'You will give',
    'You will get'
  ];
  static List<Color> textColors = [
    const Color(0xFCED4343),
    const Color(0xFC108114),
    const Color(0xFCED4343),
    const Color(0xFC108114),
    const Color(0xFCED4343),
    const Color(0xFC108114)
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      key: _key,
      drawer: const NavigateDrawer(),
      backgroundColor: const Color.fromRGBO(221, 230, 253, 1),
      appBar: AppBar(
        backgroundColor: const Color(0xFC1B2789),
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.list_rounded),
          color: Colors.white,
          iconSize: 32,
        ),
        title: Text(
          widget.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFC1B2789),
                ),
                height: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      height: 90,
                      width: width - 40,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.only(left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(children: [
                                TextSpan(
                                  text: 'You will get: ',
                                  style: TextStyle(
                                      color: Color(0xFC108114),
                                      height: 3,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: '10000',
                                  style: TextStyle(
                                      color: Color(0xFC108114),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                TextSpan(
                                  text: '\nYou will give: ',
                                  style: TextStyle(
                                      color: Color(0xFCED4343),
                                      height: 2.5,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: '10000',
                                  style: TextStyle(
                                      color: Color(0xFCED4343),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ])),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xFC21a2ea),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                // margin: const EdgeInsets.only(right: 20),
                                width: (width - 40) / 2,
                                height: 90,
                                padding: (const EdgeInsets.only(
                                    left: 20, right: 20, top: 15)),
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: const TextSpan(children: [
                                    TextSpan(
                                      text: 'Balance',
                                      style: TextStyle(
                                          color: Colors.white,
                                          height: 1.5,
                                          fontSize: 16),
                                    ),
                                    TextSpan(
                                      text: '\n10000',
                                      style: TextStyle(
                                          color: Colors.white,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ]),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: ContactInfo(
                contactname: contactName,
                contactno: contactNumber,
                givorget: givorgets,
                txtclr: textColors,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50.0,
        width: 140.0,
        decoration: BoxDecoration(
            color: const Color(0xFF03136D),
            borderRadius: BorderRadius.circular(4)),
        child: const AddContact(),
      ),
    );
  }
}
