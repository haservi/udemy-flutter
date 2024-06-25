import 'package:chat_app/widgets/message_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticatedUser = FirebaseAuth.instance.currentUser!;

    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chat')
          .orderBy('createdAt', descending: true)
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
          padding: const EdgeInsets.only(
            bottom: 40,
            left: 13,
            right: 13,
          ),
          reverse: true,
          itemCount: loadedMessages.length,
          itemBuilder: (ctx, index) {
            final chatMessage = loadedMessages[index].data();
            final nextChatMessage = index + 1 < loadedMessages.length
                ? loadedMessages[index + 1].data()
                : null;

            final currentMessageUserId = chatMessage['userId'];
            final nextMessageUserId =
                nextChatMessage != null ? nextChatMessage['userId'] : null;
            final nextUserIsSame = nextMessageUserId == currentMessageUserId;

            if (nextUserIsSame) {
              return MessageBubble.second(
                message: chatMessage['text'],
                isMe: authenticatedUser.uid == currentMessageUserId,
              );
            } else {
              return MessageBubble.first(
                userImage: chatMessage['userImage'],
                username: chatMessage['username'],
                message: chatMessage['text'],
                isMe: authenticatedUser.uid == currentMessageUserId,
              );
            }
          },
        );
        //   itemCount: loadedMessages.length,
        //   itemBuilder: (ctx, index) {
        //     return Container(
        //       margin: const EdgeInsets.symmetric(
        //         horizontal: 10,
        //         vertical: 10,
        //       ),
        //       child: Row(
        //         children: [
        //           Container(
        //             margin: const EdgeInsets.only(right: 16),
        //             child: CircleAvatar(
        //               backgroundImage: NetworkImage(
        //                 loadedMessages[index]['userImage'],
        //               ),
        //             ),
        //           ),
        //           Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text(loadedMessages[index]['username'],
        //                   style: const TextStyle()),
        //               Text(
        //                 loadedMessages[index]['text'],
        //               ),
        //             ],
        //           )
        //         ],
        //       ),
        //     );
        //   },
        // );
      },
    );
  }
}
