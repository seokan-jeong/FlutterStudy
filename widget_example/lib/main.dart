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
      themeMode: ThemeMode.light,
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
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.person),
//           label: 'Profile',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.notifications),
//           label: 'Notification',
//         ),
//       ],),
//     );
//   }
// }

/*
  2. 위치, 정렬, 크기를 위한 위젯
 */
/*
  2.1 Center
  중앙으로 정렬시키는 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         color: Colors.red,
//         width: 100,
//         height: 100,
//       ),
//     );
//   }
// }

/*
  2.2 Padding
  안 쪽 여백을 표현할 때 사용하는 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(40.0),
//       child: Container(
//         color: Colors.red,
//       ),
//     );
//   }
// }

/*
  2.3 Align
  자식 위젯의 정렬 방향을 정할 수 있는 위젯이다.
  원하는 방향으로 위젯을 정렬할 때 사용한다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomRight,
//       child: Container(
//         color: Colors.red,
//         width: 100,
//         height: 100,
//       ),
//     );
//   }
// }

/*
  2.4 Expanded
  자식 위젯의 크기를 최대한으로 확장시켜주는 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.red,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.green,
//           ),
//         ),
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.blue,
//           ),
//         ),
//       ],
//     );
//   }
// }

/*
  2.5 SizedBox
  위젯 중에는 크기에 관련된 프로퍼티가 없는 위젯이 많은데 그러한 위젯을 특정 크기로 만들고 싶을 때 사용한다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: 100,
//         height: 100,
//         child: Container(
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }

/*
  2.6 Card
  카드 형태의 모양을 제공하는 위젯이다.
  기본적으로 크기가 0이므로 자식 위젯의 크기에 따라 크기가 결정된다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16.0),
//         ),
//         elevation: 4.0,
//         child: Container(
//           width: 200,
//           height: 200,
//         ),
//       ),
//     ));
//   }
// }

/*
  3. 버튼 계열 위젯
 */
/*
  3.1 ElevatedButton
  입체감을 가지는 일반적인 버튼 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: ElevatedButton(
//       child: Text('RaisedButton'),
//       onPressed: () {},
//     ));
//   }
// }

/*
  3.2 TextButton
  평평한 형태의 버튼이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: TextButton(
//           child: Text('TextButton'),
//           onPressed: () {},
//         ));
//   }
// }

/*
  3.3 IconButton
  아이콘을 표시하는 버튼 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: IconButton(
//       icon: Icon(Icons.add),
//       color: Colors.red,
//       iconSize: 100.0,
//       onPressed: () {},
//     )));
//   }
// }

/*
  3.3 FloatingActionButton
  입체감 있는 둥근 버튼 위젯이다.
  아이콘을 표시하는데 사용한다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: FloatingActionButton(
//               child: Icon(Icons.add),
//               onPressed: () {},
//             )));
//   }
// }

/*
  4. 화면 표시용 위젯
 */
/*
  4.1 Text
  글자를 표시하는 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Text(
//               "Hello World",
//               style: TextStyle(
//                 fontSize: 40.0,
//                 fontStyle: FontStyle.italic,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.red,
//                 letterSpacing: 4.0,
//               ),
//             )));
//   }
// }

/*
  4.2 Image
  이미지를 표시하는 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Image.network("http://bit.ly/2Pvz4t8")));
//   }
// }

/*
  4.3 Icon
  아이콘 위젯은 단독으로도 사용하지만
  메뉴나 리스트, 버튼과의 조합으로 사용한다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Icon(
//               Icons.home,
//               color: Colors.red,
//               size: 60.0,
//             )));
//   }
// }

/*
  4.4 Progress
  로딩 중이거나 오래 걸리는 작업을 할 때 사용자에게 진행 중임을 보여주는 용도로 사용하는 위젯이다.
  두 종류를 제공한다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//         body: Center(
//             child: CircularProgressIndicator()
//         ));
//   }
// }
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//         body: Center(
//             child: LinearProgressIndicator()
//         ));
//   }
// }

/*
  4.5 CircleAvatar
  프로필 화면 등에 많이 사용되는 원형 위젯이다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//         body: Center(
//             child: CircleAvatar(
//               child: Icon(Icons.person),
//             )
//         ));
//   }
// }

/*
  5. 입력용 위젯
 */
/*
  5.1 TextField
  글자를 입력받는 위젯이다.
  InputDecoration 클래스와 함께 사용하면 힌트 메시지나 외곽선 등의
  꾸밈 효과를 간단히 추가할 수 있다.
 */
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("TextField"),
//       ),
//       body: Column(
//         children: const <Widget>[
//           TextField(),
//           TextField(
//             decoration: InputDecoration(
//               labelText: '여기에 입력하세요',
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               labelText: '여기에 입력하세요',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

/*
  5.2 CheckBox와 Switch
  설정 화면 등에 많이 사용되는 체크박스, 라디오 버튼, 스위치를 표현하는 위젯이다.
 */
