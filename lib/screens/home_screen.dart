import 'dart:math';

import 'package:coba_1/utils/constants.dart';
import 'package:coba_1/widgets/feeling.dart';
import 'package:coba_1/widgets/practice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    List<String> selfCareItems = [
      "Practices",
      "Movies",
      "Books",
      "Test",
    ];

    List<String> practices = [
      "Meditation",
      "Wake Up",
      "Positive Focus",
      "Deep Breathing",
      "Mindfulness",
      "Creativity",
    ];

    List<String> practicesEmoji = [
      "🧘",
      "🛌",
      "🎧",
      "🫁",
      "🧠",
      "🎨",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          Row(
                            children: [
                              // Icon Person
                              Container(
                                child: Icon(Icons.person),
                                decoration: ShapeDecoration(
                                  shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                color: Constants.grey,
                                ),
                                padding: EdgeInsets.all(10),
                              ),
                              SizedBox(width: 8),

                              //Name
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('mpratama17',
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(height: 2),
                                    Text('Morning',
                                    style: GoogleFonts.roboto(color: Colors.grey),
                                    )
                                  ],
                                ),
                                Spacer(),

                                //Badges online
                                Container(
                                  child: badges.Badge(
                                    position: badges.BadgePosition.topEnd(
                                      top: 0,
                                      end: 2,
                                    ),
                                    badgeStyle:badges.BadgeStyle(
                                      badgeColor: Constants.green,
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1.5
                                      )
                                    ),
                                    child: Icon(Iconsax.notification,
                                    color: Colors.grey,),
                                  ),
                                  decoration: ShapeDecoration(shape: ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  color: Constants.grey
                                  ),
                                  padding: EdgeInsets.all(10),
                                )
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Text("Apa kabar hari ini?", style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FeelingWidget(emoji: '😡', title: 'Ah capek'),
                              FeelingWidget(emoji: '😓', title: 'Sedih'),
                              FeelingWidget(emoji: '😐', title: 'B aja!'),
                              FeelingWidget(emoji: '😊', title: 'Powerful'),
                            ],
                          )
                        ],
                      ),),
              ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Constants.blackGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))
                  ),
                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                 child: Column(
                  children: [ 
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Text('Konsultasi selanjutnya',
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    SizedBox(height: 20),

                    Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text('17', style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                                ),
                              ),
                          Text('Jan', style: GoogleFonts.roboto(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                            ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade600.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('09.30',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Text('RSUD Kota Mataram',
                                    style: GoogleFonts.roboto(
                                      color: Colors.white70,
                                      fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.more_horiz_rounded,
                                color: Colors.white,),
                                ],
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade600.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: EdgeInsets.all(15),
                            ),
                            ),


                      ],
                    ),
                    ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            builder: (context, scrollController)=> Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverToBoxAdapter(
                      // child: SizedBox(height: 5),
                    ),
                    SliverPadding(padding: EdgeInsets.symmetric(horizontal: 160),
                    sliver: SliverToBoxAdapter(
                      child: Container(
                        height: 4,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 25,)),
                    SliverToBoxAdapter(
                      child: Row(
                        children: [
                          Text('Perawatan mandiri',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        ],
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 25)),
                    SliverToBoxAdapter(
                      child: Container(
                        child: Row(
                          children: 
                            List.generate(selfCareItems.length, (index){
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  child: Text(selfCareItems[index],
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: _selectedIndex == index ? Colors.black : Colors.grey,
                                  ),),
                                  decoration: BoxDecoration(
                                    color: _selectedIndex == index ? Colors.grey.shade400 : Colors.transparent,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                ),
                              );
                            }),
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                          color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(child: SizedBox(height: 25)),
                    SliverGrid.builder(
                      itemCount: practices.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index)=> PracticeWidget(
                        emoji: practicesEmoji[index],
                        title: practices[index],
                        color: Constants.practiceTileColors[index],
                        time: Random().nextInt(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            initialChildSize: 0.459,
            minChildSize: 0.459,
            maxChildSize: 0.9,
          )
        ],
      ),
      ),
    );
  }
}