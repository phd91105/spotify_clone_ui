import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp()
   // DevicePreview(
   //   enabled: !kReleaseMode,
   //   builder: (context) => const MyApp(), // Wrap your app
   // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cuarteto_ibai.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 32, sigmaY: 32),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 28, bottom: 16),
                          child: Image(
                            image:
                                AssetImage('assets/images/cuarteto_ibai.png'),
                            fit: BoxFit.cover,
                            height: 260,
                            width: 300,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Éxitos España',
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      margin: const EdgeInsets.only(left: 20, top: 38),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 160,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff372b26),
                    Color(0xff121212),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, left: 14),
                      child: Text(
                        'Los hits de ahora en la playlist playlist playlist playlist',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 12, top: 4, bottom: 4),
                      child: Row(
                        children: const [
                          Image(
                            height: 32,
                            width: 32,
                            image: AssetImage('assets/images/Vector.png'),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Spotify',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 14),
                      child: Text(
                        '2.237.746 “me gusta” • 2h 49m',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(
                            Icons.favorite_sharp,
                            color: Color(0xff57b65f),
                            size: 26,
                          ),
                          const SizedBox(width: 24),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              color: const Color(0xff57b65f),
                            ),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 24),
                          const Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                            size: 26,
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Icon(
                              Icons.play_circle_filled_sharp,
                              color: Color(0xff57b65f),
                              size: 68,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
                  child: Column(
                    children: const [
                      Track(),
                      Track(),
                      Track(),
                      Track(),
                      Track(),
                      Track(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff282828),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Library',
            ),
          ],
        ),
      ),
    );
  }
}

class Track extends StatelessWidget {
  const Track({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
        height: 72,
        child: Row(
          children: [
            const Image(
              image: AssetImage('assets/images/cuarteto_ibai.png'),
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 14),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'El cuarteto de Ibai',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: const Color(0xff57b65f),
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Lucas Requena, Ibai Llanos, ortoPilot',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.more_horiz,
              color: Colors.white,
              size: 26,
            )
          ],
        ),
      ),
    );
  }
}
