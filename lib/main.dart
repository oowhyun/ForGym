import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.redAccent,
          title: Row(
            children: [
              SizedBox(width: 10),
              Icon(Icons.sports_martial_arts_rounded),
              Text('ForGYM'),
            ],
          ),
          actions: [
            Icon(Icons.menu),
            SizedBox(width: 30),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical, // 세로 스크롤 가능
          child: Container(
            color: Colors.black54,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal, // 가로 스크롤 가능
                  child: Row(
                    children: List.generate(
                      24, // 아이콘 갯수 (12개)
                          (index) => Icon(Icons.account_circle_outlined, size: 50, color:Colors.white,),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300, // 적절한 높이를 설정합니다.
                  margin: EdgeInsets.all(20),
                  color: Colors.yellow,
                  child: Text('나는 서똥딲을 한다'),
                ),
                Container(
                  height: 300, // 적절한 높이를 설정합니다.
                  margin: EdgeInsets.all(20),
                  color: Colors.greenAccent,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.add_a_photo_rounded),
              Icon(Icons.home_filled),
              Icon(Icons.calendar_month),
            ],
          ),
        ),
      ),
    );
  }
}
