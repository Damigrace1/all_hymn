import 'package:flutter/material.dart';

import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List allSongs = [];
//    getSongs() async {
//     String val =
//         await DefaultAssetBundle.of(context).loadString("lib/assets/My.txt");
//     allSongs  =
//         json.decode(val.toString()) ;
//     foundSongs = allSongs;
//   }
//   List foundSongs = [];
//   @override
//   void initState() {
//     // TODO: implement initState
//     getSongs();
//     super.initState();
//   }
//
//   void search(String keyword) {
//     List results = [];
//     if (keyword.isEmpty) {
//       results = allSongs;
//     } else {
//       List r1 = allSongs
//           .where((song) => song["t"]
//               .toString()
//               .toLowerCase()
//               .contains(keyword.toLowerCase()))
//           .toList();
//
//       List r2 = allSongs
//           .where((song) => song["v1"]
//           .toString()
//           .toLowerCase()
//           .contains(keyword.toLowerCase()))
//           .toList();
//       List r3 = allSongs
//           .where((song) => song["c"]
//           .toString()
//           .toLowerCase()
//           .contains(keyword.toLowerCase()))
//           .toList();
//
//       for (var res in (r1 + r2 + r3)) {
//        results.isEmpty ? results.add(res) : {
//       for(var newRes in results){
//         if(res["t"] != newRes["t"]){
//           results.add(res)
//         }
//       }
//        };
//       }
//       // r2.forEach((element) {
//       //   results = r1;
//       //   r1.contains(element)?{}:
//       //       results.add(element);
//       // });
//
//     }
//     setState(() {
//       print(results);
//       foundSongs = results;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 100,
//             ),
//
//             // FutureBuilder<dynamic>(
//             //   future: getSongs(),
//             //   builder: (BuildContext context, AsyncSnapshot snapshot) {
//             //     if (snapshot.connectionState == ConnectionState.done) {
//             //       var data = snapshot.data!;
//             //       return SizedBox(
//             //         height: 200,
//             //         child: ListView.builder(
//             //           shrinkWrap: true,
//             //           itemCount: data.length,
//             //           itemBuilder: (BuildContext context, int index) {
//             //             return ListTile(
//             //               onTap: () => print(data[index]["c"]),
//             //               title: Text(data[index]["t"]),
//             //             );
//             //           },
//             //         ),
//             //       );
//             //     } else {
//             //       return Container();
//             //     }
//             //   },
//             // ),
//             Text('Search results'),
//             SizedBox(
//               height: 200,
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: foundSongs.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     onTap: () => print(foundSongs[index]["c"]),
//                     title: Text(foundSongs[index]["t"]),
//                   );
//                 },
//               ),
//             ),
//             Container(
//               height: 50,
//               width: double.infinity - 10,
//               decoration: BoxDecoration(
//                   border: Border.all(width: 1, color: Colors.black)),
//               child: TextField(
//                 onChanged: (val) {
//                   search(val);
//                   print(val);
//                   setState(() {
//
//                   });
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
