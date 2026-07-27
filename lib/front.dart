import 'package:flutter/material.dart';
import 'package:mohamed_salah/aboutmosalah.dart';
import 'package:mohamed_salah/achivements.dart';
import 'package:mohamed_salah/bazel.dart';
import 'package:mohamed_salah/chelse .dart';
import 'package:mohamed_salah/fyorintina.dart';
import 'package:mohamed_salah/goodnumbers.dart';
import 'package:mohamed_salah/liverpool.dart';
import 'package:mohamed_salah/mokawlon.dart';
import 'package:mohamed_salah/outfootball.dart';
import 'package:mohamed_salah/roma.dart';
import 'package:mohamed_salah/masera.dart';
import 'package:mohamed_salah/salah_goals.dart';
import 'package:mohamed_salah/selflife.dart';

class front extends StatelessWidget {
  const front({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => SalahVideoScreen()));
          },
          child: Text(
            "جميع أهداف محمد صلاح",
            style: TextStyle(
              color: Colors.red,
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text(
          "محمد صلاح ",
          style: TextStyle(
            color: Colors.red,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 20,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/Mohamed_Salah_Argentina_v_Egypt_7_July_2026-163_(cropped).jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => aboutmosalah()),
                    );
                  },

                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: SizedBox(
                        height: 50,
                        width: 50,
                        child: 
                       ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Mohamed_Salah_Argentina_v_Egypt_7_July_2026-163_(cropped).jpg",
                        ),
                      ),
                      ),
                      trailing: Text(
                        "عن محمد صلاح ",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => mokawlon()));
                  },

                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          30,
                        ), // لعمل شكل دائري ممتاز
                        child: Image.asset(
                          "images/moka.webp",
                          fit: BoxFit.cover,
                        ),
                      ),

                      trailing: Text(
                        "المقاولون العرب",

                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => bazel()));
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("images/Zenit-bazel_2013_(2).jpg"),
                      ),
                      trailing: Text(
                        " بازل السويسري",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => chelse()));
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Mohamed_Salah_with_Chelsea_-_Jan_2015.jpg",
                        ),
                      ),
                      trailing: Text(
                        "تشيلسي",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => fyorintina()),
                    );
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("images/Mohamed_Salah_2015.jpg"),
                      ),
                      trailing: Text(
                        "فيورينتينا",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => roma()));
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("images/81945.webp"),
                      ),
                      trailing: Text(
                        "روما",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => liverpool()),
                    );
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Mo_Salah_in_UEFA_Super_Cup_2019.jpg",
                        ),
                      ),
                      trailing: Text(
                        "ليفربول",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => masera()));
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Egypt_against_Tunisia_2012.jpg",
                        ),
                      ),
                      trailing: Text(
                        "مسيرته الدولية",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => selflife()));
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Salah_in_press_conference_-_CAF_Awards_2017.jpg",
                        ),
                      ),
                      trailing: Text(
                        "حياته الشخصية",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => outfootball()),
                    );
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Salah_Graffiti_in_Cairo.jpg",
                        ),
                      ),
                      trailing: Text(
                        "خارج كرة القدم",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => ach()));
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/Mo_Salah_in_UEFA_Super_Cup_2019.jpg",
                        ),
                      ),
                      trailing: Text(
                        "الإنجازات",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => goodnumbers()),
                    );
                  },
                  child: Card(
                    color: Colors.black,
                    margin: EdgeInsets.only(top: 40, right: 60, left: 60),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("images/LFC_Parade_2019_03.jpg"),
                      ),
                      trailing: Text(
                        "الأرقام القياسية",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "تطوير </> Omar El-Rayes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
