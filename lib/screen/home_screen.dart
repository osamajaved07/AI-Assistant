// ignore_for_file: prefer_const_constructors

import 'package:ai_assistant/apis/apis.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/pref.dart';
import 'package:ai_assistant/model/home_type.dart';
import 'package:ai_assistant/widget/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    APIs.getAnswer("Hii");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          appName,
          style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.w600  ),
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.transparent,
        actions: [
          
          IconButton(
            padding: EdgeInsets.only(right: 10),
              onPressed: () {},
              icon: Icon(
                Icons.brightness_4_rounded,
                color: Colors.blue,
                size: 26,
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: mq.width * .04, vertical: mq.height * .015
        ),
        children: HomeType.values.map((e) => HomeCard(homeType: e)).toList(),
      ),
    );
  }
}
