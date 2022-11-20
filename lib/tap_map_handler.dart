import 'package:flutter/material.dart';

import 'tunisia_map_painter.dart';

TextPainter generateTextPainter({required String label, bool isSelected = false}) {
  return TextPainter(
    textDirection: TextDirection.ltr,
    text: TextSpan(
      text: label,
      style: TextStyle(color: !isSelected ? Colors.white : Colors.black),
    ),
  );
}

Map<String, PaintInformation> generateRegions(Color color) => {
      'galliteIsle': PaintInformation(textPainter: generateTextPainter(label: 'galliteIsle'), paint: Paint()..color = color),
      'zembraIsle': PaintInformation(textPainter: generateTextPainter(label: 'zembraIsle'), paint: Paint()..color = color),
      'tozeur': PaintInformation(textPainter: generateTextPainter(label: 'Tozeur'), paint: Paint()..color = color),
      'beja': PaintInformation(textPainter: generateTextPainter(label: 'Beja'), paint: Paint()..color = color),
      'Tunis': PaintInformation(textPainter: generateTextPainter(label: 'Tunis'), paint: Paint()..color = color),
      'Benzart': PaintInformation(textPainter: generateTextPainter(label: 'Benzart'), paint: Paint()..color = color),
      'jendouba': PaintInformation(textPainter: generateTextPainter(label: 'Jendouba'), paint: Paint()..color = color),
      'nabeul': PaintInformation(textPainter: generateTextPainter(label: 'Nabeul'), paint: Paint()..color = color),
      'kef': PaintInformation(textPainter: generateTextPainter(label: 'Kef'), paint: Paint()..color = color),
      'gasserine': PaintInformation(textPainter: generateTextPainter(label: 'Gasserine'), paint: Paint()..color = color),
      'gabes': PaintInformation(textPainter: generateTextPainter(label: 'Gabes'), paint: Paint()..color = color),
      'gafsa': PaintInformation(textPainter: generateTextPainter(label: 'Gafsa'), paint: Paint()..color = color),
      'sidibouzid': PaintInformation(textPainter: generateTextPainter(label: 'SidiBouzid'), paint: Paint()..color = color),
      'sfax': PaintInformation(textPainter: generateTextPainter(label: 'Sfax'), paint: Paint()..color = color),
      'siliana': PaintInformation(textPainter: generateTextPainter(label: 'Siliana'), paint: Paint()..color = color),
      'mahdia': PaintInformation(textPainter: generateTextPainter(label: 'Mahdia'), paint: Paint()..color = color),
      'mestir': PaintInformation(textPainter: generateTextPainter(label: 'Mestir'), paint: Paint()..color = color),
      'kairawen': PaintInformation(textPainter: generateTextPainter(label: 'Kairaouen'), paint: Paint()..color = color),
      'sousse': PaintInformation(textPainter: generateTextPainter(label: 'Sousse'), paint: Paint()..color = color),
      'zaghouen': PaintInformation(textPainter: generateTextPainter(label: 'Zaghouen'), paint: Paint()..color = color),
      'medenine': PaintInformation(textPainter: generateTextPainter(label: 'Medenine'), paint: Paint()..color = color),
      'Kebili': PaintInformation(textPainter: generateTextPainter(label: 'Kebili'), paint: Paint()..color = color),
      'tatawin': PaintInformation(textPainter: generateTextPainter(label: 'Tatawin'), paint: Paint()..color = color),
    };
