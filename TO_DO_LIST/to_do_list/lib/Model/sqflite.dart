import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:to_do_list/View/main.dart';

class TodoListData {
  final String tit;
  final String dis;
  final DateTime date;
  final TimeOfDay time;
  final IconData icon;
  final String label;
  final Color color;
  final int m;

  TodoListData(
      {required this.tit,
      required this.dis,
      required this.date,
      required this.color,
      required this.icon,
      required this.label,
      required this.m,
      required this.time});

  Map<String, dynamic> toInsert() {
    return {
      "Titel": tit,
      "Discription": dis,
      "Date": date,
      "Color": color,
      "Icon": icon,
      "Label": label,
      "M": m,
      "Time": time,
    };
  }
}

class ToGetDataPushData {
  Future<void> insertToDoData(TodoListData obj) async {
    final localDB = database;

    await localDB.insert(
      "ToDoListData",
      obj.toInsert(),
      ConflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<TodoListData>> getDataList() async {
    final localDB = database;
    List<Map<String, dynamic>> todoData = await localDB.query("ToDOList");

    return List.generate(todoData.length, (i) {
      return  TodoListData(
          tit: todoData[i]["Titel"],
          dis: todoData[i]["Discription"],
          date: todoData[i]["Date"],
          color: todoData[i]["Color"],
          icon: todoData[i]["Icon"],
          label: todoData[i]["Label"],
          m: todoData[i]["M"],
          time: todoData[i]["Time"]);
    });

  }
  Future<List<TodoListData>> getTodayDataList() async {
    final localDB = database;
    List<Map<String, dynamic>> todoData = await localDB.query("select date as date('now') in ToDOList ");

    return List.generate(todoData.length, (i) {
      return TodoListData(
          tit: todoData[i]["Titel"],
          dis: todoData[i]["Discription"],
          date: todoData[i]["Date"],
          color: todoData[i]["Color"],
          icon: todoData[i]["Icon"],
          label: todoData[i]["Label"],
          m: todoData[i]["M"],
          time: todoData[i]["Time"]);
    });

  }
  Future<List<TodoListData>> getTomorrowDataList() async {
    final localDB = database;
    List<Map<String, dynamic>> todoData = await localDB.query("select date as date('Tomorrow') in ToDOList ");

    return List.generate(todoData.length, (i) {
      return TodoListData(
          tit: todoData[i]["Titel"],
          dis: todoData[i]["Discription"],
          date: todoData[i]["Date"],
          color: todoData[i]["Color"],
          icon: todoData[i]["Icon"],
          label: todoData[i]["Label"],
          m: todoData[i]["M"],
          time: todoData[i]["Time"]);
    });

  }
  Future<List<TodoListData>> getYesterdayDataList() async {
    final localDB = database;
    List<Map<String, dynamic>> todoData = await localDB.query("select date as date('Yesterday') in ToDOList ");

    return List.generate(todoData.length, (i) {
      return TodoListData(
          tit: todoData[i]["Titel"],
          dis: todoData[i]["Discription"],
          date: todoData[i]["Date"],
          color: todoData[i]["Color"],
          icon: todoData[i]["Icon"],
          label: todoData[i]["Label"],
          m: todoData[i]["M"],
          time: todoData[i]["Time"]);
    });

  }
  
}
