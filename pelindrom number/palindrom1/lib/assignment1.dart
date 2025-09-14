import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<StatefulWidget> createState() => _Assignment1();
}

class _Assignment1 extends State<Assignment1> {
  int selectedIndex = 0;
  int b = 0;
  //list of images
  final List<int> list = [153, 257, 145, 151, 333];
  int count = 0;
  int f = 0;
  void ifPalindrom() {
    int a = list[selectedIndex];

    int i = 0;
    int x = a;
    while (x != 0) {
      int? m = x % 10;
      i = i * 10 + m;
      x = x ~/ 10;
    }
    if (selectedIndex != list.length) {
      selectedIndex++;
    } else {
      selectedIndex = 0;
      count = 0;
    }
    setState(() {
      if(i==a){
        count++;
      }
    });

    b = list[selectedIndex];
  }

  int index = 0;
  int pcount = 0;
  void countarmstrongno() {
    int a = list[index];
    int x = a;
    int i = 0;
    int sum = 0;
    while (x != 0) {
      i++;
      x ~/= 10;
    }
    int y = a;
    while (y != 0) {
      int m = y % 10;
      int z = 1;

      for (int j = 0; j < i; j++) {
        z = z * m;
      }
      sum = sum + z;
      y ~/= 10;
    }
    //print(sum);
    if (index != list.length) {
      index++;
    } else {
      index = 0;
      pcount = 0;
    }
    setState(() {
      if (sum == a) {
        pcount++;
      }
    });
  }

  int scount = 0;
  void countStrongNo() {
    List list1 = list;
    for (int i = 0; i < list1.length; i++) {
      int temp = list1[i];
      int ret = 0;
      while (temp > 0) {
        int fact = 1;
        int x = temp % 10;
        while (x > 0) {
          fact = fact * x;
          x--;
        }
        ret = ret + fact;
        temp ~/= 10;
      }
      setState(() {
        if (ret == list1[i]) {
          f = 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "count pelendrom no.,count armstrong no.,count strong no."),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("click button to check the no. is palendrom or not"),
            const SizedBox(
              height: 20,
            ),
            Text("$b"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: ifPalindrom, child: const Text("cheak palndrom")),
            const SizedBox(
              height: 20,
            ),
            Text("$count"),
            const Text("click button to check to count  no. of armstrong "),
            const SizedBox(
              height: 20,
            ),
            Text("$b"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: countarmstrongno,
                child: const Text("cheak armsteong")),
            const SizedBox(
              height: 20,
            ),
            Text("$pcount"),
            const Text("click button to check to count  no. of strong "),
            const SizedBox(
              height: 20,
            ),
            Text("$b"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: countStrongNo,
                child: const Text("cheak strong no.")),
            const SizedBox(
              height: 20,
            ),
            Text("$scount"),
          ],
        ),
      ),
    );
  }
}
