import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'chalengeEkap.dart';
import 'dart:math';

class Challenge extends StatefulWidget {
  @override
  _ChallengeState createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  String th1TeamName = "";
  String th2TeamName = "";
  var orders11 = {'تاكل بيض': 5,'تشرب لبن': 3, "تلعب ضغط" : 7, "تشرب ميه": 2};
  String theOrder = "";
  bool namesCheck = false;
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
              leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.arrow_back,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
            backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 9.h,
                    child: Container(
                      width: 60.w,
                      height: 50.h,
                      color: null,
                      child: const Image(
                        image: AssetImage("assets/Path 55.png"),
                      ),),
                  ),
                  Positioned(
                    right: 60.w,
                    top: 8.h,
                    child: Image(
                      width: 50.w,
                      height: 50.w,
                      image: const AssetImage("assets/Layer 103.png"),),
                  ),
                  Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 20.w,),
                              Text("إدخال إسم الفريق", style: TextStyle(
                                fontSize: 6.w,
                                fontFamily: 'theFont',
                                color: const Color.fromRGBO(3, 141, 151, 1),
                              ),),
                            ],
                          ),
                          SizedBox(height: 8.h,),
                          Row(
                            children: [
                              SizedBox(width: 20.w,),
                              Container(
                                width: 60.w,
                                height: 6.5.h,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(245, 153, 45, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: TextFormField(
                                  onChanged: (val){
                                    th1TeamName = val;
                                  },
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  style: TextStyle(
                                    fontFamily: 'theFont',
                                    fontSize: 6.5.w,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: const Color.fromRGBO(217, 129, 35, 1), width: 1.w),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: const Color.fromRGBO(217, 129, 35, 1), width: 1.w),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    contentPadding: EdgeInsets.all(3.w),
                                    isDense: true,
                                    hintText:"الفريق الاول",
                                    fillColor: const Color.fromRGBO(245, 153, 45, 1),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    filled: true,
                                    hintStyle: TextStyle(
                                      fontFamily: 'theFont',
                                      color: Colors.white,
                                      fontSize: 7.w,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h,),
                          Row(
                            children: [
                              SizedBox(width: 20.w,),
                              Container(
                                width: 60.w,
                                height: 6.5.h,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(245, 153, 45, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                ),
                                child: TextFormField(
                                  onChanged: (val){
                                    th2TeamName = val;
                                  },
                                  textAlign: TextAlign.center,
                                  enabled: true,
                                  style: TextStyle(
                                    fontFamily: 'theFont',
                                    fontSize: 6.5.w,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: const Color.fromRGBO(217, 129, 35, 1), width: 1.w),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: const Color.fromRGBO(217, 129, 35, 1), width: 1.w),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    contentPadding: EdgeInsets.all(3.w),
                                    isDense: true,
                                    hintText:"الفريق الثاني",
                                    fillColor: const Color.fromRGBO(245, 153, 45, 1),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    filled: true,
                                    hintStyle: TextStyle(
                                      fontFamily: 'theFont',
                                      color: Colors.white,
                                      fontSize: 7.w,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7.h,),
                          GestureDetector(
                            onTap: (){
                              if(th1TeamName == "" || th2TeamName == ""){
                                setState(() {
                                  namesCheck = true;
                                });
                              }
                              else{
                                theOrder = getRandomOrder(orders11);
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => challengeEkap(th1TeamName,th2TeamName, theOrder, orders11)),
                                );}
                            },
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/Group 84.png',
                                  width: 55.w,
                                  height: 10.h,
                                ),
                                Positioned(
                                  top: 2.5.h,
                                  left: 22.w,
                                  child: Text("إبدأ",
                                    style: TextStyle(
                                      fontFamily: 'theFont',
                                      fontSize: 6.w,
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.h),
                          Visibility(
                       visible: namesCheck,
                       child: Text("برجاء ادخال اسماء الفرق",style: TextStyle(
                         color: Colors.red,
                         fontSize: 5.w,
                         fontFamily: "thefont"
                       ),),
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
  String getRandomOrder(var b){
    List keys = orders11.keys.toList();
    Random RanString;
    RanString = Random();
    var element = keys[RanString.nextInt(keys.length)];
    return element;
  }
}