Map<String, PaintInformation> tapMapHandler({
  required TunisiaMapPainter painter,
  required Map<String, PaintInformation> regions,
  required Offset localPosition,
  required Color selectedColor,
  required Color unSelectedColor,
}) {
  if (painter.galliteIsle.contains(localPosition)) {
    if (regions['galliteIsle']!.paint.color.value == selectedColor.value) {
      regions['galliteIsle']!.paint.color = unSelectedColor;
      regions['galliteIsle']!.textPainter = generateTextPainter(label: 'galliteIsle');
    } else {
      regions['galliteIsle']!.paint.color = selectedColor;
      regions['galliteIsle']!.textPainter = generateTextPainter(label: 'galliteIsle', isSelected: true);
    }

    return regions;
  }
  if (painter.zembraIsle.contains(localPosition)) {
    if (regions['zembraIsle']!.paint.color.value == selectedColor.value) {
      regions['zembraIsle']!.paint.color = unSelectedColor;
      regions['zembraIsle']!.textPainter = generateTextPainter(label: 'zembraIsle');
    } else {
      regions['zembraIsle']!.paint.color = selectedColor;
      regions['zembraIsle']!.textPainter = generateTextPainter(label: 'zembraIsle', isSelected: true);
    }

    return regions;
  }
  if (painter.tozeur.contains(localPosition)) {
    if (regions['tozeur']!.paint.color.value == selectedColor.value) {
      regions['tozeur']!.paint.color = unSelectedColor;
      regions['tozeur']!.textPainter = generateTextPainter(label: 'Tozeur');
    } else {
      regions['tozeur']!.paint.color = selectedColor;
      regions['tozeur']!.textPainter = generateTextPainter(label: 'Tozeur', isSelected: true);
    }

    return regions;
  }

  if (painter.beja.contains(localPosition)) {
    if (regions['beja']!.paint.color.value == selectedColor.value) {
      regions['beja']!.paint.color = unSelectedColor;
      regions['beja']!.textPainter = generateTextPainter(label: 'Beja');
    } else {
      regions['beja']!.paint.color = selectedColor;
      regions['beja']!.textPainter = generateTextPainter(label: 'Beja', isSelected: true);
    }

    return regions;
  }
  if (painter.tunis.contains(localPosition)) {
    if (regions['Tunis']!.paint.color.value == selectedColor.value) {
      regions['Tunis']!.paint.color = unSelectedColor;
      regions['Tunis']!.textPainter = generateTextPainter(label: 'Tunis');
    } else {
      regions['Tunis']!.paint.color = selectedColor;
      regions['Tunis']!.textPainter = generateTextPainter(label: 'Tunis', isSelected: true);
    }

    return regions;
  }
  if (painter.benzart.contains(localPosition)) {
    if (regions['Benzart']!.paint.color.value == selectedColor.value) {
      regions['Benzart']!.paint.color = unSelectedColor;
      regions['Benzart']!.textPainter = generateTextPainter(label: 'Benzart');
    } else {
      regions['Benzart']!.paint.color = selectedColor;
      regions['Benzart']!.textPainter = generateTextPainter(label: 'Benzart', isSelected: true);
    }

    return regions;
  }
  if (painter.jendouba.contains(localPosition)) {
    if (regions['jendouba']!.paint.color.value == selectedColor.value) {
      regions['jendouba']!.paint.color = unSelectedColor;
      regions['jendouba']!.textPainter = generateTextPainter(label: 'Jendouba');
    } else {
      regions['jendouba']!.paint.color = selectedColor;
      regions['jendouba']!.textPainter = generateTextPainter(label: 'Jendouba', isSelected: true);
    }

    return regions;
  }
  if (painter.nabeul.contains(localPosition)) {
    if (regions['nabeul']!.paint.color.value == selectedColor.value) {
      regions['nabeul']!.paint.color = unSelectedColor;
      regions['nabeul']!.textPainter = generateTextPainter(label: 'Nabeul');
    } else {
      regions['nabeul']!.paint.color = selectedColor;
      regions['nabeul']!.textPainter = generateTextPainter(label: 'Nabeul', isSelected: true);
    }

    return regions;
  }
  if (painter.kef.contains(localPosition)) {
    if (regions['kef']!.paint.color.value == selectedColor.value) {
      regions['kef']!.paint.color = unSelectedColor;
      regions['kef']!.textPainter = generateTextPainter(label: 'Kef');
    } else {
      regions['kef']!.paint.color = selectedColor;
      regions['kef']!.textPainter = generateTextPainter(label: 'Kef', isSelected: true);
    }

    return regions;
  }
  if (painter.gasserine.contains(localPosition)) {
    if (regions['gasserine']!.paint.color.value == selectedColor.value) {
      regions['gasserine']!.paint.color = unSelectedColor;
      regions['gasserine']!.textPainter = generateTextPainter(label: 'Gasserine');
    } else {
      regions['gasserine']!.paint.color = selectedColor;
      regions['gasserine']!.textPainter = generateTextPainter(label: 'Gasserine', isSelected: true);
    }

    return regions;
  }
  if (painter.gabes.contains(localPosition)) {
    if (regions['gabes']!.paint.color.value == selectedColor.value) {
      regions['gabes']!.paint.color = unSelectedColor;
      regions['gabes']!.textPainter = generateTextPainter(label: 'Gabes');
    } else {
      regions['gabes']!.paint.color = selectedColor;
      regions['gabes']!.textPainter = generateTextPainter(label: 'Gabes', isSelected: true);
    }

    return regions;
  }
  if (painter.gafsa.contains(localPosition)) {
    if (regions['gafsa']!.paint.color.value == selectedColor.value) {
      regions['gafsa']!.paint.color = unSelectedColor;
      regions['gafsa']!.textPainter = generateTextPainter(label: 'Gafsa');
    } else {
      regions['gafsa']!.paint.color = selectedColor;
      regions['gafsa']!.textPainter = generateTextPainter(label: 'Gafsa', isSelected: true);
    }

    return regions;
  }
  if (painter.sidibouzid.contains(localPosition)) {
    if (regions['sidibouzid']!.paint.color.value == selectedColor.value) {
      regions['sidibouzid']!.paint.color = unSelectedColor;
      regions['sidibouzid']!.textPainter = generateTextPainter(label: 'SidiBouzid');
    } else {
      regions['sidibouzid']!.paint.color = selectedColor;
      regions['sidibouzid']!.textPainter = generateTextPainter(label: 'SidiBouzid', isSelected: true);
    }

    return regions;
  }
  if (painter.sfax.contains(localPosition)) {
    if (regions['sfax']!.paint.color.value == selectedColor.value) {
      regions['sfax']!.paint.color = unSelectedColor;
      regions['sfax']!.textPainter = generateTextPainter(label: 'Sfax');
    } else {
      regions['sfax']!.paint.color = selectedColor;
      regions['sfax']!.textPainter = generateTextPainter(label: 'Sfax', isSelected: true);
    }

    return regions;
  }
  if (painter.siliana.contains(localPosition)) {
    if (regions['siliana']!.paint.color.value == selectedColor.value) {
      regions['siliana']!.paint.color = unSelectedColor;
      regions['siliana']!.textPainter = generateTextPainter(label: 'Siliana');
    } else {
      regions['siliana']!.paint.color = selectedColor;
      regions['siliana']!.textPainter = generateTextPainter(label: 'Siliana', isSelected: true);
    }

    return regions;
  }
  if (painter.mahdia.contains(localPosition)) {
    if (regions['mahdia']!.paint.color.value == selectedColor.value) {
      regions['mahdia']!.paint.color = unSelectedColor;
      regions['mahdia']!.textPainter = generateTextPainter(label: 'Mahdia');
    } else {
      regions['mahdia']!.paint.color = selectedColor;
      regions['mahdia']!.textPainter = generateTextPainter(label: 'Mahdia', isSelected: true);
    }

    return regions;
  }
  if (painter.mestir.contains(localPosition)) {
    if (regions['mestir']!.paint.color.value == selectedColor.value) {
      regions['mestir']!.paint.color = unSelectedColor;
      regions['mestir']!.textPainter = generateTextPainter(label: 'Mestir');
    } else {
      regions['mestir']!.paint.color = selectedColor;
      regions['mestir']!.textPainter = generateTextPainter(label: 'Mestir', isSelected: true);
    }

    return regions;
  }
  if (painter.kairawen.contains(localPosition)) {
    if (regions['kairawen']!.paint.color.value == selectedColor.value) {
      regions['kairawen']!.paint.color = unSelectedColor;
      regions['kairawen']!.textPainter = generateTextPainter(label: 'Kairaouen');
    } else {
      regions['kairawen']!.paint.color = selectedColor;
      regions['kairawen']!.textPainter = generateTextPainter(label: 'Kairaouen', isSelected: true);
    }

    return regions;
  }
  if (painter.sousse.contains(localPosition)) {
    if (regions['sousse']!.paint.color.value == selectedColor.value) {
      regions['sousse']!.paint.color = unSelectedColor;
      regions['sousse']!.textPainter = generateTextPainter(label: 'Sousse');
    } else {
      regions['sousse']!.paint.color = selectedColor;
      regions['sousse']!.textPainter = generateTextPainter(label: 'Sousse', isSelected: true);
    }

    return regions;
  }
  if (painter.zaghouen.contains(localPosition)) {
    if (regions['zaghouen']!.paint.color.value == selectedColor.value) {
      regions['zaghouen']!.paint.color = unSelectedColor;
      regions['zaghouen']!.textPainter = generateTextPainter(label: 'Zaghouen');
    } else {
      regions['zaghouen']!.paint.color = selectedColor;
      regions['zaghouen']!.textPainter = generateTextPainter(label: 'Zaghouen', isSelected: true);
    }

    return regions;
  }
  if (painter.medenine.contains(localPosition)) {
    if (regions['medenine']!.paint.color.value == selectedColor.value) {
      regions['medenine']!.paint.color = unSelectedColor;
      regions['medenine']!.textPainter = generateTextPainter(label: 'Medenine');
    } else {
      regions['medenine']!.paint.color = selectedColor;
      regions['medenine']!.textPainter = generateTextPainter(label: 'Medenine', isSelected: true);
    }

    return regions;
  }
  if (painter.gbeli.contains(localPosition)) {
    if (regions['Kebili']!.paint.color.value == selectedColor.value) {
      regions['Kebili']!.paint.color = unSelectedColor;
      regions['Kebili']!.textPainter = generateTextPainter(label: 'Kebili');
    } else {
      regions['Kebili']!.paint.color = selectedColor;
      regions['Kebili']!.textPainter = generateTextPainter(label: 'Kebili', isSelected: true);
    }

    return regions;
  }
  if (painter.tatawin.contains(localPosition)) {
    if (regions['tatawin']!.paint.color.value == selectedColor.value) {
      regions['tatawin']!.paint.color = unSelectedColor;
      regions['tatawin']!.textPainter = generateTextPainter(label: 'Tatawin');
    } else {
      regions['tatawin']!.paint.color = selectedColor;
      regions['tatawin']!.textPainter = generateTextPainter(label: 'Tatawin', isSelected: true);
    }
    return regions;
  } else {
    return regions;
  }
}
