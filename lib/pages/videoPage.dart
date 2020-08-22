import 'package:full_web_converter/utilites/toolsUtilities.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoPreviewPage extends StatefulWidget {


  @override
  _VideoPreviewPageState createState() => _VideoPreviewPageState();
}

class _VideoPreviewPageState extends State<VideoPreviewPage> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network("https://mrbebo.com/wp-content/uploads/2020/08/recipe.mp4")..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});

      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ToolsUtilities.mainColor,
        title: Text("Recipe Video Title"),
        centerTitle: true,

      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height ,
              width: double.infinity,

              decoration: BoxDecoration(
                color: ToolsUtilities.mainColor,
                image: DecorationImage(image: NetworkImage(ToolsUtilities.bGImage),fit: BoxFit.cover),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 00.0, right: 10, left: 10),
              ),
            ),
            Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Card(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VideoPlayer(_controller),
                )),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ToolsUtilities.mainColor,
        onPressed: () {
          setState(() {
            _controller.value.isPlaying
                ? _controller.pause()
                : _controller.play();
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}