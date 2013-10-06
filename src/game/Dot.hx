package game;

import Std;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;

class Dot extends Entity {

  private var circle:Image;
  private var rad:Int;

  public function new(_x:Float, _y:Float, ?_color:Int, ?_size:String) {
    switch(_size) {
      case 'small':
        rad = 15;
      case 'medium':
        rad = 25;
      case 'large':
        rad = 50;
      default:
        rad = 25;
    }

    if(_color == null) {
      _color = 0xFFFFFF;
    } 

    super(_x - rad, _y - rad);

    graphic = circle = Image.createCircle(rad, _color);
  }

  public override function update() {
    super.update();
  }
}
