import 'dart:ui';

class Blockies {
  List<int> randseed = List<int>.filled(4, 0);

  getRandSeed(String seed) {
    for (int i = 0; i < seed.length; i++) {
      randseed[i % 4] =
          (((randseed[i % 4] << 5) - randseed[i % 4]) + seed.codeUnitAt(i));
    }
  }

  double rand() {
    // based on Java's String.hashCode(), expanded to 4 32bit values
    var t = randseed[0] ^ (randseed[0] << 11);

    randseed[0] = randseed[1];
    randseed[1] = randseed[2];
    randseed[2] = randseed[3];
    randseed[3] = (randseed[3] ^ (randseed[3] >> 19) ^ t ^ (t >> 8));

    return (randseed[3] >>> 0) / ((1 << 31) >>> 0);
  }

  Color createColor() {
    //saturation is the whole color spectrum
    var h = (rand() * 360).floor();
    //saturation goes from 40 to 100, it avoids greyish colors
    var s = ((rand() * 60) + 40);
    //lightness can be anything from 0 to 100, but probabilities are a bell curve around 50%
    var l = ((rand() + rand() + rand() + rand()) * 25);

    return hslToRgb(h, s, l);
  }

  Color hslToRgb(h, s, l) {
    var r, g, b;
    if (s == 0) {
      r = g = b = l;
    } else {
      var q = l < 0.5 ? l * (1 + s) : l + s - l * s;
      var p = 2 * l - q;
      r = hueToRgb(p, q, h + 1 / 3);
      g = hueToRgb(p, q, h);
      b = hueToRgb(p, q, h - 1 / 3);
    }
    return Color.fromRGBO(r, g, b, 1);
  }

  hueToRgb(p, q, t) {
    if (t < 0) t += 1;
    if (t > 1) t -= 1;
    if (t < 1 / 6) return p + (q - p) * 6 * t;
    if (t < 1 / 2) return q;
    if (t < 2 / 3) return p + (q - p) * (2 / 3 - t) * 6;
    return p;
  }
}
