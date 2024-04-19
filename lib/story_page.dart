import 'package:destini/story_brain.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryBrain storyBrain = StoryBrain();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBody: true,
        body: Stack(
          children: [
            Image.asset(
              "assets/background.png",
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      storyBrain.getStory(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      storyBrain.nextStory(1);
                      setState(() {});
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(color: Colors.red),
                      child: Center(
                          child: Text(
                        storyBrain.getChoice1(),
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      storyBrain.nextStory(2);
                      setState(() {});
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: Center(
                          child: Text(
                        storyBrain.getChoice1(),
                        style: const TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
