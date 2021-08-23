import 'package:flutter/material.dart';

import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/core/constants/app.dart';

class WindowsWindow extends StatelessWidget {
  WindowsWindow({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  final buttonColors = WindowButtonColors(
    iconNormal: Colors.white,
    mouseOver: Colors.blue.shade700,
    mouseDown: Colors.blue.shade800,
    iconMouseOver: Colors.white,
    iconMouseDown: Colors.white,
  );

  final closeButtonColors = WindowButtonColors(
    mouseOver: Colors.red.shade700,
    mouseDown: Colors.red.shade900,
    iconNormal: Colors.white,
    iconMouseOver: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return WindowBorder(
      color: Colors.transparent,
      width: 0,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(
                      child: const Center(
                        child: Text(
                          appTitle,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      MinimizeWindowButton(
                        colors: buttonColors,
                        animate: true,
                      ),
                      MaximizeWindowButton(
                        colors: buttonColors,
                        animate: true,
                      ),
                      CloseWindowButton(
                        colors: closeButtonColors,
                        animate: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
