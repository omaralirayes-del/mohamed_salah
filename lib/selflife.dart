import 'package:flutter/material.dart';

class selflife extends StatelessWidget {
  const selflife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "حياته الشخصية وإسهاماته",
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
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Image.asset("images/Mo_Salah_in_UEFA_Super_Cup_2019.jpg", fit: BoxFit.cover),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    """حياته الشخصية
                    نشأ صلاح في أسرة بسيطة مكونة من أب يعمل في التجارة وأم ربة منزل وأخ وأخت، وكانت ظروف الأسرة المالية الصعبة عائقًا بينه وبين الالتحاق بجامعة كبيرة.

في 18 ديسمبر عام 2013 تزوج محمد صلاح من (ماجي محمد) زميلته بالمدرسة. ابنتهما مكة من مواليد 2014، سميت على تيمنا بمدينة مكة المكرمة. ولديه ابنة أخرى، كيان، ولدت عام 2020. ويأتي السبب وراء سرعة زواجه أنه أراد الاستقرار مبكرًا، وخوفه من تردد شائعات عن علاقة بينه وبين أي فتاة أوروبية مع احترافه في بازل السويسري وأصر صلاح على اصطحاب أسرته معه في سويسرا أثناء احترافه في بازل وإنجلترا في فترة انضمامه لفريق تشيلسي، ولم تتمكن أسرته من السفر إلى إيطاليا في بداية احترافه في فيورنتينا، بسبب عدم إصدار جواز سفر لنجلته مكة ولكنهم انضموا إليه بعد ذلك.

صلاح مسلم ويحتفل بالأهداف التي يسجلها من خلال السجود. وبخصوص احتفاله الشهير بالأهداف بهذه الطريقة، قال صلاح لشبكة سي إن إن: «إنه شيء مثل الدعاء أو الشكر لله على ما حصلت عليه، إنه مجرد دعاء أدعوه لتحقيق الفوز. لقد اعتدت على فعلت ذلك دائمًا منذ أن كنت صغيراً في كل مكان»
""",      style: TextStyle(color: Colors.white, fontSize: 18),
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