import 'package:delta_app/constant/routs_strings/routs_strings.dart';
import 'package:delta_app/screens/about/view/about_screen.dart';
import 'package:delta_app/screens/customer_service/customer_service.dart';
import 'package:delta_app/screens/desktop_computer/view/desktop_computer_home.dart';
import 'package:delta_app/screens/desktop_moniter/view/desktop_moniter_home.dart';
import 'package:delta_app/screens/home/view/home.dart';
import 'package:delta_app/screens/laptops/views/laptop_products.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case homescreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      case laptopproductsscreen:
        return MaterialPageRoute(builder: (context) => const LaptopProducts());
       Map<String,dynamic> arguments=setting.arguments as Map<String,dynamic>;
      case customerservicescreen:
        return MaterialPageRoute(builder: (context) => const CustomerService());

      case desktopcomputerhome:
        return MaterialPageRoute(
            builder: (context) => const DesktopComputerHome());

      case desktopmoniterhome:
        return MaterialPageRoute(
            builder: (context) => const DesktopMoniterHome());

      case aboutscreen:
        return MaterialPageRoute(builder: (context) => const AboutScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text(
                      "No Route Defined",
                      //  style: noRouteDefinedTextStyle,
                    ),
                  ),
                ));
    }
  }
}