// class MyHomePage extends StatefulWidget{
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage>{
//   var _isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("CheckBox / Switch"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Checkbox(
//                 value: _isChecked,
//                 onChanged: (value){
//                   setState(() {
//                     _isChecked = value!;
//                   });
//                 },
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Switch(
//                 value: _isChecked,
//                 onChanged: (value) {
//                   setState(() {
//                     _isChecked = value;
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
  5.3 Radio와 RadioListTile
  선택 그룹 중 하나를 선택할 때 사용하는 위젯이다.
  어디까지를 터치 영역으로 볼 것이냐에 따라서 Radio를 사용하거나 RadioListTile을 사용하는 두 가지 방법이 있다.
 */
// enum Gender { MAN, WOMEN }
//
// Gender _gender = Gender.MAN;
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Radio"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // Radio는 라디오 영역만 터치 영역으로 인식
//               ListTile(
//                 title: Text('남자'),
//                 leading: Radio(
//                   value: Gender.MAN,
//                   groupValue: _gender,
//                   onChanged: (value) {
//                     setState(() {
//                       _gender = value as Gender;
//                     });
//                   },
//                 ),
//               ),
//               ListTile(
//                 title: Text('여자'),
//                 leading: Radio(
//                   value: Gender.WOMEN,
//                   groupValue: _gender,
//                   onChanged: (value) {
//                     setState(() {
//                       _gender = value as Gender;
//                     });
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               RadioListTile(
//                 title: Text('남자'),
//                 value: Gender.MAN,
//                 groupValue: _gender,
//                 onChanged: (value) {
//                   setState(() {
//                     _gender = value as Gender;
//                   });
//                 },
//               ),
//               RadioListTile(
//                 title: Text('여자'),
//                 value: Gender.WOMEN,
//                 groupValue: _gender,
//                 onChanged: (value) {
//                   setState(() {
//                     _gender = value as Gender;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
  5.4 DropDownButton
  여러 아이템 중 하나를 고를 수 있는 콤보박스 형태의 위젯이다.
 */

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final _valueList = ['첫 번째', '두 번째', '세 번째'];
//   var _selectValue = '첫 번째';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Dropdown"),
//       ),
//       body: DropdownButton(
//         value: _selectValue,
//         items: _valueList.map(
//             (value) {
//               return DropdownMenuItem(
//                 value: value,
//                 child: Text(value),
//               );
//             },
//         ).toList(),
//         onChanged: (value){
//           setState(() {
//             _selectValue = value as String;
//           });
//         },
//       )
//     );
//   }
// }

/*
  6. 다이얼로그
 */
/*
  6.1 AlertDialog
  머터리얼 디자인의 유저 확인용 다이얼로그
 */
// class MyHomePage extends StatelessWidget {
//   void FlutterDialog(context) {
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text('제목'),
//             content: SingleChildScrollView(
//               child: ListBody(
//                 children: <Widget>[
//                   Text('Alert Dialog입니다'),
//                   Text('OK를 눌러 닫습니다'),
//                 ],
//               ),
//             ),
//             actions: <Widget>[
//               TextButton(
//                 child: Text('OK'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                 child: Text('Cancel'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               )
//             ],
//           );
//         }
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AlertDialog'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             ElevatedButton(
//               child: Text('showDialog'),
//               onPressed: () => FlutterDialog(context),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

/*
  6.2 DatePicker
  날짜를 선택할 때 사용한다.
 */
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   DateTime _selectedTime = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DatePicker'),
//       ),
//       body: Column(
//         children: <Widget>[
//           ElevatedButton(
//             onPressed: () {
//               Future<DateTime?> selectedDate = showDatePicker(
//                 context: context,
//                 initialDate: DateTime.now(),
//                 firstDate: DateTime(2018),
//                 lastDate: DateTime(2030),
//                 builder: (BuildContext context, Widget? child) {
//                   return Theme(
//                     data: ThemeData.light(),
//                     child: child!,
//                   );
//                 },
//               );
//
//               selectedDate.then((dateTime) {
//                 setState(() {
//                   _selectedTime = dateTime!;
//                 });
//               });
//             },
//             child: Text('Date Picker'),
//           ),
//           Text('$_selectedTime')
//         ],
//       ),
//     );
//   }
// }

/*
  6.3 TimePicker
  시간을 선택할 때 사용하는 위젯이다.
 */
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String _selectedTime = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TimePicker'),
//       ),
//       body: Column(
//         children: <Widget>[
//           ElevatedButton(
//             onPressed: () {
//               Future<TimeOfDay?> selectedTime = showTimePicker(
//                 context: context,
//                 initialTime: TimeOfDay.now(),
//               );
//
//               selectedTime.then((timeOfDay) {
//                 setState(() {
//                   _selectedTime = '${timeOfDay?.hour}:${timeOfDay?.minute}';
//                 });
//               });
//             },
//             child: Text('Time Picker'),
//           ),
//           Text('$_selectedTime'),
//         ],
//       ),
//     );
//   }
// }

/*
  7. 이벤트
 */
/*
  7.1 GestureDetector와 InkWell
  글자나 그림 같이 이벤트 프로퍼티가 없는 위젯에 이벤트를 적용하고 싶을 때 사용하는 위젯이다.
 */
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector & InkWell'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('GestureDetector 클릭!!');
            },
            child: Text('클릭 Me!!'),
          ),
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              print('InkWell 클릭!!');
            },
            child: Text('클릭 Me!!'),
          )
        ],
      ),
    );
  }
}
