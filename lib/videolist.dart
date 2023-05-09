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

  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<VideoPlayerProvider>(context,listen: false).loadvideo();
  // }


  @override
  Widget build(BuildContext context) {

    vppT = Provider.of<VideoPlayerProvider>(context,listen: true);
    vppF = Provider.of<VideoPlayerProvider>(context,listen: false);

    return SafeArea(
      child: Scaffold(

        appBar: AppBar(centerTitle:true,elevation:0,title: Text("Video Player",style: TextStyle(color: Colors.teal.shade600),),backgroundColor: Colors.white,),
        backgroundColor: Colors.white,
        body: ListView.builder(

          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {

                Provider.of<VideoPlayerProvider>(context,listen: false).loadvideo("${vppT!.videos[index].path}");
                Navigator.pushNamed(context, "viewvideo",arguments: index);

              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [BoxShadow(color: Colors.teal.shade300,blurStyle: BlurStyle.outer,blurRadius: 5)],
                      image: DecorationImage(image: NetworkImage("${vppT!.videos[index].poster}"),fit: BoxFit.fill,)
                  ),
                ),
              ),
            );
          },
          itemCount: vppT!.videos.length,

        ),
      ),
    );
  }
}


// Container(
// // height: 400,
// // width: 300,
// child: Chewie(
// controller: vppT!.chewieController!,
// ),
// ),