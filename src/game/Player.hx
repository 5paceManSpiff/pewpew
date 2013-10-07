package game;

import Std;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;

class Player extends Entity {

  private var sprite:Image;

  public function new(_x:Float, _y:Float) {
    super(_x - 25, _y - 25);

    graphic = sprite = new Image('graphics/player.png');
    setHitboxTo(sprite);
  }

  public override function update() {
    super.update();
  }
}
