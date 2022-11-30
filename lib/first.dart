import 'package:dynamic_child_height_layout_demo/text.dart';
import 'package:flutter/material.dart';

class FirstDynamicChildHeightLayout extends StatelessWidget {
  const FirstDynamicChildHeightLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
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
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
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
            ],
          ),
          Positioned(
            right: 15,
            bottom: 200 + 15 / 2 - 50,
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
