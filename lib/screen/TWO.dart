import 'package:flutter/material.dart';

class Galaxy_Planets_Screen extends StatefulWidget {
  const Galaxy_Planets_Screen({Key? key}) : super(key: key);

  @override
  State<Galaxy_Planets_Screen> createState() => _Galaxy_Planets_ScreenState();
}

class _Galaxy_Planets_ScreenState extends State<Galaxy_Planets_Screen> with SingleTickerProviderStateMixin{


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            centerTitle: true,
            floating: true,
            pinned: true,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            leading: Icon(Icons.dehaze_outlined),
            title: Text("GALAXY PLANETS",style: TextStyle(color: Colors.white,fontSize: 25),),
            actions: [
              Container(padding:EdgeInsets.only(right: 20),child: Icon(Icons.search))
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 12,
                  (context,index){
                return  Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                ],
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Text("Milkyway Galaxy",style: TextStyle(color: Colors.grey),),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(width: 15,),
                                ],
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(30),
                          height: 150,
                          width: MediaQuery.of(context).size.width*0.8,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade600,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),


          ),
        ],

      ),
    );
  }
}