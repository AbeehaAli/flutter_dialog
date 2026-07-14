import 'package:flutter/material.dart';
import 'package:flutter_appbar/custom_bottomsheet.dart';

class SimpleDialogue extends StatefulWidget {
  const SimpleDialogue({super.key});

  @override
  State<SimpleDialogue> createState() => _SimpleDialogueState();
}

class _SimpleDialogueState extends State<SimpleDialogue> {
  int currentindex =0;
    final List<String> pages =["Home page","Fvaourite Page","Map Page","Profile page"];
    

    DateTime selectedDate = DateTime(2026,7,15);
    TimeOfDay selectedTime = const TimeOfDay(hour: 9, minute: 0);

    Future<void> pickDate() async {
  final DateTime? picked =await showDatePicker(
    barrierDismissible: false,
    context: context, 
    initialDate: selectedDate,
    builder: (context, child) {
      return Transform.scale(scale: 0.65,child: child,);
    },
    firstDate: DateTime(2020),
     lastDate: DateTime(2035)
  );
  if(picked != null){
    setState(() {
      selectedDate = picked;
    });
  }
  } 

  Future<void> pickTime() async {
  final TimeOfDay? picked =await showTimePicker(
    barrierDismissible: false,
    context: context,
     initialTime: selectedTime,
      builder : (context,child){
      return Transform.scale(
        scale: 0.65,child: child,
      );
     },
     );
    
  if(picked != null){
    setState(() {
      selectedTime = picked;
    });
  }
  } 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu,
        color: Colors.white,),
        actions: [
          IconButton(onPressed: () {}
          , icon: Icon(Icons.notifications,
          color: Colors.white,)),
        ],
        centerTitle: true,
        title: Text("Travel Planner",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
        ),
        
        
       
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Column(
                      children: [
                        Text("Hello, Abeeha 👋",
                      style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      ),),
                      Text(
                        "🌍 Let's plan your next adventure!",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                      ],
                    ),
                  ),
                  SizedBox(width:100),
                  
                 Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:AssetImage("assets/images/iconimage.jpeg",
                      ),fit: BoxFit.cover )
                  ),
                 ),
                ],
              ),
            ),
            SizedBox(height: 15,),
               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Container(
                  height: 180,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:AssetImage("assets/images/image1.jpeg",
                      ),fit: BoxFit.cover )
                  ),
                 ),
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.only(left: 25,top: 5),
                 child: Text("Trip Details",
                 style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                 ),),
               ),

               SizedBox(height: 30,),
               Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                 child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                     width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(0, 5),
                          )
                        ]
                      ),
                      child: Padding(
                        padding:  EdgeInsetsGeometry.all(5),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: pickDate,
                           icon: Icon(Icons.calendar_month,
                            color: Colors.blue,
                            size: 30,),
                          
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "Travel Date",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                                  
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            
                            )
                          ],
                        ), 
                        ),
                      
                    ),
                  

                  Container(
                      height: 70,
                     width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(0, 5),
                          )
                        ]
                      ),
                      child: Padding(
                        padding:  EdgeInsetsGeometry.all(5),
                        child: Row(
                          children: [
                            IconButton(onPressed: 
                              pickTime
                            , icon: Icon(Icons.access_time,
                            color: Colors.orange,
                            size: 30,),
                          
                            ),
                            SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "Departure Time",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Text(
                                  selectedTime.format(context),
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            
                            )
                          ],
                        ), 
                        ),
                      
                    ),
                  ],
                 ),
               ),
               SizedBox(height: 12),
                Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                 child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                     width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(0, 5),
                          )
                        ]
                      ),
                      child: Padding(
                        padding:  EdgeInsetsGeometry.all(5),
                        child: Row(
                          children: [
                            IconButton(onPressed: () {
                              
                            }, icon: Icon(Icons.account_balance_wallet,
                            color: Colors.green,
                            size: 30,),
                          
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "Budget",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "35000",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            
                            )
                          ],
                        ), 
                        ),
                      
                    ),
                  

                  Container(
                      height: 70,
                     width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.15),
                            blurRadius: 8,
                            spreadRadius: 1,
                            offset: Offset(0, 5),
                          )
                        ]
                      ),
                      child: Padding(
                        padding:  EdgeInsetsGeometry.all(5),
                        child: Row(
                          children: [
                            IconButton(onPressed: () {
                              
                            }, icon: Icon(Icons.location_on,
                            color: Colors.purple,
                            size: 30,),
                          
                            ),
                            SizedBox(width: 2),
                            Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "Destination",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  "Hunza Valley",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            
                            )
                          ],
                        ), 
                        ),
                      
                    ),
                  ],
                 ),
               ),

               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: Container(
                  height: 40,
                  width: 350,
                  child: ElevatedButton.icon(onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                       builder: (context) {
                         return const CustomBottomsheet();
                       },);
                  },
                  icon: Icon(Icons.add_circle,
                  color: Colors.white,),
                   label: Text("Plan New Trip",
                   style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                   ),
                   ),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                   ),
                    ),
                 ),
               )
               
          ],
        ),
        
        
      ),

      bottomNavigationBar: SizedBox(
        height: 55,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          
          items:const[
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 20,),label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.favorite,size: 20,),label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.maps_ugc_outlined,size: 20,),label: "Map"),
            BottomNavigationBarItem(icon: Icon(Icons.person,size: 20,),label: "Profile"),
          ],
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex =index;
            });
          },
          backgroundColor:Colors.blue ,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          selectedFontSize: 14,
          unselectedFontSize: 12,),
      ),
    );
  }
}