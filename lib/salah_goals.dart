import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SalahVideoScreen extends StatefulWidget {
  const SalahVideoScreen({super.key});

  @override
  State<SalahVideoScreen> createState() => _SalahVideoScreenState();
}

class _SalahVideoScreenState extends State<SalahVideoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    // إعداد المشغل للمكتبة الجديدة
    _controller = YoutubePlayerController(
      initialVideoId: 'ecyrUeqkqYI', // فيديو جميع الأهداف
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        enableCaption: true,
        isLive: false,
        forceHD: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
      ),
      builder: (context, player) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text(
              "جميع أهداف محمد صلاح",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                // عرض المشغل
                player,
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "شاهد جميع 257 هدفاً للأسطورة محمد صلاح مع نادي ليفربول!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}