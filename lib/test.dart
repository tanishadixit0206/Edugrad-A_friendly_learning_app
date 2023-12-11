import 'package:flutter/material.dart';
//import 'package:widgets_article/ccc_carousel_slider_page.dart';
//import 'package:widgets_article/ccc_parallax_scrolling_page.dart';
//import 'package:widgets_article/homla_split_screen_page.dart';
//import 'package:widgets_article/ikea_grid_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Widget Article')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            /* children: [
              _articlePageButton(
                'CCC Product Details',
                const CCCParallaxScrollingPage(),
              ),
              const SizedBox(height: 8),
              _articlePageButton(
                'Ikea',
                const IkeaGridPage(),
              ),
              const SizedBox(height: 8),
              _articlePageButton(
                'CCC Carousel',
                const CCCCarouselSliderPage(),
              ),
              const SizedBox(height: 8),
              _articlePageButton(
                'Homla',
                const HomlaSplitScreenPage(),
              ),
            ],*/
          ),
        ),
      );

  Widget _articlePageButton(String text, Widget page) => ElevatedButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ),
      );
}
