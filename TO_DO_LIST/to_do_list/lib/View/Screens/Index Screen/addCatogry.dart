import 'package:flutter/material.dart';
import 'package:to_do_list/Model/listOfIcons.dart';

class Addcatogry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddcatogryState();
  }
}

class _AddcatogryState extends State {
  Listoficons gettingList = Listoficons();
  Future<void> showdilogChooseIconFromLibrary() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Container(
                height: 312,
                width: 300,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
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
                        labelText: "Search for Category icon :",
                        prefixIcon: Icon(Icons.search_outlined),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(151, 151, 151, 1),
                        ),
                        prefixIconColor: Color.fromRGBO(175, 175, 175, 1),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text("Most Used Icons"),
                    Divider(),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      children:
                          gettingList.mostUsedIconsList1.map((nameOfIcon) {
                        return Chip(
                          label: IconButton(
                            onPressed: () {},
                            icon: Icon(nameOfIcon),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "Create new category",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Category name :",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(255, 255, 255, 0.87),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  hintText: "Category name",
                  hintStyle: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(255, 255, 255, 0.87)),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(151, 151, 151, 1)),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Category icon :",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(255, 255, 255, 0.87),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                showdilogChooseIconFromLibrary();
              },
              child: Container(
                height: 37,
                width: 154,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.21),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Choose icon from library",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.87),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Category color :"),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(201, 204, 65, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(102, 204, 65, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(65, 204, 167, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(65, 129, 204, 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(201, 204, 65, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(201, 204, 65, 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(65, 129, 204, 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(65, 129, 204, 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(201, 204, 65, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 61,
                    width: 183,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.black,
                    ),
                    child: Text(
                      "Clear",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color.fromRGBO(134, 135, 231, 1)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 61,
                    width: 178,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Color.fromRGBO(134, 135, 231, 1),
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
