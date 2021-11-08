// ignore_for_file: file_names, use_key_in_widget_constructors
import 'dart:async';
import 'dart:math';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// ignore: camel_case_types
class two_more_challenge extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var playerNames=<String>{};
  two_more_challenge(this.playerNames);
  @override
  _two_more_challengeState createState() => _two_more_challengeState();
}

// ignore: camel_case_types
class _two_more_challengeState extends State<two_more_challenge> {
  StreamController<int> selected = StreamController<int>();
  int hideWheelButton = 1, showPunish = 0;
  List<String> orders = ["20 ضغط","ثلج في ظهرك","كل 5 بيضات مسلوقه","تاكل فلفل حار","تكسر بيض على راسك","تقول نكته واذا ماحد ضحك تاخد كف","افرح اليوم يعيال الترتيب على الخاسر","تقول النشيد الوطني وانت مقفل خشمك","مبروووك مافي عقاب بس تتابع 3 اعلانات","تمرين بلانك دقيقه","تمرين بلانك نص دقيقه","ارقص كأنك دجاجه لمدة دقيقة","انت كريم واحنا نستاهل تعشي كل واحد ولا تتابع 15 اعلان","عقابك دبل نفذ عقابين","انتا طيب واحنا نودلك الخير اشتري كرتون مويه ووزعه","شكلك عطشان اشرب كاسة مويه فيها ملح وسكر","اكيد اذا جا طاري العقابات اشرب عصير طماطم يوحش","تمرين سكوات 20 مره","اعطي كل واحد في التيم 30 ريال","مبرووووك مافي عقاب خسارتك تكفي","غني ببار وفيل بصو وطريقة رابح صقر","كل بصل وانسى اللي حصل","قولنا اغبى فكرة كنت تعتقدها","انشر في حسابك في الانستا انك سحليه","تابع فيديو اصوات اكل كامل",
  "سوي تمرين اطاله 30 ثانيه","ارقص كأنك فقمة","قولنا اسوأ موقف صارلك \n في المدرسه","تجري في الشارع حافي(وتعدي وتعدي)","تكلم بدون ماتنطق حرف الراء وكل غلطه بااثنين ضغط","اوبس خلي اللي جمبك يعضك","تتكلم وانتا سادد خشمك","قول باسورد جوالك او اتعاقب عقابين ائا ماتبغا","روق وصلي على النبي وقوم اعمل قهوه للكل","دق على اي حد وقوله مشغول اكلمك بعدين","دق على اي حد من اهلك وهوهو وااقفل","تستاهل قرصة اذن علشانك ماتسمع الكلام","عشان سلامتك تهمنا \n البس الكمامه لين \n تخلص اللعبه","مبروووك سامحناك ادخل على صفحتنا على الانستا واقترح عقاب وهنضيفه","مبرووك سامحناك تابعنا على صفحتنا على الانستجرام"];
  final _random = Random();
  var element;
  @override
  void dispose() {
    selected.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.arrow_back,),
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
              elevation: 0.0,
              backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
              title: Row(
                children: [
                  SizedBox(width: 10.w,),
                  Text("تحدي الاوامر", style: TextStyle(
                    fontFamily: 'theFont',
                    fontSize: 6.5.w,
                    color: const Color.fromRGBO(3, 141, 151, 1),
                  ),),
                ],
              ),
            ),
            backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Center(
                        child: Container(
                          width: 80.w,
                          height: 84.h,
                          color: null,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 4.h,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color.fromRGBO(219, 232, 255, 1),
                                      border: Border.all(color: const Color.fromRGBO(196, 205, 223, 1),
                                          width: 5)
                                  ),
                                  width: 80.w,
                                  height: 80.h,
                                ),
                              ),
                              Positioned(
                                left: 8.w,
                                child: Container(
                                  width:  65.w,
                                  height: 65.w,
                                  child: FortuneWheel(
                                    styleStrategy: UniformStyleStrategy(
                                      borderWidth: .5.w,
                                      textStyle: TextStyle(
                                        fontFamily: 'theFont',
                                        fontSize: 5.w,
                                        color: Colors.white,
                                      ),
                                      borderColor: Colors.white,
                                    ),
                                    animateFirst: false,
                                    items: [
                                      for(var name in widget.playerNames)
                                        FortuneItem(child: Text(name)),
                                    ],
                                    selected: selected.stream,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 37.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 7.5.w,),
                                      SizedBox(
                                        width: 65.w,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: showPunish,
                                            itemBuilder: (context, index){
                                              return  Container(
                                                height: 29.h,
                                                alignment: Alignment.center,
                                                child: Column(
                                                  children: [
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
                                                      child: Text("$element",
                                                      textAlign: TextAlign.center,
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
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 70.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 8.w,),
                                      SizedBox(
                                        width: 65.w,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: showPunish,
                                            itemBuilder: (context, index){
                                              return  GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    element = orders[_random.nextInt(orders.length)];
                                                    showPunish = 0;
                                                    selected.add(Random().nextInt(widget.playerNames.length));
                                                    hideWheelButton = 0;
                                                  });
                                                  Future.delayed(const Duration(milliseconds: 5000), () {
                                                    setState(() {
                                                      showPunish = 1;
                                                    });
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
                                                      left: 15.w,
                                                      child: Text("شغل العجله",
                                                        style: TextStyle(
                                                          fontFamily: 'theFont',
                                                          fontSize: 6.w,
                                                          color: Colors.white,
                                                        ),),
                                                    ),
                                                  ],
                                                ),
                                              );
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
                                                      setState(() {
                                                        element = orders[_random.nextInt(orders.length)];
                                                        showPunish = 0;
                                                        selected.add(Random().nextInt(widget.playerNames.length));
                                                        hideWheelButton = 0;
                                                      });
                                                      Future.delayed(const Duration(milliseconds: 5000), () {
                                                        setState(() {
                                                          showPunish = 1;
                                                        });
                                                      });
                                                    },
                                                    child: const Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                      ),
                                                      child: Text(
                                                        "شغل العجله",
                                                        style: TextStyle(
                                                          fontFamily: 'theFont',
                                                          fontSize: 22,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );*/
                                            }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 70.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 8.w,),
                                      SizedBox(
                                        width: 65.w,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: hideWheelButton,
                                            itemBuilder: (context, index){
                                              return GestureDetector(
                                                onTap: () {
                                                  element = orders[_random.nextInt(orders.length)];
                                                  setState(() {
                                                    selected.add(Random().nextInt(widget.playerNames.length));
                                                    hideWheelButton = 0;
                                                  });
                                                  Future.delayed(const Duration(milliseconds: 5000), () {
                                                    setState(() {
                                                      showPunish = 1;
                                                    });
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
                                                      left: 15.w,
                                                      child: Text("شغل العجله",
                                                        style: TextStyle(
                                                          fontFamily: 'theFont',
                                                          fontSize: 6.w,
                                                          color: Colors.white,
                                                        ),),
                                                    ),
                                                  ],
                                                ),
                                              );
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
                                                      element = orders[_random.nextInt(orders.length)];
                                                      setState(() {
                                                        selected.add(Random().nextInt(widget.playerNames.length));
                                                        hideWheelButton = 0;
                                                      });
                                                      Future.delayed(const Duration(milliseconds: 5000), () {
                                                        setState(() {
                                                          showPunish = 1;
                                                        });
                                                      });
                                                    },
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        top: 3.w,
                                                        bottom: 3.w,
                                                      ),
                                                      child: Text(
                                                        "شغل العجله",
                                                        style: TextStyle(
                                                          fontFamily: 'theFont',
                                                          fontSize: 6.w,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );*/
                                            }),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 63.w,
                    top: 4.h,
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

