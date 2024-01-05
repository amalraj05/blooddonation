import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }
  
  Widget content() {
    return Column(
      children: [
        Center(
          child: Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 35,right: 20),
                child: Image.asset("images/blood2.webp"),
              ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text("       Blood Bank\nLocation Near You",
        style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: 140,
              child: Icon(Icons.gps_fixed,size: 40,color: Colors.white,),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: 140,
              child: Icon(Icons.map,
              size: 40,color: Colors.white,),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
              decoration: BoxDecoration(
                color: Colors.redAccent,borderRadius: BorderRadius.circular(20)),
              height: 90,
              width: 140,
              child: Icon(Icons.phone,
              size: 40,color: Colors.white,),
            ),
            SizedBox(height: 60,),
            Text("Can I give blood? ",
            style: TextStyle(color: Colors.redAccent,fontSize: 17),
            ),
            SizedBox(
              height: 35,
            ),
            Text("Share on Social media!",
            style: TextStyle(color: Colors.redAccent,fontSize: 17),)
      ],
    );
  }
}