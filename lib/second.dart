import 'dart:math';

import 'package:boxy/boxy.dart';
import 'package:dynamic_child_height_layout_demo/text.dart';
import 'package:flutter/material.dart';

class DynamicChildHeightLayout extends StatelessWidget {
  const DynamicChildHeightLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomBoxy(
        delegate: DynamicChildHeightBoxyDelegate(),
        children: [
          BoxyId(
            id: #top,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xff0A84FF),
              ),
              child: Text(
                randomText(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          BoxyId(
            id: #bottom,
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color(0xff5ED9D9),
              ),
              child: Text(
                randomText(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          BoxyId(
            id: #action,
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffFF375F),
              ),
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class DynamicChildHeightBoxyDelegate extends BoxyDelegate {
  @override
  Size layout() {
    final BoxyChild top = getChild(#top);
    final BoxyChild bottom = getChild(#bottom);
    final BoxyChild action = getChild(#action);

    final Size topSize = top.layout(constraints);
    final Size bottomSize = bottom.layout(constraints);
    final Size actionSize = action.layout(constraints);

    final containerWidth = max(topSize.width, bottomSize.width);

    bottom.position(Offset(0, topSize.height + 15));
    action.position(Offset(
      containerWidth - 15 - actionSize.width,
      topSize.height + 15 / 2 - actionSize.height / 2,
    ));

    return Size(
      containerWidth,
      topSize.height + 15 + bottomSize.height,
    );
  }
}
