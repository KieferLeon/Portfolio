import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_app/Icons/Language_Icons/CSharp.dart';
import 'package:web_app/Icons/Language_Icons/DotNet.dart';
import 'package:web_app/Icons/Language_Icons/Flutter.dart';
import 'package:web_app/Icons/Language_Icons/Swift.dart';
import 'package:web_app/Icons/Language_Icons/Unity.dart';
import '../LangsAndFrameworks/LangsAndFrameworks .dart';
import 'dart:ui' as ui;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as InnerShadow;
import '../Colors.dart';

import 'package:video_player/video_player.dart';

import '../ui_elements.dart';

import '../code_snippets/code_snippets.dart';

class ProjectInfo extends StatelessWidget {
  final String name;
  final Tech language;
  final Tech framework;

  const ProjectInfo({
    super.key,
    required this.name,
    required this.language,
    required this.framework,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenWidth,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 40,

                          color: ThemeColors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.home_rounded,
                          size: 40,

                          color: ThemeColors.black,
                        ),
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamedAndRemoveUntil('/', (route) => false);
                        },
                      ),
                    ],
                  ),
                ),

                Center(
                  child: SizedBox(
                    width: screenWidth * 0.9,
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
                        Container(
                          width: screenWidth * 0.8,
                          child: Row(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.4,
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Sprachen",
                                      style: TextStyle(fontSize: 50),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      height: screenWidth * 0.15,
                                      child: language,
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(
                                width: screenWidth * 0.4,
                                child: Column(
                                  spacing: 10,
                                  children: [
                                    Text(
                                      "Frameworks",
                                      style: TextStyle(fontSize: 50),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.15,
                                      height: screenWidth * 0.15,
                                      child: framework,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 200),
                        SizedBox(),
                        SizedBox(
                          width: screenWidth * 0.7,
                          child: ClickableVideo(),
                        ),
                        SizedBox(height: 200),
                        CodeSnippets(),
                        SizedBox(height: 200),
                        GitHubButton(),
                        SizedBox(height: 200),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ClickableVideo extends StatefulWidget {
  const ClickableVideo({super.key});

  @override
  State<ClickableVideo> createState() => _ClickableVideoState();
}

class _ClickableVideoState extends State<ClickableVideo> {
  late final VideoPlayerController _videoController;
  bool _videoInitalized = false;

  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
      "assets/project_images/uno/uno_clip_gameplay.mp4",
    );

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

class CodeSnippets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.9,
      decoration: BoxDecoration(
        color: ThemeColors.codeBackground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: ui.Color.fromARGB(100, 0, 0, 0),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(3, 3),
          ),
        ],
      ),

      child: Container(
        decoration: InnerShadow.BoxDecoration(
          color: ThemeColors.codeBackground,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            InnerShadow.BoxShadow(
              color: ui.Color.fromARGB(140, 255, 255, 255),
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(1, 1),
              inset: true,
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [codeSnippetElement()],
        ),
      ),
    );
  }
}

class codeSnippetElement extends StatefulWidget {
  @override
  _codeSnippetElement createState() => _codeSnippetElement();
}

class _codeSnippetElement extends State<codeSnippetElement> {
  int focusedIndex = 0;

  void tabSelection(int selectedTab) {
    setState(() {
      focusedIndex = selectedTab;

      for (int i = 0; i < 3; i++) {
        if (i != focusedIndex) snippetTabs[i].focused = false;
      }
    });
  }

  late final List<String> names = ["Player.cs", "Card.cs", "Game.cs"];

  late final List<SnippetTab> snippetTabs = List.generate(
    3,
    (i) => SnippetTab(
      index: i,
      focused: false,
      name: names[i],
      focusChange: tabSelection,
    ),
  );

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: screenWidth * 0.85,
        height: screenHeight * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              child: Row(
                children: List.generate(3, (i) {
                  return SnippetTab(
                    name: names[i],
                    index: i,
                    focused: i == focusedIndex,
                    focusChange: tabSelection,
                  );
                }),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                width: double.infinity,
                child: focusedIndex == 0
                    ? Container(
                        child: CodeSnippetLibary.cSharp.sortHand(
                          screenHeight * 0.04,
                        ),
                      )
                    : focusedIndex == 1
                    ? Container(
                        child: CodeSnippetLibary.cSharp.cardHover(
                          screenHeight * 0.035,
                        ),
                      )
                    : Container(
                        child: CodeSnippetLibary.cSharp.nextTurn(
                          screenHeight * 0.04,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetTab extends StatefulWidget {
  final int index;
  final void Function(int) focusChange;
  bool focused = true;
  String name;

  SnippetTab({
    super.key,
    required this.focusChange,
    required this.index,
    required this.focused,
    required this.name,
  });

  @override
  _SnippetTab createState() => _SnippetTab();
}

class _SnippetTab extends State<SnippetTab> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          widget.focused = !widget.focused;
          widget.focusChange(widget.index);
        });
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: screenWidth * 0.85 / 3,
          height: 40,
          color: widget.focused
              ? ThemeColors.codeBackground
              : ThemeColors.codeBackgroundDark,
          child: Center(
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 30, color: ThemeColors.white),
            ),
          ),
        ),
      ),
    );
  }
}

/*class codeSnippetElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.25,
      height: screenWidth * 0.25,
      decoration: InnerShadow.BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: ThemeColors.codeBackground,
        boxShadow: [
          InnerShadow.BoxShadow(
            color: ui.Color.fromARGB(150, 0, 0, 0),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(4, 4),
            inset: true,
          ),
          InnerShadow.BoxShadow(
            color: ui.Color.fromARGB(100, 255, 255, 255),
            blurRadius: 3,
            spreadRadius: 1,
            offset: Offset(-4, -4),
            inset: true,
          ),
        ],
      ),
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.95,
          heightFactor: 0.95,
          child: Container(child: CodeSnippetLibary.sortHand),
        ),
      ),
    );
  }
}*/

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
