import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/transactions.dart';

class NavigateDrawer extends StatelessWidget {
  const NavigateDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFC1B2789),
              ),
              child: Container()),
          ListTile(
            title: const Text(
              'Contacts',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text(
              'Transactions',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransactionsPage(
                            transreason: [
                              'Reason 1',
                              'Reason 2',
                              'Reason 3',
                              'Reason 4'
                            ],
                            transdate: [
                              '22/05/2024',
                              '21/05/2024',
                              '21/05/2024',
                              '20/05/2024'
                            ],
                            transamount: ['5000', '1000', '5600', '1500'],
                            transgivorget: [
                              'You give',
                              'You get',
                              'You get',
                              'You give'
                            ],
                            transclr: [
                              Color(0xFCED4343),
                              Color(0xFC108114),
                              Color(0xFC108114),
                              Color(0xFCED4343),
                            ],
                          )));
            },
          ),
          ListTile(
            title: const Text('Logout', style: TextStyle(fontSize: 14)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
