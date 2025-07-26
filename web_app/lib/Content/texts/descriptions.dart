import 'package:flutter/material.dart';
import '../colors.dart';

class Descriptions {
  static RichText cSharp = cSharpContent();
  static RichText swift = swiftContent();
  static RichText dart = dartContent();

  static RichText dotNet = dotNetContent();
  static RichText unity = unityContent();
  static RichText flutter = flutterContent();

  static RichText uno = unoContent();
  static RichText unityProject = unityProjectContent();
  static RichText portfolio = portfolioContent();
}

RichText cSharpContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text: 'C# ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'wurde von Microsoft entwickelt und ist eine Programmiersprache, die dank des ',
        ),
        TextSpan(
          text: '.NET Frameworks ',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(
          text:
              'zum Entwickeln auf vielen Plattformen eingesetzt werden kann. Mit Hilfe von ',
        ),
        TextSpan(
          text: 'Unity ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'wird C# benutzt, um viele verschiedene Spiele zu programmieren.\n\nWährend der Entwicklung meines Uno Spiels fiel mir auf, dass die Erstellung von Desktop Apps mit ',
        ),
        TextSpan(
          text: 'WPF ',
          style: TextStyle(decoration: TextDecoration.underline),
        ),
        TextSpan(
          text:
              'nach meiner Einschätzung nicht sehr übersichtlich ist, da XML und C# hier stark getrennt sind. Dazu kommt noch, dass ich persönlich die Entwicklung mit XML nicht sehr schlimm finde, aber andere webbasierte Frameworks hier eine bessere Entwicklung ermöglichen.',
        ),
      ],
    ),
  );
}

RichText swiftContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text: 'Apple ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'entwickelte Swift als Ablöse für Objective-C, um als Hauptsprache für diverse Apple-Geräte und Betriebssysteme verwendet zu werden. ',
        ),
        TextSpan(
          text: 'Heutzutage ',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(
          text:
              'ist Swift die Sprache, um auf Apple-Geräten Apps zu entwickeln, kann aber auch auf anderen Geräten genutzt werden ',
        ),
        TextSpan(
          text: 'jedoch nur mit starken Einschränkungen.\n\n',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        TextSpan(
          text:
              'Ich habe Swift mit SwiftUI für mehrere kleinere Projekte benutzt und muss sagen, dass Swift eine der besten Entwicklungserfahrungen bietet, ',
        ),
        TextSpan(
          text:
              'da ohne Probleme Code direkt auf einem Simulator oder dem eigenen Handy getestet werden kann. ',
        ),
        TextSpan(
          text:
              'Dazu kommt noch die Erstellung von UI, die dank Xcode schon angezeigt werden kann, ',
        ),
        TextSpan(
          text: 'ohne die App auszuführen ',
          style: TextStyle(decoration: TextDecoration.underline),
        ),
        TextSpan(
          text:
              'das verhindert ständiges Neustarten.\n\nDer einzige große Nachteil ist, dass all diese guten Features ',
        ),
        TextSpan(
          text: 'nur auf Apple-Geräten ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'möglich sind und somit hinter einem hohen Hardwarepreis verschlossen bleiben.',
        ),
      ],
    ),
  );
}

RichText dartContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text: 'Dart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              ' ist eine von Google entwickelte Programmiersprache, die besonders gut mit dem UI-Toolkit ',
        ),
        TextSpan(
          text: 'Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              ' harmoniert. Gemeinsam ermöglichen sie die plattformübergreifende Entwicklung moderner Apps und Webanwendungen mit nur einer Codebasis.\n\n',
        ),
        TextSpan(
          text: 'Während der Arbeit an meinem Portfolio',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(
          text:
              ' habe ich erlebt, wie effizient sich diese Kombination einsetzen lässt: Flutter erlaubt es, komplexe Benutzeroberflächen mit wenig Aufwand zu gestalten, während Dart durch seine einfache Syntax und starke Typisierung für eine saubere Programmierlogik sorgt. Besonders hilfreich war die ',
        ),
        TextSpan(
          text: '„Hot Reload“-Funktion',
          style: TextStyle(decoration: TextDecoration.underline),
        ),
        TextSpan(
          text:
              ', mit der Änderungen sofort sichtbar werden das beschleunigt die Entwicklungszeit erheblich.\n\n',
        ),
        TextSpan(
          text: 'Die enge Verbindung von Dart und Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              ' zeigt sich auch darin, dass die Sprache speziell für UI-Workflows optimiert wurde. So lassen sich State-Management, Navigation und UI-Elemente direkt im Code logisch und konsistent abbilden.',
        ),
      ],
    ),
  );
}

RichText dotNetContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text: '.NET Framework',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              ' bietet viele Möglichkeiten, um mit C# für viele Verwendungszwecke zu programmieren. ',
        ),
        TextSpan(text: 'Ich habe es in meinem Uno-Spiel eingesetzt. '),
        TextSpan(
          text: '.NET ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'bietet viele Optionen, jedoch würde ich persönlich in den meisten Fällen andere Sprachen und Frameworks bevorzugen, ',
        ),
        TextSpan(text: 'z. B. '),
        TextSpan(
          text: 'Flutter ',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(text: 'für Webanwendungen oder '),
        TextSpan(
          text: 'Electron ',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(text: 'für Desktop-Anwendungen.'),
      ],
    ),
  );
}

