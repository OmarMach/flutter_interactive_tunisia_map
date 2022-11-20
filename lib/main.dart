import 'package:flutter/material.dart';
import 'package:tunisia_map/tap_map_handler.dart';
import 'package:tunisia_map/utils.dart';

import 'tunisia_map_painter.dart';

void main() => runApp(const TunisiaMapApp());

class TunisiaMapApp extends StatelessWidget {
  const TunisiaMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Map of Tunisia ',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Map<String, PaintInformation> regions;
  late TunisiaMapPainter painter;

  @override
  void initState() {
    regions = generateRegions(Colors.blue);
    painter = TunisiaMapPainter(regions: regions);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = getSize(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Map of Tunisia')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTapDown: (details) {
              setState(() {
                regions = tapMapHandler(
                  painter: painter,
                  regions: regions,
                  selectedColor: Colors.amber,
                  unSelectedColor: Colors.blue,
                  localPosition: details.localPosition,
                );
                painter = TunisiaMapPainter(regions: regions);
              });
            },
            child: CustomPaint(
              size: Size(size.width, size.height),
              painter: painter,
            ),
          ),
        ),
      ),
    );
  }
}
