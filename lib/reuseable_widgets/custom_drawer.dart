import 'dart:developer';

import 'package:delta_app/constant/paddings.dart';
import 'package:delta_app/constant/routs_strings/routs_strings.dart';
import 'package:delta_app/constant/styles/app_textstyles.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://ditllcae.com/wp-content/uploads/2022/12/Ditlogo.png",
                  height: 50,
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'All',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Laptop',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pushNamed(context, laptopproductsscreen);

              log("laptop screen rout");
              // Navigator.pop(context); // Close the drawer
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Desktop Computers',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pushNamed(context, desktopcomputerhome);

              log("desktop computer home screen rout");
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Desktop Moniters',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pushNamed(context, desktopmoniterhome);

              log("desktop moniter home screen rout");
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Customer Service',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pushNamed(context, customerservicescreen);
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Warranty',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Visit Our Store',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'About',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pushNamed(context, aboutscreen);

              log("about screen rout");
            },
          ),
          const Padding(
            padding: padA1,
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Contact',
              style: hMediumX.copyWith(fontSize: 14),
            ),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
