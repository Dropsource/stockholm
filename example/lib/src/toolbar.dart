import 'package:example/src/demo_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:stockholm/stockholm.dart';

class StockholmToolbarDemoPage extends StatelessWidget {
  const StockholmToolbarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StockholmDemoPage(
      padding: EdgeInsets.zero,
      children: [
        _ToolbarDemo(),
      ],
    );
  }
}

class _ToolbarDemo extends StatefulWidget {
  const _ToolbarDemo({Key? key}) : super(key: key);

  @override
  _ToolbarDemoState createState() => _ToolbarDemoState();
}

class _ToolbarDemoState extends State<_ToolbarDemo> {
  bool _settingsToggled = false;

  @override
  Widget build(BuildContext context) {
    var colors = StockholmColors.fromContext(context);

    return StockholmToolbar(
      children: [
        StockholmToolbarButton(
          icon: Ionicons.home_outline,
          onPressed: () {},
        ),
        StockholmToolbarButton(
          icon: Ionicons.bulb_outline,
          onPressed: () {},
        ),
        StockholmToolbarDivider(),
        StockholmToolbarButton(
          icon: Ionicons.alarm_outline,
          selected: _settingsToggled,
          onPressed: () {
            setState(() {
              _settingsToggled = !_settingsToggled;
            });
          },
          label: 'Toggle me',
        ),
        Spacer(),
        StockholmToolbarButton(
          icon: Ionicons.stop_outline,
          color: colors.red,
          onPressed: () {},
        ),
        StockholmToolbarButton(
          icon: Ionicons.reload,
          color: colors.yellow,
          onPressed: () {},
        ),
        StockholmToolbarButton(
          icon: Ionicons.play_outline,
          color: colors.green,
          onPressed: () {},
        ),
      ],
    );
  }
}