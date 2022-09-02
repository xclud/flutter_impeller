import 'package:vector_math/vector_math.dart';

abstract class Light {
  const Light._();
  factory Light.point(Vector3 position, double radius) =>
      PointLight._(position, radius);
  factory Light.directional(Vector3 direction) => DirectionalLight._(direction);
}

class PointLight extends Light {
  const PointLight._(this.position, this.radius) : super._();

  final Vector3 position;
  final double radius;
}

class DirectionalLight extends Light {
  const DirectionalLight._(this.direction) : super._();

  final Vector3 direction;
}
