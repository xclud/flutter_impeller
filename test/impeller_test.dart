import 'package:flutter_test/flutter_test.dart';

import 'package:impeller/impeller.dart';
import 'package:vector_math/vector_math.dart';

void main() {
  test('Lights', () {
    final light = Light.directional(Vector3.all(1));

    if (light is DirectionalLight) {
      expect(light.direction.x, 1);
      expect(light.direction.y, 1);
      expect(light.direction.z, 1);
    }
  });
}