RichText unityContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text: 'Unity ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'ist eine der beliebtesten Spiel-Engines weltweit. Dank der Verwendung von ',
        ),
        TextSpan(
          text: 'C# ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'eignet sie sich sowohl für Einsteiger als auch für professionelle Spieleentwickler. Die Engine wird aufgrund ihrer Flexibilität, ihrer großen Community und der umfangreichen Funktionen in zahlreichen kommerziellen und Indie-Spielen eingesetzt.\n\n',
        ),
        TextSpan(text: 'Ich finde, dass '),
        TextSpan(
          text: 'C# ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'hervorragend mit Unity harmoniert. Besonders das objektorientierte Design von ',
        ),
        TextSpan(
          text: 'C# ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'passt sehr gut zum Komponenten-basierten Aufbau von Unity. In Unity wird nahezu jedes Spielelement als Objekt dargestellt, das über verschiedene Komponenten gesteuert wird – eine Denkweise, die stark von objektorientierten Prinzipien geprägt ist. Dadurch wird die Strukturierung des Codes nicht nur logisch und übersichtlich, sondern auch leicht erweiterbar und wiederverwendbar.',
        ),
      ],
    ),
  );
}

RichText flutterContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text: 'Flutter ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'ist ein umfangreiches Framework, mit dem ich plattformübergreifend für Mobile, Desktop und Web entwickeln kann alles aus einer Codebasis. Das spart im Vergleich zu anderen Sprachen und Frameworks spürbar Entwicklungszeit.\n\n',
        ),
        TextSpan(
          text: 'Ich habe Flutter ',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        TextSpan(
          text: 'für meine Portfolio-Website ',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(text: 'eingesetzt und finde, dass die Kombination mit '),
        TextSpan(
          text: 'Dart ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text: 'eine angenehme und produktive Entwicklung ermöglicht.\n\n',
        ),
        TextSpan(text: 'Durch die klare Strukturierung in '),
        TextSpan(
          text: 'Widgets ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(
          text:
              'entsteht übersichtlicher Code, der leicht zu lesen und gut skalierbar ist.',
        ),
      ],
    ),
  );
}

RichText unoContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(text: 'Im Rahmen eines Schulprojekts '),
        TextSpan(text: 'habe ich gemeinsam mit zwei Mitschülern '),
        TextSpan(text: 'eine digitale Version des bekannten Kartenspiels '),
        TextSpan(
          text: 'Uno ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'entwickelt. Die Anwendung wurde mit '),
        TextSpan(
          text: 'C# ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'unter Verwendung des '),
        TextSpan(
          text: '.NET Frameworks ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'und '),
        TextSpan(
          text: 'WPF (Windows Presentation Foundation) ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'erstellt.\n\nDas Spiel enthält die klassischen '),
        TextSpan(
          text: 'Uno-Regeln',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: ', einschließlich aller Standardkarten ('),
        TextSpan(
          text: 'Zahlenkarten, Aussetzen, Richtungswechsel, +2',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(text: '). Die Benutzeroberfläche wurde '),
        TextSpan(
          text: 'benutzerfreundlich ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'und '),
        TextSpan(
          text: 'übersichtlich ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'gestaltet, um ein angenehmes Spielerlebnis zu bieten.'),
      ],
    ),
  );
}

RichText unityProjectContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(text: 'Mein Unity-Spiel wurde mit Unity und C# entwickelt. '),
        TextSpan(
          text:
              'Dabei durchläuft der Spieler eine Reihe von Räumen und muss in jedem Raum alle Gegner besiegen, ',
        ),
        TextSpan(text: 'um den Weg zum nächsten Bereich freizuschalten. '),
        TextSpan(
          text:
              'Erst wenn sämtliche Gegner in einem Raum bezwungen sind, öffnen sich die Zugänge zum folgenden Raum.\n\n',
        ),
        TextSpan(
          text: 'Alle Räume ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'wurden im Voraus mithilfe von '),
        TextSpan(
          text: '„Tilemaps“ ',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        TextSpan(text: 'gestaltet '),
        TextSpan(text: 'und basierend auf einem festgelegten Layout '),
        TextSpan(text: 'automatisch im Spiel platziert.\n\n'),
        TextSpan(text: 'Das Spiel entstand '),
        TextSpan(
          text: 'im Rahmen einer Schulaufgabe ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'innerhalb von '),
        TextSpan(
          text: 'zwei Wochen.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

RichText portfolioContent() {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, color: ThemeColors.white),
      children: [
        TextSpan(
          text:
              'Bei meinem Portfolio handelt es sich um diese Website, die mit Flutter und Dart erstellt wurde. ',
        ),
        TextSpan(text: 'Hier werden '),
        TextSpan(
          text: 'meine Projekte ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'gezeigt sowie die '),
        TextSpan(
          text: 'Sprachen ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: 'und '),
        TextSpan(
          text: 'Frameworks ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextSpan(text: ', die ich benutze.\n\n'),
        TextSpan(text: 'Schau gerne öfter vorbei, '),
        TextSpan(
          text: 'um neue Projekte mitzubekommen.',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ],
    ),
  );
}
