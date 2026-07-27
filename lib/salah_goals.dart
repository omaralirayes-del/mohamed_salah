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
    
    // استبدل هذا المعرف بـ ID الفيديو المطلوب من يوتيوب
    const String videoId = "0cgaqJWAbT4"; 

    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        enableCaption: true,
        isLive: false,
        forceHD: false, // لترك الجودة تتكيف تلقائياً مع سرعة الإنترنت
      ),
    );
  }

  @override
  void deactivate() {
    // إيقاف تشغيل الفيديو مؤقتاً عند التنقل بين الشاشات
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      // يسمح بدعم الوضع الأفقي (Full Screen) تلقائياً أثناء مشاهدة الفيديو
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
                // عرض مشغل الفيديو
                player,
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "شاهد جميع أهداف الأسطورة محمد صلاح منذ بدايته وحتى الآن!",
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
}


    