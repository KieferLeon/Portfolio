import 'package:flutter/cupertino.dart';
import 'package:web_app/Content/tech_skills/tech_content/tech_widget.dart';
import 'package:web_app/Icons/Language_Icons/tech_icon.dart';

import '../../project/project_content/project_preview.dart';
import 'tech_page/tech_page.dart';

class Tech {
  final String name;
  final String pageRoute;
  final TechIcon techIcon;
  final Color techColor;
  final List<ProjectElement> projects;

  Tech({
    required this.name,
    required this.pageRoute,
    required this.techIcon,
    required this.techColor,
    required this.projects,
  });

  TechWidget createTechWidget({required double size}) {
    return TechWidget(techIcon: techIcon, route: pageRoute, size: size);
  }

  late final TechPage techPage = TechPage(
    techColor: techColor,
    projects: projects,
    techIcon: techIcon,
    name: name,
  );
}
