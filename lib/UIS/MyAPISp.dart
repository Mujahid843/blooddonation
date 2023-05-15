import 'package:flutter/material.dart';
import 'package:mujahid/ModelClass/kk.dart';

import '../Respositories/testing23.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../provider/provider2.dart';

class NameApisp extends StatefulWidget {
  const NameApisp({super.key});

  @override
  State<NameApisp> createState() => _NameApispState();
}

class _NameApispState extends State<NameApisp> {
  @override
  void initState() {
    super.initState();
    Provider.of<Providernameapis>(context, listen: false).getSinglePostData();
    // postModel.getPostData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // padding: EdgeInsets.all(20),
        child: Consumer<Providernameapis>(builder: (context, pro, child) {
          return Center(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 500,
                  width: 600,
                  color: Colors.grey,
                  child: ListView.builder(
                      itemCount: pro.listdata.length,
                      itemBuilder: (context, int index) {
                        Kk? data = pro.listdata[index];
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 500,
                            height: 100,
                            color: Colors.white,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "ID : ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("${data!.id}"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Name : ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("${data.name}"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "POST ID : ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("${data.postId}"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Email: ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("${data.email}"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
