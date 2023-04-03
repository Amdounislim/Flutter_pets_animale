// import 'package:flutter/material.dart';
// import 'package:fm_inspection/components/assesment_card.dart';
// import 'package:fm_inspection/utils/config.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   //fake data
//   var list = [
//     {"title": "العقد", "image": "contrat.png", "notification": 5},
//     {"title": "التقارير", "image": "report.png", "notification": 11},
//     {"title": "نظافة داخلية", "image": "in_clean.png", "notification": 15},
//     {"title": "نظافة خارجية", "image": "out_clean.png", "notification": 3},
//     {"title": "الصحة والسلامة", "image": "health.png", "notification": 2},
//     {"title": "الترميم", "image": "restoration.png", "notification": 0},
//     {
//       "title": "التشجير والمزروعات",
//       "image": "plantings.png",
//       "notification": 0
//     },
//     {"title": "الزي والعمل", "image": "outfit_work.png", "notification": 3},
//     {"title": "الطرق والساحات", "image": "roads.png", "notification": 2},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final currentWidth = MediaQuery.of(context).size.width;
//     final currentHeigth = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: Color(0xFFEBEBEB),
//       appBar: AppBar(
//         toolbarHeight: 200,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         actions: [
//           Padding(
//             padding: EdgeInsets.only(top: 40, right: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "! مرحباً بك",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Config.spaceSmall,
//                 Text(
//                   "تابع إدارة المباني وواجبات الصيانة بالنسبة إليك",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Config.primaryColor,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Text(
//                   "مكونات التطبيق",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                     color: Colors.black,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//       endDrawer: Drawer(),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
//         child: SafeArea(
//             child: Container(
//           child: GridView.builder(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             itemCount: list.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: currentWidth < 600 ? 2 : 3,
//                 mainAxisSpacing: 2,
//                 crossAxisSpacing: 6),
//             itemBuilder: (context, index) {
//               return Container(
//                 child: AssesmentCard(
//                     image: '${list[index]['image']}',
//                     title: '${list[index]['title']}',
//                     notif: (list[index]['notification'])),
//               );
//             },
//           ),
//         )),
//       ),
//     );
//   }
// }


Container(
      color: Config.primaryColor,
      padding: EdgeInsets.only(top: 50, bottom: 50, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  backgroundColor: Color(0xFF6F98CD),
                  radius: 18,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 14,
                  )),
              Column(
                children: [
                  CircleAvatar(
                      radius: 40, child: Image.asset("assets/profile.png")),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "عائشة بن محمد",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: drawerItems
                    .map((element) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(
                                element['icon'],
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(element['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    )

















