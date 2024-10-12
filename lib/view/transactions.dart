import 'package:flutter/material.dart';



class TransactionsPage extends StatelessWidget {
  const TransactionsPage({
    super.key,
    required this.transreason,
    required this.transdate,
    required this.transamount,
    required this.transgivorget,
    required this.transclr,
  });
  final List<String> transreason;
  final List<String> transdate;
  final List<String> transamount;
  final List<String> transgivorget;
  final List<Color> transclr;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromRGBO(221, 230, 253, 1),
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: const Color(0xFC1B2789),
          title: const Text(
            'Transactions',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
          )),
      body: ListView.builder(
        itemCount: transgivorget.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.fromLTRB(15, 20, 15, 10),
            padding: const EdgeInsets.all(10),
            height: 74,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.left,
                      transreason[index],
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      transdate[index],
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.right,
                      transamount[index],
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: transclr[index]),
                    ),
                    Text(
                      transgivorget[index],
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          height: 2,
                          color: transclr[index]),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
