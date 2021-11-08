import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';


class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  String dropdownValue = 'عقاب الطعام';
  int showPunish = 0;
  bool hide3kapButton = true, showBackButton = false;
  List<String> eatingList = ["اكل خمس بيضات","اكل قطعة لحم",'شرب كوب من اللبن',"شرب ثلاث اكواب من الماء",];
  List<String> exerciseList = ["لعب عشرة ضغط","لعب ثلاثين عده بطن","لعب خمسه عقله","الذهاب للجيم حالا","الجري في المكان لمدة ثلاث دقائق"];
  List<String> homeList = ["غسل صحون العشاء","كنس المنزل","المساعده في اعداد الطعام","ملي زجاجات المياه","شراء طلبات المنزل غدا"];
  final _random = Random();
  var element1;
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
                  Text("شخصي",
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
                    left: 45.w,
                    top: 70.h,
                    child: Container(
                      width: 50.w,
                      height: 50.w,
                      child: const Image(
                        image: AssetImage("assets/Group 32.png"),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 5.h,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(219, 232, 255, 1),
                            border: Border.all(color: const Color.fromRGBO(196, 205, 223, 1),
                            width: 5)
                          ),
                          width: 80.w,
                          height: 65.h,
                          child: Column(
                            children: [
                              SizedBox(height: 3.h,),
                              Container(
                                height: 15.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  color: const Color.fromRGBO(3, 141, 151, 1),
                                  border: Border.all(
                                    color: const Color.fromRGBO(0, 184, 197, 1),
                                    width: 5,
                                  ),
                                ),
                                child: Center(
                                    child: Stack(
                                      children: [
                                        Visibility(
                                            visible: showBackButton,
                                            child:  Container(
                                              height: 5.h,
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(Radius.circular(3.w)),
                                                border: Border.all(
                                                  width: .5.w,
                                                  color: Colors.orangeAccent,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Icon(
                                                    Icons.arrow_drop_down,
                                                    size: 10.w,
                                                    color: Colors.grey,
                                                  ),
                                                  Positioned(
                                                    left: 7.7.w,
                                                    bottom: 0.w,
                                                    top: 0.w,
                                                    child: DropdownButtonHideUnderline(
                                                      child: DropdownButton<String>(
                                                        icon: const Visibility (visible:false, child: Icon(Icons.arrow_downward)),
                                                        value: dropdownValue,
                                                        borderRadius: BorderRadius.circular(5.w),
                                                        style: const TextStyle(color: Colors.black,
                                                            fontFamily: "theFont"),
                                                        onChanged: null,
                                                        items: <String>['عقاب المنزل', 'عقاب الطعام', 'عقاب التدريبات' ]
                                                            .map<DropdownMenuItem<String>>((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Text(value),
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ),
                                        Visibility(
                                          visible: hide3kapButton,
                                          child:  Container(
                                            height: 5.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(Radius.circular(3.w)),
                                              border: Border.all(
                                                width: .5.w,
                                                color: Colors.orangeAccent,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  size: 10.w,
                                                ),
                                                Positioned(
                                                  left: 7.7.w,
                                                  bottom: 0.w,
                                                  top: 0.w,
                                                  child: DropdownButtonHideUnderline(
                                                    child: DropdownButton<String>(
                                                      icon: const Visibility (visible:false, child: Icon(Icons.arrow_downward)),
                                                      value: dropdownValue,
                                                      borderRadius: BorderRadius.circular(5.w),
                                                      iconEnabledColor: Colors.black,
                                                      iconDisabledColor: Colors.blue,
                                                      style: const TextStyle(color: Colors.black,
                                                          fontFamily: "theFont"),
                                                      onChanged: (String? newValue) {
                                                        setState(() {
                                                          dropdownValue = newValue!;
                                                        });
                                                      },
                                                      items: <String>['عقاب المنزل', 'عقاب الطعام', 'عقاب التدريبات' ]
                                                          .map<DropdownMenuItem<String>>((String value) {
                                                        return DropdownMenuItem<String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              SizedBox(
                                    width: 60.w,
                                    height: 40.h,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: showPunish,
                                        itemBuilder: (context, index){
                                          return  Container(
                                            height: 30.h,
                                            alignment: Alignment.topCenter,
                                            child: Column(
                                              children: [
                                                SizedBox(height: 2.h,),
                                                Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(3.w),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                    color: Colors.orangeAccent,
                                                      width: .5.w,
                                                    ),
                                                    borderRadius: BorderRadius.all(
                                                      Radius.circular(30.w),
                                                    ),
                                                  ),
                                                  constraints: BoxConstraints(
                                                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                                                  ),
                                                  child: Text("$element1",
                                                          style: TextStyle(
                                                            fontSize: 5.w,
                                                            fontFamily: "theFont",
                                                          ),),
                                                ),
                                                SizedBox(height: 1.h,),
                                            Image(
                                              width: 30.w,
                                              height: 30.w,
                                              image: const AssetImage("assets/Group 14.png"),),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(35.0),
                                              color: const Color.fromRGBO(3, 141, 151, 1),
                                              border: Border.all(
                                                color: const Color.fromRGBO(0, 184, 197, 1),
                                                width: 5,
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h,),
                      Stack(
                        children: [
                          Visibility(
                            visible: showBackButton,
                            child: Row(
                              children: [
                                SizedBox(width: 18.w,),
                                SizedBox(
                                  width: 65.w,
                                  height: 10.h,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pop(context);
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
                                          left: 28.w,
                                          child: Text("رجوع",
                                            style: TextStyle(
                                              fontFamily: 'theFont',
                                              fontSize: 6.w,
                                              color: Colors.white,
                                            ),),
                                        ),
                                      ],
                                    ),
                                  ),/*Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                        ],
                                        gradient:  const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment(-.85,-.3), // 10% of the width, so there are ten blinds.
                                          colors: [
                                            Color.fromRGBO(245, 153, 45, 1),
                                            Color.fromRGBO(254, 169, 67, 1),
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
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 3.w,
                                            bottom: 3.w,
                                          ),
                                          child: Text(
                                            "رجوع",
                                            style: TextStyle(
                                              fontFamily: 'theFont',
                                              fontSize: 6.w,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),*/
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: hide3kapButton,
                            child: Row(
                              children: [
                                SizedBox(width: 18.w,),
                                SizedBox(
                                  width: 65.w,
                                  height: 10.h,
                                  child: GestureDetector(
                                    onTap: (){
                                      if(dropdownValue == 'عقاب الطعام'){
                                        element1 = eatingList[_random.nextInt(eatingList.length)];
                                      }
                                      else if(dropdownValue == 'عقاب المنزل'){
                                        element1 = homeList[_random.nextInt(homeList.length)];
                                      }
                                      else{
                                        element1 = exerciseList[_random.nextInt(exerciseList.length)];
                                      }
                                      setState(() {
                                        showPunish = 1;
                                        hide3kapButton = false;
                                        showBackButton = true;
                                      });
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
                                          left: 28.w,
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
                                  /*Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                        ],
                                        gradient:  const LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment(-.85,-.3), // 10% of the width, so there are ten blinds.
                                          colors: [
                                            Color.fromRGBO(245, 153, 45, 1),
                                            Color.fromRGBO(254, 169, 67, 1),
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
                                          print(dropdownValue);

                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 3.w,
                                            bottom: 3.w,
                                          ),
                                          child: Text(
                                            "ابدأ",
                                            style: TextStyle(
                                              fontFamily: 'theFont',
                                              fontSize: 6.w,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),*/
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    right: 65.w,
                    top: 3.h,
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
}
