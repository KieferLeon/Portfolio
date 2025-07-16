import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:web_app/Icons/nameLogo.dart';

class Sticker extends StatefulWidget {
  final double scrollOffset;

  const Sticker({super.key, required this.scrollOffset});

  @override
  State<Sticker> createState() => _Sticker();
}

class _Sticker extends State<Sticker> {
  final GlobalKey _stickerKey = GlobalKey();
  bool _isVisible = false;
  Timer? _positionTimer;

  void _startPositionUpdates() {
    _positionTimer?.cancel();
    _positionTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (!_isVisible) return;

      final renderBox =
          _stickerKey.currentContext?.findRenderObject() as RenderBox?;
      if (renderBox != null) {
        final position = renderBox.localToGlobal(Offset.zero);
        final size = renderBox.size;
        print('⏳ Periodic position update: $position, size: $size');
      }
    });
  }

  void _stopPositionUpdates() {
    _positionTimer?.cancel();
    _positionTimer = null;
  }

  @override
  void dispose() {
    _stopPositionUpdates();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('sticker-visibility-key'),
      onVisibilityChanged: (info) {
        final visible = info.visibleFraction > 0;

        if (visible && !_isVisible) {
          _isVisible = true;
          _startPositionUpdates();
        } else if (!visible && _isVisible) {
          _isVisible = false;
          _stopPositionUpdates();
        }

        // Optionally print visibility change once:
        final renderBox =
            _stickerKey.currentContext?.findRenderObject() as RenderBox?;
        if (renderBox != null) {
          final position = renderBox.localToGlobal(Offset.zero);
          final size = renderBox.size;
          print(
            '👁️ Visibility changed: $_isVisible, position = $position, size = $size',
          );
        }
      },
      child: Stack(
        children: [
          Container(
            key: _stickerKey,
            height: 200,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white, width: 10),
              gradient: const LinearGradient(
                colors: [ui.Color(0xFFC04AA9), ui.Color(0xFF984AC2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Made By",
                  style: TextStyle(fontSize: 42, color: Colors.white),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 400,
                  child: AspectRatio(
                    aspectRatio: 613.81519 / 153.57507,
                    child: CustomPaint(painter: Namelogo.complete()),
                  ),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFE0C3FC), // light purple
                    Color(0xFF8EC5FC), // soft blue
                    Color(0xFFA9F1DF), // minty green
                    Color(0xFFFFD3A5), // peachy highlight
                    Color(0xFFFFDEE9), // pink shimmer
                  ],
                  stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Container(
                width: 500,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
