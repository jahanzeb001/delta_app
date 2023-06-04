import 'package:delta_app/constant/fonts_strings.dart';
import 'package:delta_app/constant/paddings.dart';
import 'package:delta_app/constant/spacing.dart';
import 'package:delta_app/constant/styles/app_textstyles.dart';
import 'package:delta_app/constant/styles/colors.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appthem,
        title: const Text("About"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://ditllcae.com/wp-content/uploads/2023/01/photo-1519389950473-47ba0277781c-1.png",
            ),
            vSpac12,
            Padding(
              padding: padA1,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Us",
                        style: hMediumX,
                      ),
                      vSpac10,
                      Text(
                        "At DIT, we collaborate with \ndiverse communities and s\ntrive ahead to develop both\n our environment and com\nmunity. We aim at rebalan\ncing our future resources. \nWe are a value-driven org\nanization and thrive to ma\nke significant contributions\n towards development goals \nand bring a positive impact o\nn the lives of people through\n sustainable long-term programs",
                        style: hMediumX.copyWith(
                            fontSize: 12, fontFamily: nexalight),
                      ),
                    ],
                  ),
                  hSpac20,
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Image.network(
                      'https://ditllcae.com/wp-content/uploads/2022/12/admin-ajax.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            vSpac12,
            Padding(
              padding: padA1,
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Image.network(
                      'https://ditllcae.com/wp-content/uploads/2023/01/Untitled-design-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  hSpac20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mission:",
                        style: hMediumX,
                      ),
                      vSpac10,
                      Text(
                        "At DIT, we collaborate with diverse \ncommunities and strive ahead to d\nevelop both our environment and c\nommunity. We aim at rebalancing o\nur future resources. We are a value-\ndriven organization and thrive to make\n significant contributions towards dev\nelopment goals and  bring a positive \nimpact on the lives of people through \nsustainable long-term programs",
                        style: hMediumX.copyWith(
                            fontSize: 12, fontFamily: nexalight),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            vSpac12,
            Padding(
              padding: padA1,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Our Vision",
                        style: hMediumX,
                      ),
                      vSpac10,
                      Text(
                        "At DIT, we collaborate with \ndiverse communities and s\ntrive ahead to develop both\n our environment and com\nmunity. We aim at rebalan\ncing our future resources. \nWe are a value-driven org\nanization and thrive to ma\nke significant contributions\n towards development goals \nand bring a positive impact o\nn the lives of people through\n sustainable long-term programs",
                        style: hMediumX.copyWith(
                            fontSize: 12, fontFamily: nexalight),
                      ),
                    ],
                  ),
                  hSpac20,
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Image.network(
                      'https://ditllcae.com/wp-content/uploads/2023/01/who-we-are-top-image_1360x765.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            vSpac12,
            Padding(
              padding: padA1,
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Image.network(
                      'https://ditllcae.com/wp-content/uploads/2022/12/image-008-466x500-1-280x300-2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  hSpac20,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "What do we do?",
                        style: hMediumX,
                      ),
                      vSpac10,
                      Text(
                        "At DIT, we collaborate with diverse \ncommunities and strive ahead to d\nevelop both our environment and c\nommunity. We aim at rebalancing o\nur future resources. We are a value-\ndriven organization and thrive to make\n significant contributions towards dev\nelopment goals and  bring a positive \nimpact on the lives of people through \nsustainable long-term programs",
                        style: hMediumX.copyWith(
                            fontSize: 12, fontFamily: nexalight),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
