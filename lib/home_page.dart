import 'package:flutter/material.dart';
import 'package:medical_app_ui/widgets/title_bar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.width / 6,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Wellcome Back',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Govind',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 28,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleBar(),
          ],
        ),
      ),
    );
  }
}
