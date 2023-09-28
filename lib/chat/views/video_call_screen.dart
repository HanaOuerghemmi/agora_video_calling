import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {

  final AgoraClient _client  =AgoraClient(
    
    agoraConnectionData: AgoraConnectionData(
      appId: '7057bc6bef614afca5975285149ee0a4',
      channelName: 'fluttering',
      tempToken: '007eJxTYLANdtv5deGCo9uW9h9+Vbh2doHA5j8fsn4eNpRX2WDPKuanwGBuYGqelGyWlJpmZmiSmJacaGppbmpkYWpoYpmaapBoEjdTKLUhkJHh3L9PjIwMEAjiczGk5ZSWlKQWZealMzAAALrwJBY=')
    
     );
  @override
  void initState(){
    super.initState();
      _initAgora();
  }

  Future<void> _initAgora() async{
    await _client.initialize();
  }
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Video Call'),
        ), 
        body: SafeArea(child: Stack(children: [
          AgoraVideoViewer(
            client: _client,
            layoutType: Layout.floating,
            showNumberOfUsers: true,
            ),
          AgoraVideoButtons(
            client: _client,
            enabledButtons: [
              BuiltInButtons.toggleCamera,
              BuiltInButtons.callEnd,
              BuiltInButtons.toggleMic,
            ],
            )
        ],)),
      ),
    );
  }
}