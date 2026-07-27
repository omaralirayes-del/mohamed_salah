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
    // إعداد الكنترولر مع الإعدادات الموصى بها لتجنب الشاشة السوداء
    _controller = YoutubePlayerController.fromVideoId(
      videoId: '0cgaqJWAbT4',
      params: const YoutubePlayerParams(
        showControls: true,
        showFullscreenButton: true,
        mute: false,
        showVideoAnnotations: false,
        enableJavaScript: true, // ✅ تفعيل جافاسكريبت لضمان عمل المشغل
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
                // ✅ إضافة Container حول المشغل لضمان أبعاد متناسقة
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: player,
                ),
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

  @override
  void dispose() {
    // ✅ إغلاق الكنترولر عند الخروج من الشاشة لتحرير الذاكرة
    _controller.close();
    super.dispose();
  }
}