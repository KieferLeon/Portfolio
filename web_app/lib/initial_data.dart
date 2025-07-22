import 'Content/colors.dart';
import 'Content/code_snippets/code_snippets.dart';
import 'Content/project/project_content/project.dart';
import 'Content/tech_skills/tech_content/tech.dart';
import 'Icons/Language_Icons/c_sharp.dart';
import 'Icons/Language_Icons/dart.dart';
import 'Icons/Language_Icons/dot_net.dart';
import 'Icons/Language_Icons/flutter.dart';
import 'Icons/Language_Icons/swift.dart';
import 'Icons/Language_Icons/unity.dart';

class AppDataInitializer {
  late Tech cSharp;
  late Tech swift;
  late Tech dart;
  late Tech dotNet;
  late Tech unity;
  late Tech flutter;
  late Project uno;
  late Project unityGame;
  late Project portfolio;

  AppDataInitializer() {
    cSharp = Tech(
      name: "CSharp",
      pageRoute: "/CSharp",
      techIcon: CSharpIcon(selected: true),
      techColor: ThemeColors.cSharp,
      projects: [],
    );

    swift = Tech(
      name: "Swift",
      pageRoute: "/Swift",
      techIcon: SwiftIcon(selected: true),
      techColor: ThemeColors.swift,
      projects: [],
    );

    dart = Tech(
      name: "Dart",
      pageRoute: "/Dart",
      techIcon: DartIcon(selected: true),
      techColor: ThemeColors.dart,
      projects: [],
    );

    dotNet = Tech(
      name: ".Net",
      pageRoute: "/DotNet",
      techIcon: DotNetIcon(selected: true),
      techColor: ThemeColors.dotNet,
      projects: [],
    );

    unity = Tech(
      name: "Unity",
      pageRoute: "/Unity",
      techIcon: UnityIcon(selected: true),
      techColor: ThemeColors.unity,
      projects: [],
    );

    flutter = Tech(
      name: "Flutter",
      pageRoute: "/Flutter",
      techIcon: FlutterIcon(selected: true),
      techColor: ThemeColors.dart,
      projects: [],
    );

    uno = Project(
      name: "Uno",
      pageRoute: "/Uno",
      previewImagePath: "assets/project_images/uno/uno_menu.png",
      videoPath: "assets/project_images/uno/uno_gameplay.mp4",
      languages: [],
      frameworks: [],
      codeSnippetsContent: [
        CodeSnippetLibary.cSharp.cardHover(),
        CodeSnippetLibary.cSharp.sortHand(),
        CodeSnippetLibary.cSharp.nextTurn(),
      ],
      codeSnippetsFiles: CodeSnippetLibary.cSharp.filenames,
      hasGithub: false,
    );
    unityGame = Project(
      name: "Unity Spiel",
      pageRoute: "/UnitySpiel",
      previewImagePath: "assets/project_images/unity/unity_charakter.png",
      videoPath: "assets/project_images/unity/unity_gameplay.mp4",
      languages: [],
      frameworks: [],
      codeSnippetsContent: [
        CodeSnippetLibary.unity.attack(),
        CodeSnippetLibary.unity.getDamage(),
        CodeSnippetLibary.unity.roomSpawning(),
      ],
      codeSnippetsFiles: CodeSnippetLibary.unity.filenames,
      hasGithub: false,
    );
    portfolio = Project(
      name: "Portfolio",
      pageRoute: "/Portfolio",
      previewImagePath: "assets/project_images/portfolio/portfolio_preview.png",
      videoPath: "assets/project_images/uno/uno_gameplay.mp4",
      languages: [],
      frameworks: [],
      codeSnippetsContent: [
        CodeSnippetLibary.portfolio.animation(),
        CodeSnippetLibary.portfolio.language(),
        CodeSnippetLibary.portfolio.project(),
      ],
      codeSnippetsFiles: CodeSnippetLibary.portfolio.filenames,

      hasGithub: false,
    );

    //Languags
    cSharp.projects.add(uno.preview);
    cSharp.projects.add(unityGame.preview);

    dart.projects.add(portfolio.preview);

    //Frameworks
    dotNet.projects.add(uno.preview);

    unity.projects.add(unityGame.preview);

    flutter.projects.add(portfolio.preview);

    //Projects
    uno.languages.add(cSharp.createTechWidget(size: 200));
    uno.frameworks.add(dotNet.createTechWidget(size: 200));

    unityGame.languages.add(cSharp.createTechWidget(size: 200));
    unityGame.frameworks.add(cSharp.createTechWidget(size: 200));

    portfolio.languages.add(dart.createTechWidget(size: 200));
    portfolio.languages.add(cSharp.createTechWidget(size: 200));
    portfolio.frameworks.add(flutter.createTechWidget(size: 200));
  }
}
