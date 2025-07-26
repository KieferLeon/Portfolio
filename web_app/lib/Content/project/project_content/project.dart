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

  final List<LayoutBuilder> codeSnippetsContent;
  final List<String> codeSnippetsFiles;
  final bool hasGithub;
  final Color projectColor;
  final RichText description;

  Project({
    required this.name,
    required this.pageRoute,
    required this.previewImagePath,
    required this.videoPath,
    required this.languages,
    required this.frameworks,
    required this.codeSnippetsContent,
    required this.codeSnippetsFiles,
    required this.projectColor,
    required this.hasGithub,
    required this.description,
  });

  late final ProjectElement preview = ProjectElement(
    name: name,
    imageRoute: previewImagePath,
    projectRoute: pageRoute,
    projectColor: projectColor,
  );

  late final ProjectPage projectPage = ProjectPage(
    name: name,
    languages: languages,
    frameworks: frameworks,
    videoPath: videoPath,
    codeSnippetsContent: codeSnippetsContent,
    filenames: codeSnippetsFiles,
    projectColor: projectColor,
    hasGithub: hasGithub,
    description: description,
  );
}
