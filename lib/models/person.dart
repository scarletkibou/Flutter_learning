import 'package:flutter/material.dart';

enum Series {
  gundam(title: 'Mobile Suit Gundam ', color: Colors.blue),
  seed(title: 'Mobile Suit Gundam Seed', color: Colors.red),
  doubleo(title: 'Mobile Suit Gundam 00', color: Colors.green),
  witch(title: 'Mobile Suit Gundam Age', color: Colors.cyan);

  const Series({required this.title, this.color = Colors.purple});
  final String title;
  final Color color;
}

class Pilot {
  Pilot(
      {required this.name,
      required this.age,
      required this.job,
      required this.series,
      required this.img});
  String name;
  int age;
  String job;
  String img;
  Series series;
}

List<Pilot> data = [
  Pilot(
      name: 'Amuro',
      age: 20,
      series: Series.gundam,
      job: 'Gundam pilot',
      img:
          'https://upload.wikimedia.org/wikipedia/en/d/d6/RX-78-2_Gundam_illustration.gif'),
  Pilot(
      name: 'Suletta',
      age: 20,
      series: Series.witch,
      job: 'Gundam pilot',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6cPP5WuJjDJNaO09j0muXvDMs-IFX7bCZ9A&s'),
  Pilot(
      name: 'Kira',
      age: 21,
      job: 'Freedom pilot',
      series: Series.seed,
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjyECn0TPSesE78vBLwObLvGtHqRo8p65Byw&s'),
  Pilot(
      name: 'Athrun',
      age: 22,
      job: 'Justice pilot',
      series: Series.seed,
      img:
          'https://th.gundam.info/about-gundam/series-pages/seedfreedom/gseedfreedom/en/product/2023/10/hg_immortal_justice_gundam_01m_en.jpg'),
  Pilot(
      name: 'Setsuna',
      age: 24,
      job: 'Exia pilot',
      series: Series.doubleo,
      img:
          'https://static.wikia.nocookie.net/gundam/images/d/d9/GN-001_%28Front%29.png/revision/latest/scale-to-width-down/1200?cb=20210804123915'),
  Pilot(
      name: 'Shinn',
      age: 23,
      job: 'Destiny pilot',
      series: Series.seed,
      img:
          'https://static.wikia.nocookie.net/gundam/images/c/cf/Zgmf-x42s.jpg/revision/latest/scale-to-width-down/1200?cb=20211106104809'),
];
