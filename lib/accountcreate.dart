import 'package:blooddonation/add.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  final CollectionReference donor = FirebaseFirestore.instance.collection("donor");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(""),
        title: Text("Account Creation",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.redAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => survey()));
        },
        backgroundColor: Colors.redAccent,
        child: Text("x"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: StreamBuilder( 
          stream: donor.snapshots(),
           builder: (context, AsyncSnapshot snapshot) {
            if(snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot donorsnap = snapshot.data.docs[index];
                  return Container(
                    height: 80,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          child: CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 30,
                            child: Text(donorsnap['group'],
                            style: TextStyle(fontSize: 25),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },);
            }
            return Container();
           }),
    );
  }
}