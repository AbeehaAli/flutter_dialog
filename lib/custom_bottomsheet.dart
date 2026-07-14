import 'package:flutter/material.dart';

class CustomBottomsheet extends StatefulWidget {
  const CustomBottomsheet({super.key});

  @override
  State<CustomBottomsheet> createState() => _CustomBottomsheetState();
}

class _CustomBottomsheetState extends State<CustomBottomsheet> {
  String selectedDestination = "Hunza Valley";
 double budget =35000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(child:
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
                  color: Colors.grey.shade400,
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
                    Icon(Icons.person,
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
                    Icon(Icons.groups,
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
                    Icon(Icons.group,
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
          mainAxisAlignment: .spaceBetween,
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
          child: Slider(value: budget,
          min: 10000,
          max: 100000,
          divisions: 18,
          label: budget.toInt().toString(),
          activeColor: Colors.blue,
          inactiveColor: Colors.grey.shade300,
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
              height: 45,
              child: OutlinedButton(onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
            ),

             SizedBox(
              width: 140,
              height: 45,
              child:ElevatedButton(
                onPressed: (){
                    Navigator.pop(context);
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              child:const Text(
                "Done",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ), 
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