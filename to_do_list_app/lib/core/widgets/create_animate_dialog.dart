import 'package:flutter/material.dart';
import 'package:to_do_list_app/core/widgets/custom_frame_container.dart';

class CreateAnimatedDialog extends StatelessWidget {
  const CreateAnimatedDialog({super.key, required this.dialogBody});
  final Widget dialogBody;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      child: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: size.height * 0.75,
            maxWidth: size.width * 0.8,
          ),
          child: CustomFrameContainer(
            child: dialogBody,
          ),
        ),
      ),
    );
  }
}
