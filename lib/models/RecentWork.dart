import 'package:flutter/material.dart';

class RecentWork{
  final String image,category,title;
  final int id;

  RecentWork({required this.image, required this.category, required this.title, required this.id});
}

List<RecentWork> recentWorks = [
  RecentWork(image: "assets/images/work_1.png", category: "Graphic Design", title: "New and fresh looking protfolio indeed at the end", id: 1),
  RecentWork(image: "assets/images/work_2.png", category: "Graphic Design", title: "New and fresh looking protfolio indeed at the end", id: 2),
  RecentWork(image: "assets/images/work_3.png", category: "Graphic Design", title: "New and fresh looking protfolio indeed at the end", id: 3),
  RecentWork(image: "assets/images/work_4.png", category: "Graphic Design", title: "New and fresh looking protfolio indeed at the end", id: 4),

];