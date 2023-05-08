import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_play/videoplay.dart';
import 'package:video_play/videoplayerprovider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoPlayerProvider(),),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => VideoPlay_Screen(),
        },
      ),
    ),
  );
}
