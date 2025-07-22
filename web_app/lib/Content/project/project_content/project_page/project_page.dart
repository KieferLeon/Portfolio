import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_svg/svg.dart';

import '../../../colors.dart';
import '../../../tech_skills/tech_content/tech_widget.dart';
import '../../../ui_elements.dart';

import 'code_snippets.dart';

class ProjectPage extends StatelessWidget {
  final String name;
  final List<TechWidget> languages;
  final List<TechWidget> frameworks;
  final List<RichText> codeSnippetsContent;
  final List<String> filenames;
  final bool hasGithub;
  final String videoPath;

  const ProjectPage({
    super.key,
    required this.name,
    required this.languages,
    required this.frameworks,
    required this.codeSnippetsContent,
    required this.filenames,
    required this.hasGithub,
    required this.videoPath,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: UiNavigation(color: ThemeColors.black),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: screenWidth * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(name, style: TextStyle(fontSize: 140)),
                        SizedBox(height: 50),
                        ExpandableButton(
                          buttonColor: ThemeColors.black,
                          buttonText: "Beschreibung",
                        ),
                        SizedBox(height: 50),
                        ProjectTechStack(
                          languages: languages,
                          frameworks: frameworks,
                        ),
                        SizedBox(height: 200),
                        SizedBox(
                          width: screenWidth * 0.7,
                          child: ClickableVideo(videoPath: videoPath),
                        ),
                        SizedBox(height: 200),
                        CodeSnippets(
                          filenames: filenames,
                          codeSnippetsContent: codeSnippetsContent,
                        ),
                        if (hasGithub) ...[
                          SizedBox(height: 200),
                          GitHubButton(),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectTechStack extends StatelessWidget {
  final List<TechWidget> languages;
  final List<TechWidget> frameworks;

  const ProjectTechStack({
    super.key,
    required this.languages,
    required this.frameworks,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.8,
      child: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.4,
            child: Column(
              spacing: 10,
              children: [
                Text("Sprachen", style: TextStyle(fontSize: 50)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 30,
                  children: languages,
                ),
              ],
            ),
          ),

          SizedBox(
            width: screenWidth * 0.4,
            child: Column(
              spacing: 10,
              children: [
                Text("Frameworks", style: TextStyle(fontSize: 50)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: frameworks,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClickableVideo extends StatefulWidget {
  final String videoPath;

  const ClickableVideo({super.key, required this.videoPath});

  @override
  State<ClickableVideo> createState() => _ClickableVideoState();
}

class _ClickableVideoState extends State<ClickableVideo> {
  late final VideoPlayerController _videoController;
  bool _videoInitalized = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(widget.videoPath);

    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    await _videoController.initialize();

    setState(() {
      _videoInitalized = true;
    });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  void _handleClick() {
    if (!_videoInitalized) return;

    if (_videoController.value.isPlaying) {
      _videoController.pause();
    } else {
      _videoController.play();
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: _videoInitalized
                ? VideoPlayer(_videoController)
                : Container(
                    color: Colors.black,
                    child: CircularProgressIndicator(),
                  ),
          ),

          Positioned.fill(
            child: GestureDetector(
              onTap: _handleClick,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(color: Colors.transparent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GitHubButton extends StatelessWidget {
  const GitHubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 80,
      decoration: BoxDecoration(
        color: ThemeColors.black,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "View On Github",
              style: TextStyle(fontSize: 40, color: ThemeColors.white),
            ),

            SvgPicture.asset("assets/git_hub_logo.svg", width: 60, height: 60),
          ],
        ),
      ),
    );
  }
}
