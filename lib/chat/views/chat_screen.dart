import 'package:agora_video_calling/chat/views/video_call_screen.dart';
import 'package:agora_video_calling/chat/widget/mesage_bubble.dart';
import 'package:agora_video_calling/chat/widget/message_textfield.dart';
import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Chat"),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const VideoCallScreen()),
            ),
            icon: Icon(Icons.video_camera_front),
            ),
      
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.only(bottom: 16),
              reverse: true,
              itemBuilder: (_, index) => _messages[index], 
              separatorBuilder: (_, __) => SizedBox(height: 16,), 
              itemCount: _messages.length),
          ),
          MesssageTextField(),
        ],
      ),
    );
  }
}

const _messages =<MessageBubble>[
  MessageBubble(
    profileImageUrl: ('https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8'), 
    message: 'this app woumd be perfect if it had a video chat', 
    date: 'Sep 16, 8:50 PM',
    isReceiver: true,
    ),
  MessageBubble(
    profileImageUrl: ('https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8'), 
    message: 'this app woumd be perfect if it had a video chat', 
    date: 'Sep 16, 8:50 PM',
    isReceiver: true,
    ),
  MessageBubble(
    profileImageUrl: ('https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8'), 
    message: 'this app woumd be perfect if it had a video chat', 
    date: 'Sep 16, 8:50 PM',
    isReceiver: true,),
  MessageBubble(
    profileImageUrl: ('https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8'), 
    message: 'this app woumd be perfect if it had a video chat', 
    date: 'Sep 16, 8:50 PM',
    isReceiver: false,
    ),
  MessageBubble(
    profileImageUrl: ('https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8'), 
    message: 'this app woumd be perfect if it had a video chat', 
    date: 'Sep 16, 8:50 PM',
    isReceiver: true,
    ),
  MessageBubble(
    profileImageUrl: ('https://images.unsplash.com/photo-1650419743194-c28ccbbcb7b8'), 
    message: 'this app woumd be perfect if it had a video chat', 
    date: 'Sep 16, 8:50 PM',
    isReceiver: false,
    ),

];