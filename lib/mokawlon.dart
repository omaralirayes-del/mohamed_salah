import 'package:flutter/material.dart';

class mokawlon extends StatelessWidget {
  const mokawlon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "بدايته مع المقاولون العرب",
          style: TextStyle(
            color: Colors.red,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 20,
        shadowColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset("images/moka.webp", fit: BoxFit.cover),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    """المقاولون العرب
بدأ صلاح مسيرته الكروية في أندية اتحاد بسيون وعثماثون طنطا، قبل أن ينضم ناشئًا في نادي المقاولون العرب عام 2006، حيث كانت أولى محطاته الإبداعية. خاض محمد صلاح أول مباراة له في الدوري المصري الممتاز في 3 مايو 2010 وكان في الثامنة عشر من عمره أمام نادي المنصورة في لقاء انتهى بالتعادل 1–1 وشارك صلاح بديلًا في هذا اللقاء. في موسم 2010–11، أصبح صلاح لاعباً أساسياً بالفريق، وسجل أول أهدافه في 25 ديسمبر 2010 أمام النادي الأهلي في لقاء انتهى بالتعادل 1–1. ساهمت قدراته ومهاراته العالية وسرعته الفائقة بجعله محل اهتمام وسائل الإعلام.

كان على وشك الانتقال لنادي الزمالك قبل الانتقال لصفوف نادي بازل السويسري، قبل أن يعرقِل انتقاله رئيس نادي الزمالك في هذا الوقت ممدوح عباس، معللاً رفضه بصغر سنه وقلة خبرته.

""",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}