import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ----------------------- Video Controller ------------------
  late VideoPlayerController _videoPlayerController;
  bool _isVideoEnded = false;

  // ----------------------- Video Initialize ------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse('https://test-videos.co.uk/vids/bigbuckbunny/mp4/h264/1080/Big_Buck_Bunny_1080_10s_5MB.mp4')
    )..initialize().then((value)
    {
      setState(() {});
    });

    _videoPlayerController.addListener(() {
      final bool isEnded = _videoPlayerController.value.position >= _videoPlayerController.value.duration;

      if (isEnded) {
        setState(() {
          _isVideoEnded = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Video Player", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue),

      // ----------------------- Branch 47 ==> Video Player Widget ------------------

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
                builder: (context) {

                  if(_videoPlayerController.value.isInitialized) {
                    return AspectRatio(
                        aspectRatio: _videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(_videoPlayerController)
                    );

                  } else {
                    return CircularProgressIndicator();
                  }
                }
            ),

            SizedBox(height: 16),
            IconButton(
                onPressed: (){
                  setState(() {
                    _videoPlayerController.value.isPlaying ? _videoPlayerController.pause() : _videoPlayerController.play();
                  });
                },
              //icon: Icon(_videoPlayerController.value.isPlaying ? Icons.pause : Icons.play_circle)
              icon: Builder(
                  builder: (context){


                    final isPlaying = _videoPlayerController.value.isPlaying;

                    if (_isVideoEnded  || !isPlaying) {
                      return Icon(Icons.play_circle);
                    } else {
                      return Icon(Icons.pause);
                    }

                  }
              ),
            )
          ],
        )

      ),
    );
  }
}