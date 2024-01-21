import 'package:flutter/material.dart';

class SelectionButton extends StatefulWidget {
  final String text;
  final Widget? icon;
  final Color? color;
  final VoidCallback? onPressed;
  final double? width;
  const SelectionButton(
      {super.key,
      required this.text,
      this.icon,
      this.onPressed,
      this.color,
      this.width});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.4,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 60),
        decoration: BoxDecoration(
          color: widget.color != null
              ? widget.color!.withOpacity(0.1)
              : Colors.yellow.shade100,
          borderRadius: BorderRadius.circular(60),
          border: Border.all(color: widget.color ?? Colors.yellow),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(children: [
          widget.icon ?? const SizedBox(),
          widget.icon != null ? const SizedBox(width: 10) : const SizedBox(),
          Text(
            widget.text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ]),
      ),
    );
  }
}
