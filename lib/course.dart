import 'package:flutter/material.dart';
import 'package:ibs_platform/Java%20Script%20Course.dart';
import 'package:ibs_platform/muloqot.dart';
import 'package:ibs_platform/proekt.dart';
import 'package:ibs_platform/theme/style.dart';
import 'package:video_player/video_player.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            VideoPlayerScreen(),
            Container(
              color: Style.colors.black,
              child: TabBar(
                indicatorColor: Style.colors.primary,
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    child: Text(
                      "Darslar",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Proyekt",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Muloqot",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  JavaCourse(),
                  ProektPage(),
                  MuloqotPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> initializeVideoPlayerFuture;
  double value = 20;
  late String position;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(
      'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    );

    initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  String videoposition(Duration duration) {
    late String val;
    int minute = duration.inSeconds ~/ 60;
    int seconds = duration.inSeconds % 60;

    String fixedSeconds = seconds >= 10 ? "$seconds" : "0$seconds";

    val = duration.inSeconds > 60
        ? "0$minute : $fixedSeconds"
        : "00:$fixedSeconds";
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.colors.black,
      child: Column(
        children: [
          ValueListenableBuilder(
            valueListenable: _controller,
            builder: (_, VideoPlayerValue controller, __) {
              return FutureBuilder(
                future: initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        children: [
                          VideoPlayer(_controller),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "${videoposition(controller.position)} / ${videoposition(controller.duration)}",
                              style: Style.courcename
                                  .copyWith(color: Style.colors.white),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                },
              );
            },
          ),
          VideoProgressIndicator(
            _controller,
            allowScrubbing: true,
            padding: EdgeInsets.zero,
            colors: VideoProgressColors(
              backgroundColor: Style.colors.grey,
              bufferedColor: Style.colors.grey,
              playedColor: Style.colors.primary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Duration currentPosition = _controller.value.position;
                  Duration targetPosition =
                      currentPosition - const Duration(seconds: 5);
                  _controller.seekTo(targetPosition);
                },
                icon: Icon(
                  Icons.skip_previous_rounded,
                  size: 25,
                  color: Style.colors.primary,
                ),
              ),
              IconButton(
                color: Style.colors.black,
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                icon: _controller.value.isPlaying
                    ? Icon(
                        Icons.pause,
                        size: 35,
                        color: Style.colors.primary,
                      )
                    : Icon(
                        Icons.play_arrow_rounded,
                        size: 35,
                        color: Style.colors.primary,
                      ),
              ),
              IconButton(
                onPressed: () {
                  Duration currentPosition = _controller.value.position;
                  Duration targetPosition =
                      currentPosition + const Duration(seconds: 5);
                  _controller.seekTo(targetPosition);
                },
                icon: Icon(
                  Icons.skip_next_rounded,
                  size: 25,
                  color: Style.colors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
