import 'package:carousel_slider/carousel_slider.dart';
import 'package:cooknow/core/router/router_app.dart';
import 'package:cooknow/features/authentication/presentation/widget/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  static const routeName = '/';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentIndex = 0;
  final items = [
    {
      'title': 'Welcome to CookNow',
      'desc':
          'CookNow is a platform that helps you to find the best recipes for your meals',
      'image': 'https://picsum.photos/305/275',
    },
    {
      'title': 'Find the best recipes',
      'desc': 'Find the best recipes for your meals',
      'image': 'https://picsum.photos/305/276',
    },
    {
      'title': 'Save your favorite recipes',
      'desc': 'Save your favorite recipes and access them anytime',
      'image': 'https://picsum.photos/305/274',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: TextButton(
              onPressed: () => context.go(RouteName.auth),
              child: const Text("Bỏ qua",
                  style: TextStyle(
                      color: Color.fromRGBO(221, 91, 25, 0.8), fontSize: 16)),
            ),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            height: 400,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Image.network(i['image']!),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          width: 240,
                          child: Text(
                            i['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 240,
                          child: Text(
                            i['desc']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            );
          }).toList(),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((url) {
              int index = items.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? const Color.fromRGBO(221, 91, 25, 0.8)
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ),
        AuthButton(
          'Tiếp tục',
          onPressed: () {},
        ),
      ],
    ));
  }
}
