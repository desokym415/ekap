import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Support extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
            ),
            body: SingleChildScrollView(
              child: Container(
                height: 100.h,
                width: 100.w,
                color: null,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 68.h,
                      right: 42.w,
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
                      bottom: 84.h,
                      child: Row(
                        children: [
                          SizedBox(width: 14.w,),
                          Text("الدعم", style: TextStyle(
                            fontFamily: 'theFont',
                            fontSize: 10.w,
                            color: const Color.fromRGBO(3, 141, 151, 1),
                          ),),
                          SizedBox(width: 15.w),
                          Image(
                              height: 20.h,
                              width: 30.w,
                              image: AssetImage("assets/Group 14.png")),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 10.5.h,
                      left: 10.w,
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromRGBO(219, 232, 255, 1),
                                  border: Border.all(color: const Color.fromRGBO(196, 205, 223, 1),
                                      width: 5)
                              ),
                              width: 80.w,
                              height: 50.h,
                              child: Column(
                                children: [
                                  SizedBox(height: 12.h,),
                                  Container(
                                    height: 30.h,
                                    width: 60.w,
                                    child: Center(
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        cursorColor: Colors.grey,
                                        maxLength: 300,
                                        maxLines: 15,
                                        style: TextStyle(
                                          fontSize: 6.w,
                                          fontFamily: 'theFont',
                                        ),
                                        decoration: InputDecoration(
                                          hintText: "ارسل رسالتك",
                                          hintStyle: TextStyle(
                                            fontSize: 5.w,
                                            fontFamily: 'theFont',
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.0),
                                      color: const Color.fromRGBO(219, 232, 255, 1),
                                      border: Border.all(
                                        color: const Color.fromRGBO(196, 205, 223, 1),
                                        width: 5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5.h,),
                          GestureDetector(
                            onTap: (){
                            },
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/Group 84.png',
                                  width: 65.w,
                                  height: 10.h,
                                ),
                                Positioned(
                                  top: 2.5.h,
                                  left: 25.w,
                                  child: Text("ارسال",
                                    style: TextStyle(
                                      fontFamily: 'theFont',
                                      fontSize: 6.w,
                                      color: Colors.white,
                                    ),),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
      },
    );
  }
}
