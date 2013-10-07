package game;

import Std;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;

class Dot extends Entity {

  private var circle:Image; //stores circle
  private var rad:Int; //stores circle radius

  public function new(_x:Float, _y:Float, ?_color:Int, ?_size:String) {
    //sets radius depending on the _size argument
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

    //sets color to white if _color is not given
    if(_color == null) {
      _color = 0xFFFFFF;
    } 

    super(_x - rad, _y - rad); //sets display position

    graphic = circle = Image.createCircle(rad, _color);
  }

  public override function update() {
    super.update();
  }
}
