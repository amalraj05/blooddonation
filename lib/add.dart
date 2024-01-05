
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class survey extends StatefulWidget {
  const survey({super.key});

  @override
  State<survey> createState() => _surveyState();
}

class _surveyState extends State<survey> {

  final List bloodGroups = [
  "A+",
  "A-",
  "B+",
  "B-",
  "O+",
  "O-",
  "AB+",
  "AB-"
];
String ? selectedGroup;
final CollectionReference donor = FirebaseFirestore.instance.collection('donor');

void addDonor() {
  final data = {"name": "Dummy", "phone": 111, "group": "O+"};
  donor.add(data);
} 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Text(""),
        title: Text("Add Doners",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  label: Text("   Donor Name")
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 70,
              child: TextField(
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  
                  label: Text("   Phone number")
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  label: Text("Selected Blood Group")
                ),
                items: bloodGroups.map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                  )).toList(),
                 onChanged: (val) {
                  selectedGroup = val as String?;
                 }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 50,width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent
                  ),
                  onPressed: () {
                    addDonor();
                  },
                 child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
