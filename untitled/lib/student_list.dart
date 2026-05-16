import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StudentList extends StatelessWidget {
   StudentList({super.key});

  final CollectionReference students = FirebaseFirestore.instance.collection('students');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module23Assignment'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: StreamBuilder<QuerySnapshot>(
        stream: students.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('No students found'));
          }

          final students = snapshot.data!.docs;

          return ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final perStudent = students[index];

              return Card(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(perStudent['rollNumber'].toString()),
                  ),
                  title: Text(perStudent['name']),
                  subtitle: Text(perStudent['course']),
                  trailing: Icon(Icons.emoji_people_sharp),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
