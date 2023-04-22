import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.title,
    this.subtitle =
        '', // tambahkan parameter isSwitched dengan nilai default false
  }) : super(key: key);

  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;
  final String subtitle;

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool _isSwitched = false;

  @override
  void initState() {
    super.initState();
    _isSwitched = widget.value;
  }

  @override
  void didUpdateWidget(SwitchWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _isSwitched = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _isSwitched,
      onChanged: widget.onChanged,
      title: Text(
        widget.title, 
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.white),
      ),
      subtitle: widget.subtitle.isNotEmpty
          ? Text(
              widget.subtitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            )
          : null,
    );
  }
}
