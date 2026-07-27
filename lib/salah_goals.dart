import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

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
    // ✅ فيديو جميع أهداف محمد صلاح الرسمي من قناة ليفربول
    _controller = YoutubePlayerController.fromVideoId(
      videoId: 'ecyrUeqkqYI',
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        mute: false,
        enableJavaScript: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      aspectRatio: 16 / 9,
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
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: player,
                ),
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
    _controller.close();
    super.dispose();
  }
}