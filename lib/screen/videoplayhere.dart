import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_play/videoplayerprovider.dart';

class VideoPlayHere extends StatefulWidget {
  const VideoPlayHere({Key? key}) : super(key: key);

  @override
  State<VideoPlayHere> createState() => _VideoPlayHereState();
}

class _VideoPlayHereState extends State<VideoPlayHere> {

  VideoPlayerProvider? vppT;
  VideoPlayerProvider? vppF;

  @override
  Widget build(BuildContext context) {
    vppT = Provider.of<VideoPlayerProvider>(context,listen: true);
    vppF = Provider.of<VideoPlayerProvider>(context,listen: false);
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            onPressed: (){

              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.black,
        title: Text("${vppT!.videos[index].name}",style: TextStyle(color: Colors.teal),),),
        body: Chewie(
          controller: vppT!.chewieController!,
        ),
        ),

    );
  }
}
