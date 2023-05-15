import 'package:flutter/material.dart';
import 'package:mujahid/ModelClass/kk.dart';

import '../Respositories/testing23.dart';

class NameApis extends StatefulWidget {
  const NameApis({super.key});

  @override
  State<NameApis> createState() => _NameApisState();
}

class _NameApisState extends State<NameApis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 700,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: FutureBuilder(
                future: getNames(),
                builder: (context, AsyncSnapshot<List<Kk>> snapshot) {
                  if (!snapshot.hasData) {
                    return Text('Loading....');
                  } else {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                height: 150,
                                width: MediaQuery.of(context).size.width * 0.98,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("ID : "),
                                        Text(
                                          snapshot.data![index].id.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("PostId : "),
                                        Text(
                                          snapshot.data![index].postId
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Names : "),
                                        Text(
                                          snapshot.data![index].name.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Email : "),
                                        Text(
                                          snapshot.data![index].email
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: userlist.length,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
