package game;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;

class Dot extends Entity {

  private static var rad:Int = 50;

  private var circle:Image;

  public function new(_x:Float, _y:Float) {
    super(_x - rad/2, _y - rad/2);

    graphic = circle = Image.createCircle(rad, 0xFFFFFF);
  }

  public override function update() {

    super.update();
  }
}
