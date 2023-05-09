import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';
import 'package:video_play/videosmodel.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerProvider extends ChangeNotifier
{

  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  bool bgvideo = true;
 void loadvideo(String? videopath)
  {
     videoPlayerController = VideoPlayerController.asset("$videopath");
     videoPlayerController!.initialize();

     chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        allowFullScreen: true,
        looping: true,
        autoPlay: bgvideo,

       // startAt: Duration(seconds: 10),
        //fullScreenByDefault: true,

    );

  }

  List<VideoItem> videos = [
    VideoItem(name: "RamPage",poster: "https://irs.www.warnerbros.com/gallery-v2-mobile-jpeg/movies/node/86336/edit/RAM-FP-090.jpg",path: "assets/video/rampage.mp4"),
    VideoItem(name: "Tom&Jerry",poster: "https://i.ytimg.com/vi/Au63DyjBQ7k/maxresdefault.jpg",path: "assets/video/tom_jerry.mp4"),
    VideoItem(name: "KGF",poster: "https://bsmedia.business-standard.com/_media/bs/img/article/2022-04/14/full/1649945015-4921.jpg",path: "assets/video/kgf.mp4"),
    VideoItem(name: "Nature",poster: "https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg",path: "assets/video/nature.mp4"),
    VideoItem(name: "RRR",poster: "https://img.etimg.com/thumb/msid-90500113,width-1200,height-900,imgsize-115038,overlay-economictimes/photo.jpg",path: "assets/video/rrr.mp4"),
  ];


}
