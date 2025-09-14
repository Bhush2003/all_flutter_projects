// import 'dart:html';

// import 'dart:js';

// import 'dart:ffi';

// import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:time_picker_spinner/time_picker_spinner.dart';
import 'package:to_do_list/Model/priorityList.dart';
import 'package:icons_flutter/icons_flutter.dart';
import "package:to_do_list/Model/buildCategoryItem.dart";
import 'package:to_do_list/Model/sqflite.dart';
import 'package:to_do_list/View/Screens/Index%20Screen/addCatogry.dart';

// import 'lo'
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<StatefulWidget> {
  bool d = true;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  Prioritylist _prioritylist = Prioritylist();
  IconData? icon;
  Color? color;
  String? ctegoryTitle;
  int x = 0;

  Future<void> showPriorityDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Task Priority"),
              titlePadding: EdgeInsets.symmetric(horizontal: 80),
              content: SizedBox(
                child: Wrap(
                  spacing: 15,
                  runSpacing: 10,
                  children: _prioritylist.PriorityList.map((i) {
                    return GestureDetector(
                      onTap: () {
                        x = i;
                        Navigator.pop(context);
                      },
                      child: Chip(
                        label: Column(
                          children: [
                            Icon(Icons.flag_outlined),
                            Text("${i}"),
                          ],
                        ),
                        backgroundColor: Color.fromRGBO(39, 39, 39, 1),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.87),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ));
        });
  }

  int hour = 0;

  BuildCategoryItem category = BuildCategoryItem();
  Future<void> showChooseCategary() {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            padding: EdgeInsets.all(16.0),
            height: 682,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Choose Category',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                    height: 556,
                    width: 327,
                    child: Wrap(
                      children: BuildCategoryItem()
                          .buildCategoryItemList()
                          .map((toElement) {
                        return Chip(
                          label: toElement,
                        );
                      }).toList(),
                    )),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Addcatogry();
                    }));
                  },
                  child: Text('Add Category'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // CalendarController _calendarController = CalendarController();
  Future<void> showCalenderDialog() {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color.fromRGBO(54, 54, 54, 1),
          content: Container(
            height: 326,
            width: 327,
            color: Color.fromRGBO(54, 54, 54, 1),
            child: Column(
              children: [
                TableCalendar(
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekendStyle: TextStyle(
                        color: Color.fromRGBO(255, 73, 73, 1),
                      ),
                      weekdayStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.87),
                      )),
                  firstDay: DateTime(2000),
                  lastDay: DateTime(2100),
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  rowHeight: 35,
                  calendarStyle: CalendarStyle(
                    selectedTextStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Color.fromRGBO(134, 135, 231, 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      shape: BoxShape.rectangle,
                    ),
                    todayTextStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                    todayDecoration: BoxDecoration(
                      color: Color.fromRGBO(134, 135, 231, 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      shape: BoxShape.rectangle,
                    ),
                    defaultTextStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    defaultDecoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    weekendTextStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    weekendDecoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    outsideDaysVisible: false,
                    markerDecoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromRGBO(255, 255, 255, 0)),
                  ),
                  headerStyle: HeaderStyle(
                    titleCentered: true,
                    formatButtonVisible: false,
                  ),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDate = selectedDay;
                      _focusedDay = focusedDay;
                    });
                    Navigator.pop(context);
                    showCalenderDialog();
                  },
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDate, day);
                  },
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Container(
                        width: 130,
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(54, 54, 54, 1),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        Navigator.pop(context);
                        final TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          initialEntryMode: TimePickerEntryMode.inputOnly,
                        );
                        if (time != null) {
                          _selectedTime = time;
                        }
                      },
                      child: Container(
                        height: 48,
                        width: 153,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          color: Color.fromRGBO(134, 135, 231, 1),
                        ),
                        child: Text(
                          "Choose Time",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  var title = TextEditingController();
  var description = TextEditingController();
  List<DropdownMenuItem<dynamic>> optionofDropDownbuttun = [
    DropdownMenuItem(child: Text("Today")),
    DropdownMenuItem(child: Text("Yesterday")),
    DropdownMenuItem(child: Text("Tomorrow"))
  ];
  void showBottom() {
    showModalBottomSheet(

        // clipBehavior: cli,
        isScrollControlled: true,
        // enableDrag: true,
        // useSafeArea: false,
        // backgroundColor: Color.fromRGBO(255, 255, 255, 0.01),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 269),
                  child: Text(
                    "Add Task",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(255, 255, 255, 0.87),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                    // height: 43,
                    width: 325,
                    child: TextFormField(
                      controller: title,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          hintText: "Title",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(255, 255, 255, 0.87)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          )),
                    )),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                    // height: 43,
                    width: 325,
                    child: TextFormField(
                      controller: description,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          hintText: "Description",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(255, 255, 255, 0.87)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          )),
                    )),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    IconButton(
                      icon: Icon(Icons.timer_outlined),
                      onPressed: () {
                        showCalenderDialog();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.tag_faces_sharp),
                      onPressed: () {
                        showChooseCategary();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.flag_outlined),
                      onPressed: () {
                        showPriorityDialog();
                      },
                    ),
                    SizedBox(
                      width: 164,
                    ),
                    IconButton(
                      icon: Icon(Icons.send_outlined),
                      onPressed: () {
                        var tit = title.text;
                        var dis = description.text;
                        DateTime date = _selectedDate;
                        TimeOfDay time = _selectedTime;
                        IconData icon = BuildCategoryItem().icon;
                        String label = BuildCategoryItem().label;
                        Color color = BuildCategoryItem().color;
                        int m = x;
                        TodoListData(
                            tit: tit,
                            dis: dis,
                            date: date,
                            color: color,
                            icon: icon,
                            label: label,
                            m: m,
                            time: time);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget zeroTask() {
    return Stack(children: [
      Positioned(
        top: 174,
        left: 74,
        child: SizedBox(
          height: 301,
          width: 278,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: 227,
              width: 227,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/Home/Checklist-rafiki 1.png")),
              ),
              // child: Image.asset("asset/Home/Checklist-rafiki 1.png",width: 227,height: 227,),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 278,
              height: 30,
              child: Text(
                "What do you want to do today?",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(255, 255, 255, 0.87)),
              ),
            ),
            Container(
              width: 209,
              height: 24,
              child: Text(
                "Tap + to add your tasks",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(255, 255, 255, 0.87)),
              ),
            )
          ]),
        ),
      ),
    ]);
  }

  List dayWiseList = [];
  void databaseStore() async {
    dayWiseList = await ToGetDataPushData().getDataList();
  }

  Widget withSomeTask() {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: TextFormField(
              strutStyle: const StrutStyle(
                height: 0,
              ),
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(151, 151, 151, 1),
                  width: 1,
                  style: BorderStyle.solid,
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(151, 151, 151, 1),
                  width: 1,
                  style: BorderStyle.solid,
                )),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(151, 151, 151, 1),
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                labelText: "Search for your task...",
                prefixIcon: Icon(Icons.search_outlined),
                labelStyle: TextStyle(
                  color: Color.fromRGBO(151, 151, 151, 1),
                ),
                prefixIconColor: Color.fromRGBO(175, 175, 175, 1),
              ),
            ),
          ),
        ),
        DropdownButton(
            items: optionofDropDownbuttun,
            onChanged: (day) async {
              if (day == "Today") {
                
                dayWiseList = await ToGetDataPushData().getTodayDataList();
              } else if (day == "Tomorrow") {
                dayWiseList = await ToGetDataPushData().getDataList();
              } else {
                dayWiseList = await ToGetDataPushData().getYesterdayDataList();
              }
            }),
        Container(
          height: 31,
          width: 76,
          color: Colors.blue,
        ),
        SizedBox(
          height: 5 * 72,
          child: ListView.builder(
            itemBuilder: (context, i) {
              return ListTile(
                trailing: Container(
                  height: 72,
                  width: 327,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 27,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.circle_outlined)),
                      ),
                      Positioned(
                        child: Text(dayWiseList[i].tit),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 5,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    print(d);
    return Scaffold(
        // resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromRGBO(255, 255, 255, 0),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 0),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort,
              )),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Index",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          actions: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage("asset/Home/bhushan.jpg"))),
            ),
            SizedBox(
              width: 24,
            ),
          ],
        ),
        body: (d) ? zeroTask() : withSomeTask(),
        floatingActionButton: Container(
          height: 64,
          width: 64,
          child: FloatingActionButton(
            shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5),
            onPressed: () {
              setState(() {
                if (dayWiseList.length != 0) {
                  d = false;
                }
              });
              showBottom();
            },
            isExtended: true,

            child: Icon(Icons.add),
            focusColor: Color.fromRGBO(134, 135, 231, 1),
            backgroundColor: Color.fromRGBO(134, 135, 231, 1),
            materialTapTargetSize: MaterialTapTargetSize.padded,
            // isExtended: true,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(54, 54, 54, 1),
          height: 94,
          elevation: 30,
          padding: EdgeInsets.only(bottom: 26, left: 20),
          child: Row(
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                    iconSize: 30,
                    color: Color.fromRGBO(255, 255, 255, 0.98),
                  ),
                  Text(
                    "Index",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.98),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.calendar_month_outlined),
                    iconSize: 30,
                    color: Color.fromRGBO(255, 255, 255, 0.98),
                  ),
                  Text(
                    "Calendar",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.98),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 104,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.access_time_outlined),
                    iconSize: 30,
                    color: Color.fromRGBO(255, 255, 255, 0.98),
                  ),
                  Text(
                    "Focuse",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.98),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_outlined),
                    iconSize: 30,
                    color: Color.fromRGBO(255, 255, 255, 0.98),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.98),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
