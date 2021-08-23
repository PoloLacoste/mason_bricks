import 'package:flutter/material.dart';

import 'package:bot_toast/bot_toast.dart';
import 'package:sizer/sizer.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/presentation/widgets/normal_animation.dart';

class ToastService {
  void info({
    required String text,
    Duration duration = const Duration(
      milliseconds: 1500,
    ),
  }) {
    _createToast(
      statusColor: Colors.blue.shade800,
      icon: Icons.info,
      text: text,
      duration: duration,
    );
  }

  void success({
    required String text,
    Duration duration = const Duration(
      milliseconds: 1500,
    ),
  }) {
    _createToast(
      statusColor: Colors.green.shade800,
      icon: Icons.check_circle,
      text: text,
      duration: duration,
    );
  }

  void warning({
    required String text,
    Duration duration = const Duration(
      milliseconds: 1500,
    ),
  }) {
    _createToast(
      statusColor: Colors.orange.shade800,
      icon: Icons.warning,
      text: text,
      duration: duration,
    );
  }

  void error({
    required String text,
    Duration duration = const Duration(
      milliseconds: 1500,
    ),
  }) {
    _createToast(
      statusColor: Colors.red.shade800,
      icon: Icons.error,
      text: text,
      duration: duration,
    );
  }

  void _createToast({
    required Color statusColor,
    required IconData icon,
    required String text,
    required Duration duration,
    Alignment? alignment = const Alignment(0, 0.99),
    Duration animationDuration = const Duration(milliseconds: 300),
    bool crossPage = true,
    VoidCallback? onClose,
  }) {
    BotToast.showCustomNotification(
      toastBuilder: (_) {
        final toast = Card(
          color: Colors.white,
          child: ListTile(
            leading: Icon(
              icon,
              color: statusColor,
              size: 32,
            ),
            title: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        );

        if (SizerUtil.deviceType != DeviceType.mobile &&
            SizerUtil.orientation != Orientation.portrait) {
          return SizedBox(
            width: 70.w,
            child: toast,
          );
        }

        return toast;
      },
      duration: duration,
      animationDuration: animationDuration,
      wrapToastAnimation: (controller, cancelFunc, child) => NormalAnimation(
        child: child,
        controller: controller,
      ),
      dismissDirections: [DismissDirection.down],
      crossPage: crossPage,
      align: alignment,
      onClose: onClose,
    );
  }
}
