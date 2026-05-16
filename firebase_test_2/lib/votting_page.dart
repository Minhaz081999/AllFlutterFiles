import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class VottingPage extends StatelessWidget {
  const VottingPage({super.key});

  @override
  Widget build(BuildContext context) {
    VoteParticipant(String id){
      FirebaseFirestore.instance.collection('participants').doc(id).update(
        {
          'votes' : FieldValue.increment(1)
        }
      );
    }

    return StreamBuilder<QuerySnapshot>(
      // calling from Firebase Collection "participants"
      stream: FirebaseFirestore.instance.collection('participants').snapshots(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final participants = snapshot.data!.docs;

        return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 10,
                childAspectRatio: 0.5
            ),
            itemCount: 2,
            itemBuilder: (context, index){
              final doc = participants[index];
              final data = doc.data() as Map<String, dynamic>;

              return Card(
                child: Column(
                  children: [
                    Image.network( data['imageUrl'] ),
                    Text(data['name'],
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text('vote; ${data['votes']}',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                    SizedBox(
                      width: double.maxFinite,

                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white
                            ),

                            onPressed: (){
                              VoteParticipant(doc.id);
                            },

                            child: Text('vote')))
                  ],
                )
              );
            }
        );
      }
    );
  }
}
