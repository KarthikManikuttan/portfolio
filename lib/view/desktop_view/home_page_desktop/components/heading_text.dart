import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant/app_colors.dart';

class HeadingText extends StatefulWidget {
  const HeadingText({super.key});
  @override
  State<HeadingText> createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
  final _mouse = ValueNotifier<Offset?>(null);

  static const lorem = "Mobile Application Developer "
      "Creating User Centric Applications";

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => _mouse.value = e.localPosition,
      onExit: (_) => _mouse.value = null,
      child: Container(
        width: 700,
        height: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Fixed physical radius relative to container size
              final spotRadius = 0.90; // keep constant to avoid visual jump

              Alignment toAlignment(Offset? p) {
                final cx = (p?.dx ?? -10000) / constraints.maxWidth;
                final cy = (p?.dy ?? -10000) / constraints.maxHeight;
                return Alignment(cx * 2 - 1, cy * 2 - 1);
              }

              return SingleChildScrollView(
                child: SizedBox(
                  width: constraints.maxWidth, // identical wrap width
                  child: Stack(
                    children: [
                      Text(
                        lorem,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      ValueListenableBuilder<Offset?>(
                        valueListenable: _mouse,
                        builder: (context, pos, _) {
                          return ShaderMask(
                            blendMode: BlendMode.srcIn,
                            shaderCallback: (Rect bounds) {
                              return RadialGradient(
                                center: toAlignment(pos),
                                radius: spotRadius, // stable radius
                                colors: const [
                                  Colors.white,
                                  Colors.transparent,
                                ],
                                stops: const [0.0, 1.0],
                              ).createShader(bounds);
                            },
                            child: Text(
                              lorem,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(color: AppColors.white),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
