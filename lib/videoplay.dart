import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_play/videoplayerprovider.dart';

class VideoPlay_Screen extends StatefulWidget {
  const VideoPlay_Screen({Key? key}) : super(key: key);

  @override
  State<VideoPlay_Screen> createState() => _VideoPlay_ScreenState();
}

class _VideoPlay_ScreenState extends State<VideoPlay_Screen> {

  VideoPlayerProvider? vppT;
  VideoPlayerProvider? vppF;

  @override
  void initState() {
    super.initState();
    Provider.of<VideoPlayerProvider>(context,listen: false).loadvideo();
  }


  @override
  Widget build(BuildContext context) {

    vppT = Provider.of<VideoPlayerProvider>(context,listen: true);
    vppF = Provider.of<VideoPlayerProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            // height: 400,
            // width: 300,
            child: Chewie(
              controller: vppT!.chewieController!,
            ),
          ),
        ),
      ),
    );
  }
}
