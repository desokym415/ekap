import 'package:ekap/stateful/callenge.dart';
import 'package:ekap/stateful/personal.dart';
import 'package:ekap/stateful/support.dart';
import 'package:ekap/stateful/twoOrmore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChoosePunish extends StatefulWidget {
  @override
  _ChoosePunishState createState() => _ChoosePunishState();
}

class _ChoosePunishState extends State<ChoosePunish> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Stack(
                  children: [
                    Positioned(
                      top: 9.h,
                      left: 37.w,
                      child: Container(
                       width: 85.w,
                       height: 28.h,
                        color: null,
                        child: const Image(
                          image: AssetImage("assets/Group 32.png"),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h,),
                        Row(
                            children: [
                              SizedBox(width: 1.w,),
                              Image(image: const AssetImage("assets/Group 94.png"),
                              width: 15.w,
                              height: 15.w,),
                              SizedBox(width: 8.w,),
                              Text("عـــــقــــاب",
                              style: TextStyle(
                                fontFamily: 'theFont1',
                                fontSize: 15.w,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromRGBO(3, 141, 151, 1),
                              ),),
                              SizedBox(width: 10.w,),
                              Image(image: AssetImage("assets/Group 95.png"),
                                width: 15.w,
                                height: 15.h,),
                            ],
                          ),
                        SizedBox(height: 2.h ,),
                        Row(
                          children: [
                            SizedBox(width: 15.w,),
                            Container(
                                color: null,
                                width: 70.w,
                                height: 10.h,
                                child: Stack(
                                  children: [
                                    Image(
                                        width: 70.w,
                                        height: 10.h,
                                        image: const AssetImage("assets/Group 84.png"),
                                    ),
                                    Positioned(
                                      top: 2.h,
                                      left: 16.w,
                                      child: Text("إختر العقاب",
                                      style: TextStyle(
                                        fontFamily: 'theFont',
                                        color: Colors.white,
                                        fontSize: 7.w,
                                      ),),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(height: 0.h,),
                        Container(
                          color: null,
                          width: 85.w,
                          height: 57.h,
                          child: Stack(
                            children: [
                              Center(child: Image(
                                  width: 80.w,
                                  height: 53.h,
                                  image: const AssetImage("assets/Group 988.png"))),
                              Center(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 8.h,),
                                        Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                          ],
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment(-.85,-.3), // 10% of the width, so there are ten blinds.
                                            colors: [
                                              Color.fromRGBO(131, 232, 232, 1),
                                              Color.fromRGBO(149, 236, 236, 1),
                                            ],
                                            tileMode: TileMode.repeated,),
                                          color: Colors.deepPurple.shade300,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50.0),
                                              ),
                                            ),
                                            minimumSize: MaterialStateProperty.all(Size(70.w, 7.h)),
                                            backgroundColor:
                                            MaterialStateProperty.all(Colors.transparent),
                                            shadowColor:
                                            MaterialStateProperty.all(Colors.transparent),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context,
                                              MaterialPageRoute(builder: (context) => Personal()),
                                            );
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 2.5.w,
                                              bottom: 2.5.w,
                                            ),
                                            child: Text(
                                              "شخصي",
                                              style: TextStyle(
                                                fontFamily: 'theFont',
                                                fontSize: 6.w,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            width: 65.w,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                              ],
                                              gradient: const LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment(-.85,-.3), // 10% of the width, so there are ten blinds.
                                                colors: [
                                                  Color.fromRGBO(131, 232, 232, 1),
                                                  Color.fromRGBO(149, 236, 236, 1),
                                                ],
                                                tileMode: TileMode.repeated,),
                                              color: Colors.deepPurple.shade300,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                  ),
                                                ),
                                                minimumSize: MaterialStateProperty.all(Size(70.w, 7.h)),
                                                backgroundColor:
                                                MaterialStateProperty.all(Colors.transparent),
                                                shadowColor:
                                                MaterialStateProperty.all(Colors.transparent),
                                              ),
                                              onPressed: () {
                                                Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => twoOrmore()),
                                                );
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 2.5.w,
                                                  bottom: 2.5.w,
                                                ),
                                                child: Text(
                                                  "اثنان او اكثر",
                                                  style: TextStyle(
                                                    fontFamily: 'theFont',
                                                    fontSize: 6.w,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            width: 65.w,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                              ],
                                              gradient: const LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment(-.85,-.3), // 10% of the width, so there are ten blinds.
                                                colors: [
                                                  Color.fromRGBO(131, 232, 232, 1),
                                                  Color.fromRGBO(149, 236, 236, 1),
                                                ],
                                                tileMode: TileMode.repeated,),
                                              color: Colors.deepPurple.shade300,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                  ),
                                                ),
                                                minimumSize: MaterialStateProperty.all(Size(70.w, 7.h)),
                                                backgroundColor:
                                                MaterialStateProperty.all(Colors.transparent),
                                                shadowColor:
                                                MaterialStateProperty.all(Colors.transparent),
                                              ),
                                              onPressed: () {
                                                Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => Challenge()),
                                                );
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 2.5.w,
                                                  bottom: 2.5.w,
                                                ),
                                                child: Text(
                                                  "تحدي",
                                                  style: TextStyle(
                                                    fontFamily: 'theFont',
                                                    fontSize: 6.w,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            width: 65.w,
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                              ],
                                              gradient: const LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment(-.85,-.3), // 10% of the width, so there are ten blinds.
                                                colors: [
                                                  Color.fromRGBO(131, 232, 232, 1),
                                                  Color.fromRGBO(149, 236, 236, 1),
                                                ],
                                                tileMode: TileMode.repeated,),
                                              color: Colors.deepPurple.shade300,
                                              borderRadius: BorderRadius.circular(50),
                                            ),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50.0),
                                                  ),
                                                ),
                                                minimumSize: MaterialStateProperty.all(Size(70.w, 7.h)),
                                                backgroundColor:
                                                MaterialStateProperty.all(Colors.transparent),
                                                shadowColor:
                                                MaterialStateProperty.all(Colors.transparent),
                                              ),
                                              onPressed: () {
                                                Navigator.push(context,
                                                  MaterialPageRoute(builder: (context) => Support()),
                                                );
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 2.5.w,
                                                  bottom: 2.5.w,
                                                ),
                                                child: Text(
                                                  "دعم",
                                                  style: TextStyle(
                                                    fontFamily: 'theFont',
                                                    fontSize: 6.w,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              Positioned(
                                right: 55.5.w,
                                bottom: 42.5.h,
                                child: Image(
                                  width: 50.w,
                                  height: 50.w,
                                  image: const AssetImage("assets/Layer 103.png"),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ),
          );
      },
    );
  }
}

