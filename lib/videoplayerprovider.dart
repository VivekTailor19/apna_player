import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerProvider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;


 void loadvideo()
  {
     videoPlayerController = VideoPlayerController.asset("assets/video/nature.mp4");
     videoPlayerController!.initialize();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        looping: true,
        zoomAndPan: true,
        useRootNavigator: true,
        showControls: true,
        showOptions: true,

    );

  }
}
