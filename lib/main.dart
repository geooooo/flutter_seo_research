import 'package:flutter/material.dart';
import 'package:seo/seo.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Рога и копыта',
        home: Scaffold(
          body: Seo.head(
            tags: const [
              MetaTag(name: 'title', content: "Рога и копыта"),
              MetaTag(name: 'description', content: "Рога, копыта"),
            ],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Seo.text(
                  text: "Рога и копыта",
                  style: TextTagStyle.h1,
                  child: const Text("# Рога и копыта"),
                ),
                const SizedBox(height: 10),
                Seo.image(
                  src: "https://wiki.godville.net/images/2/25/%D0%A0%D0%BE%D0%B3%D0%B0_%D0%B8_%D0%9A%D0%BE%D0%BF%D1%8B%D1%82%D0%B0_%28%D0%BB%D0%BE%D0%B3%D0%BE%29.png",
                  alt: "Логотип",
                  child: Image.network(
                    "https://wiki.godville.net/images/2/25/%D0%A0%D0%BE%D0%B3%D0%B0_%D0%B8_%D0%9A%D0%BE%D0%BF%D1%8B%D1%82%D0%B0_%28%D0%BB%D0%BE%D0%B3%D0%BE%29.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 10),
                Seo.text(
                  text: "Описание чудесного товара ...",
                  style: TextTagStyle.p,
                  child: const Text("Описание чудесного товара ..."),
                ),
                const SizedBox(height: 20),
                Seo.text(
                  text: "Товары",
                  style: TextTagStyle.h2,
                  child: const Text("## Товары"),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Seo.link(
                      href: '#main',
                      anchor: "",
                      child: TextButton(
                        onPressed: () => launchUrlString("#main"), 
                        child: const Text("Главная"),
                      ),
                    ),
                    Seo.link(
                      href: '#items',
                      anchor: "",
                      child: TextButton(
                        onPressed: () => launchUrlString("#items"), 
                        child: const Text("Товары"),
                      ),
                    ),
                    Seo.link(
                      href: '#about',
                      anchor: "",
                      child: TextButton(
                        onPressed: () => launchUrlString("#about"), 
                        child: const Text("О нас"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
