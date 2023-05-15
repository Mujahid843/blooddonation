import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mujahid/Respositories/testinggrepo.dart';

class Myclass extends StatefulWidget {
  const Myclass({super.key});

  @override
  State<Myclass> createState() => _MyclassState();
}

class _MyclassState extends State<Myclass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () async {
          await gettestingdata();
        },
        child: Text("Buttontest"),
      ),
    );
  }
}
