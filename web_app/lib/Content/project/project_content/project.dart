import 'package:flutter/material.dart';

import '../../tech_skills/tech_content/tech_widget.dart';
import 'project_preview.dart';
import 'project_page/project_page.dart';

class Project {
  final String name;
  final String pageRoute;
  final String previewImagePath;
  final String videoPath;

  final List<TechWidget> languages;
  final List<TechWidget> frameworks;

  final List<RichText> codeSnippetsContent;
  final List<String> codeSnippetsFiles;
  final bool hasGithub;

  Project({
    required this.name,
    required this.pageRoute,
    required this.previewImagePath,
    required this.videoPath,
    required this.languages,
    required this.frameworks,
    required this.codeSnippetsContent,
    required this.codeSnippetsFiles,
    required this.hasGithub,
  });

  late final ProjectElement preview = ProjectElement(
    name: name,
    imageRoute: previewImagePath,
    projectRoute: pageRoute,
  );

  late final ProjectPage projectPage = ProjectPage(
    name: name,
    languages: languages,
    frameworks: frameworks,
    videoPath: videoPath,
    codeSnippetsContent: codeSnippetsContent,
    filenames: codeSnippetsFiles,
    hasGithub: hasGithub,
  );
}
