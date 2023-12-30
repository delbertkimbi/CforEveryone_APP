import 'package:c_foreverybody/components/major/custom/appbar.dart';
import 'package:c_foreverybody/components/major/custom/box.dart';
import 'package:c_foreverybody/components/major/custom/drawer.dart';
import 'package:c_foreverybody/const/appcolors.dart';
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
      backgroundColor: Colors.grey[100],
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(
        userName: "Delbert Kimbi",
        userEmail: "delber@gmail.com",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Column(
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
                          BorderRadius.vertical(bottom: Radius.circular(0))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "CodeBROS's Tech",
                                style: TextStyle(
                                  color: AppColors().headertext,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(2, 15, 2, 20),
                                padding: const EdgeInsets.all(0),
                                height: 150,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: AppColors().headertext,
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
          ),
          Expanded(
            child: Text(
              "DashBoard",
              style: TextStyle(
                color: AppColors().headertext,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: GridView.count(
              crossAxisCount: 2,
              children: const [
                Box(
                    maintext: "Number of Bugs Posted",
                    subtext: "5",
                    page: null),
                Box(maintext: "Number Solved", subtext: "5", page: null),
                Box(maintext: "Attempted problems", subtext: "5", page: null),
                Box(maintext: "Explore more", subtext: "5", page: null),
              ],
            ),
          )
        ],
      ),
    );
  }
}
