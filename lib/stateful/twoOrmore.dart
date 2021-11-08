// ignore_for_file: file_names
import 'package:ekap/stateful/twoOrMoreChallenge.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class twoOrmore extends StatefulWidget {
  @override
  _twoOrmoreState createState() => _twoOrmoreState();
}

class _twoOrmoreState extends State<twoOrmore> {
  int textFieldCount = 0;
  int hideAddButton = 1;
  int hideRemoveButton = 0;
  String th1PlayerName = "", th2PlayerName = "", the3PlayerName = "", the4PlayerName = "";
  bool _textVisable = false;
  List<Map<String, dynamic>> values = [];
  var playerNames = <String>{};
  @override
  void initState(){
    super.initState();
    textFieldCount = 0;
    values = [];
  }
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: const Color.fromRGBO(239, 245, 255, 1),
              leading: IconButton(
                color: Colors.black,
                iconSize: 8.w,
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
                    bottom: 43.h,
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
                      SizedBox(height: 0.h,),
                      Row(
                        children: [
                          SizedBox(width: 20.w,),
                          Text("إدخال إسم اللاعبين", style: TextStyle(
                            fontSize: 6.5.w,
                            fontFamily: 'theFont',
                            color: const Color.fromRGBO(3, 141, 151, 1),
                          ),),
                        ],
                      ),
                      SizedBox(height: 7.h,),
                      Row(
                        children: [
                          SizedBox(width: 20.w,),
                          Container(
                            width: 60.w,
                            height: 6.5.h,
                            decoration: const BoxDecoration(
                              //color: Color.fromRGBO(245, 153, 45, 1),
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            ),
                            child: TextFormField(
                              onChanged: (val){
                                th1PlayerName = val;
                              },
                              textAlign: TextAlign.center,
                              enabled: true,
                              style: TextStyle(
                                fontFamily: 'theFont',
                                fontSize: 7.w,
                                color: Colors.white,
                              ),
                              cursorColor: const Color.fromRGBO(3, 141, 151, 1),
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
                                hintText:"الاسم الاول",
                                fillColor: const Color.fromRGBO(245, 153, 45, 1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                //focusedBorder: InputBorder.none,
                                //enabledBorder: InputBorder.none,
                                //errorBorder: InputBorder.none,
                                //disabledBorder: InputBorder.none,
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
                              cursorColor: const Color.fromRGBO(3, 141, 151, 1),
                              onChanged: (val){
                                th2PlayerName = val;
                              },
                              textAlign: TextAlign.center,
                              enabled: true,
                              style: TextStyle(
                                fontFamily: 'theFont',
                                fontSize: 7.w,
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
                                  hintText:"الاسم الثاني",
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
                      SizedBox(height: 2.h,),
                      Container(
                        width: 100.w,
                        height: 50.h,
                        color: const Color.fromRGBO(239, 245, 255, 1),
                        child: Column(
                          children: [
                            Flexible(
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                primary: false,
                                shrinkWrap: true,
                                  itemCount: textFieldCount,
                                  itemBuilder: (context, index){
                                return _playerName(index);
                              }),
                            ),
                            SizedBox(height: 5.h,),
                            Row(
                              children: [
                                SizedBox(width: 23.w,),
                                SizedBox(
                                  width: 11.w,
                                  height: 11.w,
                                  child: ListView.builder(
                                      itemCount: hideRemoveButton,
                                      itemBuilder: (context, index){
                                        return Container(
                                          width: 9.w,
                                          height: 11.w,
                                          decoration: BoxDecoration(
                                              color: const Color.fromRGBO(3, 141, 151, 1),
                                              border: Border.all(
                                                width: .8.w,
                                                color: const Color.fromRGBO(27, 126, 134, 1),
                                              ),
                                              borderRadius: const BorderRadius.all(Radius.circular(12),)
                                          ),
                                          alignment: Alignment.centerLeft,
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            icon: Icon(
                                              Icons.remove,
                                              size: 9.w,
                                              color: Colors.white,
                                            ),
                                            onPressed: (){
                                              setState(() {
                                                if(textFieldCount > 0){
                                                  if(textFieldCount == 1){
                                                    hideRemoveButton = 0;
                                                  }
                                                  textFieldCount = textFieldCount - 1;
                                                  hideAddButton = 1;
                                                }
                                                else {
                                                  hideRemoveButton = 0;
                                                }
                                              });
                                            },),
                                        );
                                      }),
                                ),
                                SizedBox(width: 30.w),
                                SizedBox(
                                  width: 11.w,
                                  height: 11.w,
                                  child: ListView.builder(
                                      itemCount: hideAddButton,
                                        itemBuilder: (context, index){
                                          return Container(
                                            width: 9.w,
                                            height: 11.w,
                                            decoration: BoxDecoration(
                                                color: const Color.fromRGBO(3, 141, 151, 1),
                                                border: Border.all(
                                                  width: .8.w,
                                                  color: const Color.fromRGBO(27, 126, 134, 1),
                                                ),
                                                borderRadius: const BorderRadius.all(Radius.circular(12),)
                                            ),
                                            alignment: Alignment.centerLeft,
                                            child: IconButton(
                                              padding: EdgeInsets.zero,
                                              icon: Icon(
                                                Icons.add,
                                                size: 9.w,
                                                color: Colors.white,
                                              ),
                                              onPressed: (){
                                              setState(() {
                                                if(textFieldCount<2){
                                                  if(textFieldCount == 1){
                                                    hideAddButton = 0;
                                                  }
                                                  textFieldCount = textFieldCount + 1;
                                                  hideRemoveButton = 1;}
                                                else{
                                                  hideAddButton = 0;
                                                }
                                              });
                                            },),
                                          );
                                        }),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Visibility(
                              child: Text("ادخل الاسم الاول والثاني",
                                style: TextStyle(
                                  fontSize: 4.w,
                                  color: Colors.red,
                                ),),
                              visible: _textVisable,
                            ),
                            SizedBox(height: 1.h,),
                            GestureDetector(
                              onTap: (){
                                if(th1PlayerName.isEmpty || th2PlayerName.isEmpty ){
                                  setState(() {
                                    _textVisable = true;
                                  });
                                }
                                else{
                                  if (values.isEmpty){
                                    playerNames.add(th1PlayerName);
                                    playerNames.add(th2PlayerName);
                                  }
                                  else if(values.isNotEmpty){
                                    if(values.length == 1){
                                      var _x = values.elementAt(0);
                                      the3PlayerName = _x["value"];
                                      playerNames.add(th1PlayerName);
                                      playerNames.add(th2PlayerName);
                                      playerNames.add(the3PlayerName);
                                    }
                                    else if(values.length == 2){
                                      var _x = values.elementAt(0);
                                      the3PlayerName = _x["value"];
                                      var _y = values.elementAt(1);
                                      the4PlayerName = _y["value"];
                                      playerNames.add(th1PlayerName);
                                      playerNames.add(th2PlayerName);
                                      playerNames.add(the3PlayerName);
                                      playerNames.add(the4PlayerName);
                                    }
                                  }
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => two_more_challenge(playerNames)),
                                  );
                                }
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'assets/Group 84.png',
                                    width: 60.w,
                                    height: 10.h,
                                  ),
                                  Positioned(
                                    top: 2.5.h,
                                    left: 25.w,
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
                                width: 45.w,
                                height: 7.h,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)
                                  ],
                                  gradient: const LinearGradient(
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
                                      "إبدأ",
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
  _onUpdate(int index, String val){
    int foundKey = -1;
    for (var map in values) {
      if (map.containsKey("id")) {
        if (map["id"] == index) {
          foundKey = index;
          break;
        }
      }
    }
    if (-1 != foundKey) {
      values.removeWhere((map) {
        return map["id"] == foundKey;
      });
    }
    Map<String, dynamic> json = {"id": index, "value": val};
    values.add(json);
    setState(() {
      //result = _prettyPrint(values);
    });
  }
  _playerName(int index){
    return Row(
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
              _onUpdate(index, val);
            },
            textAlign: TextAlign.center,
            enabled: true,
            style: TextStyle(
              fontFamily: 'theFont',
              fontSize: 7.w,
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
              hintText:"اسم آخر",
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
        SizedBox(height: 12.h,),
      ],
    );
  }
}
