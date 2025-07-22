import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as inner_shadow;

import '../../../colors.dart';

class CodeSnippets extends StatelessWidget {
  final List<LayoutBuilder> codeSnippetsContent;
  final List<String> filenames;

  const CodeSnippets({
    super.key,
    required this.codeSnippetsContent,
    required this.filenames,
  });

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
        decoration: inner_shadow.BoxDecoration(
          color: ThemeColors.codeBackground,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            inner_shadow.BoxShadow(
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
          children: [
            CodeSnippetElement(
              filenames: filenames,
              codeSnippetsContent: codeSnippetsContent,
            ),
          ],
        ),
      ),
    );
  }
}

class CodeSnippetElement extends StatefulWidget {
  final List<LayoutBuilder> codeSnippetsContent;
  final List<String> filenames;

  const CodeSnippetElement({
    super.key,
    required this.codeSnippetsContent,
    required this.filenames,
  });

  @override
  CodeSnippetElementState createState() => CodeSnippetElementState();
}

class CodeSnippetElementState extends State<CodeSnippetElement> {
  int focusedIndex = 0;

  late List<ValueNotifier<bool>> tabFocusStates;

  @override
  void initState() {
    super.initState();
    tabFocusStates = List.generate(3, (_) => ValueNotifier(false));
    setFocusedTab(0);
  }

  @override
  void dispose() {
    for (var notifier in tabFocusStates) {
      notifier.dispose();
    }
    super.dispose();
  }

  void setFocusedTab(int index) {
    setState(() {
      focusedIndex = index;
      for (int i = 0; i < tabFocusStates.length; i++) {
        tabFocusStates[i].value = (i == index);
      }
    });
  }

  late final List<String> names = widget.filenames;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: screenSize.width * 0.85,
        height: screenSize.height * 0.85,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Row(
                children: List.generate(3, (i) {
                  return SnippetTab(
                    index: i,
                    name: names[i],
                    focusNotifier: tabFocusStates[i],
                    onFocusRequested: () => setFocusedTab(i),
                  );
                }),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return widget.codeSnippetsContent[focusedIndex];
                },
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
  final String name;
  final ValueNotifier<bool> focusNotifier;
  final VoidCallback onFocusRequested;

  const SnippetTab({
    super.key,
    required this.onFocusRequested,
    required this.index,
    required this.name,
    required this.focusNotifier,
  });

  @override
  SnippetTabState createState() => SnippetTabState();
}

class SnippetTabState extends State<SnippetTab> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        widget.onFocusRequested();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: ValueListenableBuilder<bool>(
          valueListenable: widget.focusNotifier,
          builder: (context, isFocused, child) {
            return Container(
              width: screenWidth * 0.85 / 3,
              height: 40,
              color: isFocused
                  ? ThemeColors.codeBackground
                  : ThemeColors.codeBackgroundDark,
              child: child!,
            );
          },
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
