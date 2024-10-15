import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> posts = ['post0', 'post1', 'post2', 'post3', 'post4', 'post5', 'post6', 'post7'];
    final List<String> story = ['story0', 'story1', 'story2', 'story3', 'story4', 'story5', 'story6', 'story7'];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Horizontal ListView.builder
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 10, 0, 0),
                child: Container(alignment: AlignmentDirectional.centerStart, child: const Text("Horizontal", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: 100, // Fixed height for horizontal ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    return CircleItem(story[index]);
                  },
                ),
              ),

              // Vertical ListView.builder
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20, 0, 0),
                child: Container(alignment: AlignmentDirectional.centerStart, child: const Text("Vertical", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(), // Disable separate scrolling
                shrinkWrap: true, // Make ListView take only needed space
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return BoxItem(posts[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoxItem extends StatelessWidget {
  final String txt;
  const BoxItem(this.txt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(30)
          ),
        child: Text(txt, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
      ),
    );
  }
}

class CircleItem extends StatelessWidget {
  final String txt;
  const CircleItem(this.txt, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.deepPurple[200],
            shape: BoxShape.circle
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(txt, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
        ),
      ),
    );
  }
}
