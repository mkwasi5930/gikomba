// ignore: file_names
import 'package:flutter/material.dart';
import 'package:industry/widgets/Navigation_Drawer.dart';

class Setting extends StatelessWidget {
  static const String routeName = 'Setting';

  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Setting"),
        ),
        drawer: const NavigationDrawer(),
        body: const Center(child: Text("This is Setting page")));
  }
}