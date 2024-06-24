import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('chat')
            .orderBy('createdAt', descending: false)
            .snapshots(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.data!.docs.isEmpty || !snapshot.hasData) {
            return const Center(
              child: Text('No messages yet!'),
            );
          }

          final loadedMessages = snapshot.data!.docs;

          return ListView.builder(
            itemCount: loadedMessages.length,
            itemBuilder: (ctx, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          loadedMessages[index]['userImage'],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(loadedMessages[index]['username'],
                            style: const TextStyle()),
                        Text(
                          loadedMessages[index]['text'],
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        });
  }
}
