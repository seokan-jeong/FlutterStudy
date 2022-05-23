import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

/*
  1. 화면 배치에 쓰는 기본 위젯
 */
/*
  1.1 Container
  아무것도 없는 위젯이다.
  다양한 프로퍼티를 가지고 있기 때문에 사용하기에 따라서 다양한 응용이 가능하다.
 */
// class MyHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Container"),
//       ),
//       body: Container(
//         color: Colors.red,
//         width: 100,
//         height: 100,
//         padding: const EdgeInsets.all(8.0),
//         margin: const EdgeInsets.all(8.0),
//       ),
//     );
//   }
// }

/*
  1.2 Column
  수직 방향으로 위젯들을 나란히 배치하는 위젯이다.
  레이아웃은 대부분 Column과 Row를 조합하여 만든다.
 */
// class MyHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Column"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Container(
//             color: Colors.red,
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(8.0),
//             margin: EdgeInsets.all(8.0),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(8.0),
//             margin: EdgeInsets.all(8.0),
//           ),
//           Container(
//             color: Colors.blue,
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(8.0),
//             margin: EdgeInsets.all(8.0),
//           ),
//         ],
//       ),
//     );
//   }
// }

/*
  1.3 Row
  Column과 반대로 수평 방향으로 위젯들을 나란히 배치하는 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Row"),
//       ),
//       body: Row(
//         mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
//         mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬하기
//         crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬하기
//         children: <Widget>[
//           Container(
//             color: Colors.red,
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(8.0),
//             margin: EdgeInsets.all(8.0),
//           ),
//           Container(
//             color: Colors.green,
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(8.0),
//             margin: EdgeInsets.all(8.0),
//           ),
//           Container(
//             color: Colors.blue,
//             width: 100,
//             height: 100,
//             padding: EdgeInsets.all(8.0),
//             margin: EdgeInsets.all(8.0),
//           ),
//         ],
//       ),
//     );
//   }
// }

/*
  1.4 Stack
  children에 나열한 여러 위젯을 순서대로 겹치게 함.

 */
// class MyHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stack"),
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             color: Colors.red,
//             width: 100,
//             height: 100,
//             padding: const EdgeInsets.all(8.0),
//             margin: const EdgeInsets.all(8.0),
//           ),
//           Container(
//             color: Colors.green,
//             width: 80,
//             height: 80,
//             padding: const EdgeInsets.all(8.0),
//             margin: const EdgeInsets.all(8.0),
//           ),
//           Container(
//             color: Colors.blue,
//             width: 60,
//             height: 60,
//             padding: const EdgeInsets.all(8.0),
//             margin: const EdgeInsets.all(8.0),
//           ),
//         ],
//       )
//     );
//   }
// }

/*
  1.5 SingleChildScrollView
  Column을 사용하여 위젯들을 나열하다가 화면 크기를 넘어서면 스크롤이 필요하다.
  SingleChildScrollView는 말 그대로 하나의 자식으로 포함하는 스크롤 가능한 위젯이다.
  Column은 기본적으로 표시할 위젯의 크기만큼 가로 길이를 가진다.
  따라서 스크롤 가능 영역이 좁을 수 있다.
  ListBody를 사용하면 스크롤 가능 영역이 가로로 꽉 차기 때문에 사용자가 스크롤하기 더 쉽다.
 */
// class MyHomePage extends StatelessWidget{
//
//   final items = List.generate(100, (i) => i).toList();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("SingleChildScrollView"),
//       ),
//       body: SingleChildScrollView(
//         child: ListBody(
//           children: items.map((i) => Text('$i')).toList(),
//         )
//       )
//     );
//   }
// }

/*
  1.6 ListView, ListTile
  ListView는 리스트를 표시하는 위젯이다.
  SingleChildScrollView와 ListBody의 조합과 동일한 효과를 내지만 좀 더 리스트 표현에 최적화된 위젯이다
  ListView에 표시할 각 항목의 레이아웃은 직접 정의해도 되지만 리스트 아이템을 쉽게 작성할 수 있는 ListTile 위젯을 사용하면 편리하다.
  이 둘을 조합하면 표준적인 리스트를 쉽게 만들 수 있다.
  ListView의 children 프로퍼티에 다수의 위젯을 배치하면 정적인 리스트를 쉽게 만들 수 있다.
 */
// class MyHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("ListView, ListTile"),
//         ),
//         body: ListView(
//           scrollDirection: Axis.vertical,
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               trailing: Icon(Icons.navigate_next),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.event),
//               title: Text('Event'),
//               trailing: Icon(Icons.navigate_next),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.camera),
//               title: Text('Camera'),
//               trailing: Icon(Icons.navigate_next),
//               onTap: () {},
//             ),
//           ],
//         )
//     );
//   }
// }

/*
  1.7 GridView
  열 수를 지정하여 그리드 형태로 표시하는 위젯이다.
 */
// class MyHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("GridView"),
//         ),
//         body: GridView.count(
//           crossAxisCount: 2,  // 열 수
//           children: <Widget>[
//             Container(
//               color: Colors.red,
//               width: 100,
//               height: 100,
//               padding: const EdgeInsets.all(8.0),
//               margin: const EdgeInsets.all(8.0),
//             ),
//             Container(
//               color: Colors.green,
//               width: 100,
//               height: 100,
//               padding: const EdgeInsets.all(8.0),
//               margin: const EdgeInsets.all(8.0),
//             ),
//             Container(
//               color: Colors.blue,
//               width: 100,
//               height: 100,
//               padding: const EdgeInsets.all(8.0),
//               margin: const EdgeInsets.all(8.0),
//             ),
//           ],
//         )
//     );
//   }
// }

/*
  1.8 PageView
  여러 페이지를 좌우로 슬라이드하여 넘길 수 있도록 해주는 위젯이다.
 */
// class MyHomePage extends StatelessWidget{
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("PageView"),
//         ),
//         body: PageView(
//           children: <Widget>[
//             Container(
//               color: Colors.red,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.blue,
//             ),
//           ],
//         )
//     );
//   }
// }

/*
  1.9 AppBar, TabBar, Tab, TabBarView
  이 위젯들을 조합하여 PageView와 유사하지만 페이지와 탭이 연동되는 화면을 구성할 수 있다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 3,
//         child: Scaffold(
//             appBar: AppBar(
//               title: Text("Tab"),
//               bottom: TabBar(
//                 tabs: <Widget>[
//                   Tab(icon: Icon(Icons.tag_faces)),
//                   Tab(text: "메뉴2"),
//                   Tab(
//                     icon: Icon(Icons.info),
//                     text: "메뉴3",
//                   ),
//                 ],
//               ),
//             ),
//             body: TabBarView(
//               children: <Widget>[
//                 Container(
//                   color: Colors.red,
//                 ),
//                 Container(
//                   color: Colors.green,
//                 ),
//                 Container(
//                   color: Colors.blue,
//                 ),
//               ],
//             )));
//   }
// }

/*
  1.10 BottomNavigationBar
  하단에 2~5개의 탭 메뉴를 구성할 수 있는 위젯이다.
  각 탭을 클릭하여 화면을 전환할 때 사용한다.
 */
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notification',
        ),
      ],),
    );
  }
}
