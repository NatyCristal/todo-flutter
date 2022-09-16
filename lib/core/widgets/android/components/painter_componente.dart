import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PainterComponent extends StatelessWidget {
  const PainterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xff67C1C1).withOpacity(0.4),
      radius: 13,
      child: const Icon(
        Icons.color_lens_outlined,
        color: Color(0xFF3473B2),
      ),
    );
  }
}
