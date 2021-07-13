import 'dart:io';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class CustomShowFileVideoWidget extends StatefulWidget {
  File videoFile;
  Function removeFunction;

  CustomShowFileVideoWidget(
      {@required this.videoFile, @required this.removeFunction});

  @override
  _CustomShowFileVideoWidgetState createState() =>
      _CustomShowFileVideoWidgetState();
}

class _CustomShowFileVideoWidgetState extends State<CustomShowFileVideoWidget> {
  VideoPlayerController _controller;
  bool _isPress = false;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(widget.videoFile);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(false);
    _controller.setVolume(1.0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                      AnimatedOpacity(
                        duration: Duration(milliseconds: 250),
                        opacity: _isPress ? 0 : 1,
                        child: FloatingActionButton(
                          backgroundColor: Colors.red,
                          onPressed: () {
                            setState(() {
                              if (_controller.value.isPlaying) {
                                _isPress = false;
                                _controller.pause();
                              } else {
                                _isPress = true;
                                _controller.play();
                              }
                            });
                          },
                          child: Icon(
                            _controller.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(color: Colors.red),
                  );
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: widget.removeFunction,
              icon: Icon(Icons.highlight_remove_rounded),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
