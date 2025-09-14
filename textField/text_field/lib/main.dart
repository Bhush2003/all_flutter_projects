import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldDemo();
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<TextFieldDemo> createState() => TextFieldDemoState();
}

class TextFieldDemoState extends State<TextFieldDemo> {
  String? phone = "0";
  String? name = "";
  String? age = "0";
  bool flag = false;

  Widget showData(phone, name, age) {
    if (flag == true) {
      return SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text("Name:"),
                Text(name),
              ],
            ),
            Row(
              children: [
                Text("Phone:"),
                Text(phone),
              ],
            ),
            Row(
              children: [
                Text("age:"),
                Text(age),
              ],
            )
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }

  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          title: Text("portfolio"),
        ),
        body: Column(
          children: [
            TextField(
              controller: _textEditingController1,
              decoration: InputDecoration(
                hintText: "Enter Name",
              ),
              
            ),
            TextField(
              controller: _textEditingController2,
              decoration: InputDecoration(hintText: "enter your age"),
              onSubmitted: (value) {
                age = value;
              },
            ),
            TextField(
              controller: _textEditingController3,
              decoration: InputDecoration(hintText: "enter you phone"),
              onSubmitted: (value) {
                phone = value;
              },
            ),
            SizedBox(
              height: 100,
            ),
            
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    flag = true;
                  });
                },
                child: Text("submit")),
                showData(_textEditingController3.text, _textEditingController1.text, _textEditingController2.text),
          ],
        ),
      ),
    );
  }
}
