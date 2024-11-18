import 'package:flutter/material.dart';


class HomeScreenSTL extends StatelessWidget {
  const HomeScreenSTL({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenSTF(),
    );
  }
}
///stf
class HomeScreenSTF extends StatefulWidget {
  const HomeScreenSTF({Key? key}) : super(key: key);

  @override
  State<HomeScreenSTF> createState() => _HomeScreenSTFState();
}

class _HomeScreenSTFState extends State<HomeScreenSTF> {

  @override
  Widget build(BuildContext context) {
   var  width = MediaQuery.of(context).size.width;
   var  height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(),
    );
  }
}

