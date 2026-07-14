import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoBottomsheet extends StatefulWidget {
  const CupertinoBottomsheet({super.key});

  @override
  State<CupertinoBottomsheet> createState() => _CupertinoBottomsheetState();
}

class _CupertinoBottomsheetState extends State<CupertinoBottomsheet> {
  String selectedDestination = "Hunza Valley";
 double budget =35000;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child:  Center(child:
     Container(
        
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),

        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Container(
                width: 35,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CupertinoColors.systemGrey3,
                ),
              ),

              SizedBox(height: 20,),
              Text("Plan New Trip",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 8,),
              Text("Customize your trip details",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade700,
                
              ),),

            SizedBox(height: 15,),

           Container(
  width: 330,
  height: 62,
  decoration: BoxDecoration(
    border: Border.all(
      color: selectedDestination == "Hunza Valley"
          ? Colors.blue
          : Colors.grey.shade300,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  child: InkWell(
    onTap: () {
      setState(() {
        selectedDestination = "Hunza Valley";
      });
    },
    child: Row(
      children: [
        Radio<String>(
          visualDensity: VisualDensity.compact,
          value: "Hunza Valley",
          groupValue: selectedDestination,
          onChanged: (value) {
            setState(() {
              selectedDestination = value!;
            });
          },
        ),
        Image.asset(
          "assets/images/Hunza.jpeg",
          width: 52,
          height: 52,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        const Text(
          "Hunza Valley",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
),


            SizedBox(height: 5,),
             Container(
  width: 330,
  height: 62,
  decoration: BoxDecoration(
    border: Border.all(
      color: selectedDestination == "Skardu"
          ? Colors.blue
          : Colors.grey.shade300,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  child: InkWell(
    onTap: () {
      setState(() {
        selectedDestination = "Skardu";
      });
    },
    child: Row(
      children: [
        Radio<String>(
           visualDensity: VisualDensity.compact,
          value: "Skardu",
          groupValue: selectedDestination,
          onChanged: (value) {
            setState(() {
              selectedDestination = value!;
            });
          },
        ),
        Image.asset(
          "assets/images/Skardu.jpeg",
          width: 52,
          height: 52,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        const Text(
          "Skardu",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
),

              SizedBox(height: 5,),
             Container(
  width: 330,
  height: 62,
  decoration: BoxDecoration(
    border: Border.all(
      color: selectedDestination == "Murre"
          ? Colors.blue
          : Colors.grey.shade300,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  child: InkWell(
    onTap: () {
      setState(() {
        selectedDestination = "Murree";
      });
    },
    child: Row(
      children: [
        Radio<String>(
           visualDensity: VisualDensity.compact,
          value: "Murree",
          groupValue: selectedDestination,
          onChanged: (value) {
            setState(() {
              selectedDestination = value!;
            });
          },
        ),
        Image.asset(
          "assets/images/Murree.jpeg",
          width: 52,
          height: 52,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        const Text(
          "Murree",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
),
              

              SizedBox(height: 5,),
            Container(
  width: 330,
  height: 62,
  decoration: BoxDecoration(
    border: Border.all(
      color: selectedDestination == "Swat Valley"
          ? Colors.blue
          : Colors.grey.shade300,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
  child: InkWell(
    onTap: () {
      setState(() {
        selectedDestination = "Swat Valley";
      });
    },
    child: Row(
      children: [
        Radio<String>(
           visualDensity: VisualDensity.compact,
          value: "Swat Valley",
          groupValue: selectedDestination,
          onChanged: (value) {
            setState(() {
              selectedDestination = value!;
            });
          },
        ),
        Image.asset(
          "assets/images/Swat.jpeg",
          width: 52,
          height: 52,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        const Text(
          "Swat Valley",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  ),
),
          SizedBox(height: 10,),  
          Padding(
            padding: const EdgeInsets.only(right: 250),
            child: Text(
              "Travel Type",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),
            ),
          )  ,
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: .spaceEvenly,
            children: [
              Container(
                width: 90,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(CupertinoIcons.person,
                    color: Colors.blue,
                    size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Solo",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
     
              Container(
                width: 90,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(CupertinoIcons.person_2,
                    color: Colors.black,
                    size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Family",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),

              Container(
                width: 90,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(CupertinoIcons.person_3,
                    color: Colors.black,
                    size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Friends",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              )

            ],
          ),
          SizedBox(height: 10,),
           
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text("Budget (PKR)",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
                    ),
          ),

        SizedBox(height: 5,),

        Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Text("10,000",
            style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
            ),

             Text("100,000",
            style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
            ),

          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 3,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 8
            ),
          ),
          child: CupertinoSlider(
            value: budget,
          min: 10000,
          max: 100000,
          divisions: 18,
          activeColor: CupertinoColors.activeBlue,
           onChanged: (value) {
             setState(() {
               budget = value;
             });
           },),
        ),

         SizedBox(height: 2,),

         Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            SizedBox(
              width: 140,
              height: 48,
              child: CupertinoButton(
                child: Text("Cancel",
                style: TextStyle(
                  color: CupertinoColors.systemRed,
                   fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),),
                onPressed: () {
                Navigator.pop(context);
              },
              
              ),
              
              
            ),

             SizedBox(
              width: 140,
              height: 48,
              child:CupertinoButton.filled(
                child: const Text("Done",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),),
                onPressed: (){
                    Navigator.pop(context);
                }, 
                
              ), 
               
              
            ),


          ],
         )
          
            ],

          ),
        ),
      ),
    ),
    );
    
    
  }
}