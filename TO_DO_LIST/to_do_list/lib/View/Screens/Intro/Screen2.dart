import 'package:flutter/material.dart';
import 'package:to_do_list/Model/Modal.dart';
import 'package:to_do_list/View/Screens/Intro/Screen1.dart';
import 'package:to_do_list/View/Screens/Intro/Screen3.dart';

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen2State();
  }
}

class Screen2State extends State {
  int onbordingPageIndex = 0;

  List<ModalOnbording> onbordingScreenList = [
    ModalOnbording(
      image: Positioned(
        left: 91,
        top: 84,
        child: Container(
          height: 277.78,
          width: 213,
          child: Image.asset("asset/intro/onbording/Group 182.png"),
        ),
      ),
      headText: const Positioned(
        top: 467,
        left: 63,
        child: SizedBox(
          height: 38,
          width: 310,
          child: Text(
            "Manage your tasks",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Color.fromRGBO(255, 255, 255, 0.87),
            ),
          ),
        ),
      ),
      subText: const Positioned(
        top: 547,
        left: 48,
        child: SizedBox(
          height: 48,
          width: 299,
          child: Text(
            "You can easily manage all of your daily tasks in DoMe for free",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromRGBO(255, 255, 255, 0.87),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
    ModalOnbording(
      image: Positioned(
        left: 62,
        top: 75,
        child: SizedBox(
          height: 276,
          width: 271,
          child: Image.asset("asset/intro/onbording/Frame 161.png"),
        ),
      ),
      headText: const Positioned(
        top: 467,
        left: 48,
        child: SizedBox(
          height: 38,
          width: 286,
          child: Text(
            "Create daily routine",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Color.fromRGBO(255, 255, 255, 0.87),
            ),
          ),
        ),
      ),
      subText: const Positioned(
        top: 547,
        left: 48,
        child: SizedBox(
          height: 48,
          width: 299,
          child: Text(
            "In Uptodo  you can create your personalized routine to stay productive",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromRGBO(255, 255, 255, 0.87),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
    ModalOnbording(
      image: Positioned(
        left: 69,
        top: 98,
        child: Container(
          height: 251,
          width: 257,
          child: Image.asset("asset/intro/onbording/Frame 162.png"),
        ),
      ),
      headText: const Positioned(
        top: 467,
        left: 46,
        child: SizedBox(
          height: 38,
          width: 320,
          child: Text(
            "Orgonaize your tasks",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Color.fromRGBO(255, 255, 255, 0.87),
            ),
          ),
        ),
      ),
      subText: const Positioned(
        top: 547,
        left: 48,
        child: SizedBox(
          height: 48,
          width: 320,
          child: Text(
            "You can organize your daily tasks by adding your tasks into separate categories",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color.fromRGBO(255, 255, 255, 0.87),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
      body: Stack(
        children: [
          Positioned(
              top: 58,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    onbordingPageIndex = 0;
                  });
                },
                child: const SizedBox(
                  height: 24,
                  width: 35,
                  child: Text(
                    "skip",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 255, 255, 0.44),
                    ),
                  ),
                ),
              )),
          onbordingScreenList[onbordingPageIndex].image,
          Positioned(
            top: 413,
            left: 151,
            child: Row(
              children: [
                Container(
                  height: 4,
                  width: 26.28,
                  decoration: BoxDecoration(
                    color: (onbordingPageIndex == 0)
                        ? Color.fromRGBO(255, 255, 255, 0.87)
                        : Color.fromRGBO(175, 175, 175, 1),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 4,
                  width: 26.28,
                  decoration: BoxDecoration(
                    color: (onbordingPageIndex == 1)
                        ? Color.fromRGBO(255, 255, 255, 0.87)
                        : Color.fromRGBO(175, 175, 175, 1),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 4,
                  width: 26.28,
                  decoration: BoxDecoration(
                    color: (onbordingPageIndex == 2)
                        ? Color.fromRGBO(255, 255, 255, 0.87)
                        : Color.fromRGBO(175, 175, 175, 1),
                  ),
                ),
              ],
            ),
          ),
          onbordingScreenList[onbordingPageIndex].headText,
          onbordingScreenList[onbordingPageIndex].subText,
          (onbordingPageIndex == 2)
              ? Positioned(
                  top: 702,
                  left: 230,
                  height: 48,
                  width: 150,
                  child: ElevatedButton(
                   
                    onPressed: () {
                      Navigator.push(
                        context,MaterialPageRoute(builder: (context)=>Screen3())
                      );
                    }, 
                    style: ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(136, 117, 255, 1)),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 16),
                    ),
                  ))
              : Positioned(
                  top: 702,
                  left: 260,
                  height: 48,
                  width: 90,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        onbordingPageIndex++;
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Color.fromRGBO(136, 117, 255, 1)),
                    ),
                    child: Text(
                      "NEXT",
                      style: TextStyle(fontSize: 16),
                    ),
                  )),
          Positioned(
              top: 714,
              left: 44,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "Back",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.44)),
                ),
              )),
        ],
      ),
    );
  }
}
