// ignore_for_file: file_names
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class challengeEkap extends StatefulWidget {
  final String firstTeam;
  final String secondTeam;
  String theOrder;
  var orders11;
  challengeEkap(this.firstTeam, this.secondTeam, this.theOrder, this.orders11);
  @override
  _challengeEkapState createState() => _challengeEkapState();
}

class _challengeEkapState extends State<challengeEkap> {
  bool rightTopVal = false, rightCenterVal = false, rightBottomVal = false;
  bool leftTopVal = false, leftCenterVal = false, leftBottomVal = false;
  int rightButtonCount = 0, leftButtonCount = 0, bigCount = 0, stopCount = 0,leftSum = 0, rightSum = 0;
  String th1Order = "", th2Order = "", th3Order = "";
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
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
            title: Row(
              children: [
                SizedBox(width: 12.w,),
                Text("تحدي",
                  style: TextStyle(
                    fontFamily: 'theFont',
                    fontSize: 10.w,
                    color: const Color.fromRGBO(3, 141, 151, 1),
                  ),),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  top: 2.h,
                  left: 43.w,
                  child: Container(
                    width: 75.w,
                    height: 25.h,
                    color: null,
                    child: const Image(
                      image: AssetImage("assets/Group 32.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 35.h,
                  child: Container(
                    width: 60.w,
                    height: 50.h,
                    color: null,
                    child: const Image(
                      image: AssetImage("assets/Path 55.png"),
                    ),),
                ),
                Column(
                  children: [
                    SizedBox(height: 9.5.h,),
                    Center(
                      child: Container(
                        width: 90.w,
                        height: 60.h,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 4.h,
                              left: 2.5.w,
                              child: Container(
                                width: 85.w,
                                height: 57.h,
                                child: Stack(
                                  children: [
                                    Center(child: Image(
                                        width: 80.w,
                                        height: 70.h,
                                        image: const AssetImage("assets/Group 988.png"))),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 23.h,
                              left: 0.w,
                              right: 0.w,
                              child: Image(
                                      width: 100.w,
                                      height: 58.h,
                                      image: const AssetImage("assets/Group 54.png")),
                            ),
                            Positioned(
                              left: 30.w,
                              top: 5.h,
                              child: Text(widget.theOrder,
                                style: TextStyle(
                                  color: Colors.white
                                    ,fontSize: 6.w,fontFamily: "thefont"),),
                            ),
                            Positioned(
                              right: 45.w,
                              top: 14.h,
                              child: Container(
                                width: .5.w,
                                height: 41.h,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              right: 10.w,
                              top: 50.h,
                              child: Container(
                                width: 68.w,
                                height: .5.w,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                                bottom: 37.6.h,
                                left: 13.w,
                                child: GestureDetector(
                                  onTap: (){
                                    leftButtonCount++;
                                    if(leftButtonCount == 1 && bigCount == 0){
                                      bigCount++;
                                      th1Order =  widget.orders11[widget.theOrder].toString();
                                      leftSum = widget.orders11[widget.theOrder];
                                      setState(() {
                                        leftTopVal = true;
                                        widget.theOrder = getRandomOrder(widget.orders11);
                                      });
                                    }
                                    else if((bigCount == 1)){
                                      if((leftButtonCount == 2 && rightButtonCount != 1) || (leftButtonCount != 2 && rightButtonCount == 1)){
                                        bigCount++;
                                        th2Order =  widget.orders11[widget.theOrder].toString();
                                        leftSum = widget.orders11[widget.theOrder] + leftSum;
                                        setState(() {
                                          leftCenterVal = true;
                                          widget.theOrder = getRandomOrder(widget.orders11);
                                        });
                                      }
                                    }
                                    else if((bigCount == 2  && stopCount < 1)){
                                      stopCount = stopCount +1;
                                      th3Order =  widget.orders11[widget.theOrder].toString();
                                      leftSum = widget.orders11[widget.theOrder] + leftSum;
                                      setState(() {
                                        leftBottomVal = true;
                                        widget.theOrder = getRandomOrder(widget.orders11);
                                      });
                                    }
                                  },
                                  child: Container(
                                    width: 30.w,
                                    height: 15.w,
                                    alignment: Alignment.center,
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Image(
                                              width: 27.w,
                                              height: 70.h,
                                              image: const AssetImage("assets/Group 58.png")),
                                        ),
                                          Center(
                                            child: Text(widget.firstTeam,
                                              style: TextStyle(
                                              fontSize: 5.w,
                                                fontFamily: "thefont",
                                              ),),
                                          ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Positioned(
                                bottom: 37.6.h,
                                left: 46.5.w,
                                child: GestureDetector(
                                  onTap: (){
                                    rightButtonCount++;
                                    if(rightButtonCount == 1 && bigCount == 0){
                                      bigCount++;
                                      th1Order =  widget.orders11[widget.theOrder].toString();
                                      rightSum = widget.orders11[widget.theOrder];
                                      setState(() {
                                        rightTopVal = true;
                                        widget.theOrder = getRandomOrder(widget.orders11);
                                      });
                                    }
                                    else if((bigCount == 1)){
                                      bigCount++;
                                      if((rightButtonCount == 2 && leftButtonCount != 1) || (rightButtonCount != 2 && leftButtonCount == 1)){
                                        th2Order =  widget.orders11[widget.theOrder].toString();
                                        rightSum = widget.orders11[widget.theOrder] + rightSum;
                                        setState(() {
                                          rightCenterVal = true;
                                          widget.theOrder = getRandomOrder(widget.orders11);
                                        });
                                      }
                                    }
                                    else if((bigCount == 2 && stopCount <1)){
                                      stopCount = stopCount + 1;
                                      th3Order =  widget.orders11[widget.theOrder].toString();
                                      rightSum = widget.orders11[widget.theOrder] + rightSum;
                                      setState(() {
                                          rightBottomVal = true;
                                          widget.theOrder = getRandomOrder(widget.orders11);
                                        });
                                    }
                                  },
                                  child: Container(
                                    width: 30.w,
                                    height: 15.w,
                                    alignment: Alignment.center,
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Image(
                                              width: 27.w,
                                              height: 70.h,
                                              image: const AssetImage("assets/Group 58.png")),
                                        ),
                                        Center(
                                          child: Text( widget.secondTeam,
                                              style: TextStyle(
                                                fontSize: 5.w,
                                                fontFamily: "thefont",
                                              ),),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Positioned(
                              top: 50.5.h,
                              left: 25.w,
                              child: Text(leftSum.toString(),style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.5.w,
                              ),),
                            ),
                            Positioned(
                              top: 50.5.h,
                              left: 60.w,
                              child: Text(rightSum.toString(),style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.5.w,
                              ),),
                            ),
                            Visibility(
                              visible: rightTopVal,
                              child: Positioned(
                                top:  26.h,
                                left: 60.w,
                                child: Text(th1Order,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7.5.w,
                                ),),
                              ),
                            ),
                            Visibility(
                              visible: rightCenterVal,
                              child: Positioned(
                                top:  33.h,
                                left: 60.w,
                                child: Text(th2Order,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7.5.w,
                                ),),
                              ),
                            ),
                            Visibility(
                              visible: rightBottomVal,
                              child: Positioned(
                                top:  41.h,
                                left: 60.w,
                                child: Text(th3Order,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7.5.w,
                                ),),
                              ),
                            ),

                            Visibility(
                              visible: leftTopVal,
                              child: Positioned(
                                top:  26.h,
                                left: 25.w,
                                child: Text(th1Order,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7.5.w,
                                ),),
                              ),
                            ),
                            Visibility(
                              visible: leftCenterVal,
                              child: Positioned(
                                top:  33.h,
                                left: 25.w,
                                child: Text(th2Order,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7.5.w,
                                ),),
                              ),
                            ),
                            Visibility(
                              visible: leftBottomVal,
                              child: Positioned(
                                top:  41.h,
                                left: 25.w,
                                child: Text(th3Order,style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 7.5.w,
                                ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Text("اضغط على اسم الفريق الفائز بكل جوله",
                    style: TextStyle(
                      fontSize: 4.w,
                      fontFamily: "thefont",
                      color: Colors.green,
                    ),),
                  ],
                ),
                Positioned(
                  right: 60.w,
                  top: 1.h,
                  child: Image(
                    width: 50.w,
                    height: 50.w,
                    image: const AssetImage("assets/Layer 103.png"),),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
  String getRandomOrder(var b){
    List keys = widget.orders11.keys.toList();
    Random RanString;
    RanString = Random();
    var element = keys[RanString.nextInt(keys.length)];
    return element;
  }
}
