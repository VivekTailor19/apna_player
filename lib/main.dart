import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_play/screen/videolist.dart';
import 'package:video_play/screen/videoplayhere.dart';
import 'package:video_play/videoplayerprovider.dart';

void main() {
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) =>
          MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => VideoPlayerProvider(),),
            ],

            child: Sizer(
              builder: (context, orientation, deviceType) => MaterialApp(
                debugShowCheckedModeBanner: false,
                routes: {
                  "/":(context) => VideoPlay_Screen(),
                  "viewvideo":(context) => VideoPlayHere(),
                },
              ),
            ),
          ),
      ),
  );
}
