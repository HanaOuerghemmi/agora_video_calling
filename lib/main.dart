import 'package:agora_video_calling/chat/views/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
          iconTheme: IconThemeData(color: Colors.black)
        )
      ),
      builder: (_, child)=> _Unfocus(child: child!),
      home: ChatScreen(),
    );
  }
}

class _Unfocus extends StatelessWidget {
  final Widget child;
  const _Unfocus({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}