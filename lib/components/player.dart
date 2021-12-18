import 'package:flame/components.dart';
import '../helpers/direction.dart';

class Player extends SpriteComponent with HasGameRef {
  Direction direction = Direction.none;

  Player()
      : super(
          size: Vector2.all(50.0),
        );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('player.png');
    position = gameRef.size / 2;
  }
}
