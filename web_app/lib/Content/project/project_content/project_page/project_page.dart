import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/main.dart';

import '../../../colors.dart';
import '../../../tech_skills/tech_content/tech_widget.dart';
import '../../../ui_elements.dart';

import 'code_snippets.dart';

class ProjectPage extends StatelessWidget {
  final String name;
  final List<TechWidget> languages;
  final List<TechWidget> frameworks;
  final List<LayoutBuilder> codeSnippetsContent;
  final List<String> filenames;
  final bool hasGithub;
  final String videoPath;
  final Color projectColor;
  final RichText description;

  const ProjectPage({
    super.key,
    required this.name,
    required this.languages,
    required this.frameworks,
    required this.codeSnippetsContent,
    required this.filenames,
    required this.hasGithub,
    required this.videoPath,
    required this.projectColor,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final fontSize = (screenWidth * 0.05).clamp(60.0, 140.0);

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: UiNavigation(color: projectColor),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    width: screenWidth * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: fontSize,
                            color: projectColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        ExpandableButton(
                          buttonColor: projectColor,
                          buttonText: "Beschreibung",
                          content: description,
                        ),
                        SizedBox(height: 50),
                        ProjectTechStack(
                          languages: languages,
                          frameworks: frameworks,
                          projectColor: projectColor,
                        ),
                        SizedBox(height: 200),
                        SizedBox(
                          width: isMobile(context)
                              ? screenWidth * .9
                              : screenWidth * 0.7,
                          child: ClickableVideo(videoPath: videoPath),
                        ),
                        SizedBox(height: 200),
                        CodeSnippets(
                          filenames: filenames,
                          codeSnippetsContent: codeSnippetsContent,
                        ),
                        SizedBox(height: 200),

                        if (hasGithub) GitHubButton(),
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
  final Color projectColor;

  const ProjectTechStack({
    super.key,
    required this.languages,
    required this.frameworks,
    required this.projectColor,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    List<Widget> content = [
      SizedBox(
        width: isMobile(context) ? screenWidth * 0.8 : screenWidth * 0.4,
        child: Column(
          spacing: 10,
          children: [
            Text(
              "Sprachen",
              style: TextStyle(fontSize: 50, color: projectColor),
            ),
            isMobile(context)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    children: languages,
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    children: languages,
                  ),
          ],
        ),
      ),

      SizedBox(
        width: isMobile(context) ? screenWidth * 0.8 : screenWidth * 0.4,
        child: Column(
          spacing: 10,
          children: [
            Text(
              "Frameworks",
              style: TextStyle(fontSize: 50, color: projectColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: frameworks,
            ),
          ],
        ),
      ),
    ];

    return SizedBox(
      width: screenWidth * 0.8,
      child: isMobile(context)
          ? Column(spacing: 20, children: content)
          : Row(children: content),
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
                : SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Center(
                      child: CircularProgressIndicator(
                        color: ThemeColors.black,
                      ),
                    ),
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
