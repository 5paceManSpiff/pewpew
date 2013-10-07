package game;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Touch;

class Player extends Entity {

  private var sprite:Image;

  public function new(_x:Float, _y:Float) {
    super(_x - 25, _y - 25);

    graphic = sprite = new Image('graphics/player.png');
    setHitboxTo(sprite);
  }

  public override function update() {
    var touch0:Touch = Input.touches[0];
    var touch1:Touch = Input.touches[1];

    if(touch0 != null && touch1 != null) {
      var xdist:Float = Math.abs(touch0.x - touch1.x);
      var ydist:Float = Math.abs(touch0.y - touch1.y);

      x = (touch0.x < touch1.x) ? touch0.x + xdist/2 : touch1.x + xdist/2;
      y = (touch0.y < touch1.y) ? touch0.y + ydist/2 : touch1.y + ydist/2;

      x -= sprite.width/2;
      y -= sprite.height/2;
    }

    super.update();
  }
}
