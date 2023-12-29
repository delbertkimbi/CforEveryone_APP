import 'package:c_foreverybody/components/major/custom/appbar.dart';
import 'package:c_foreverybody/components/major/custom/drawer.dart';
import 'package:c_foreverybody/const/apptext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(
        userName: "Delbert Kimbi",
        userEmail: "delber@gmail.com",
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/program.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: [
                        const Text("Code broSS's Tech"),
                        Container(
                          margin: const EdgeInsets.fromLTRB(2, 15, 2, 20),
                          padding: const EdgeInsets.all(5),
                          height: 150,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.blue,
                              width: 5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              AppText().home1,
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
