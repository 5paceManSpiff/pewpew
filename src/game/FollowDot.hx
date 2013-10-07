package game;

import Std;
import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Touch;

class FollowDot extends Dot {

  private var touch:Touch; //stores touch event that spawned it

  public function new(_touch:Touch, ?_color:Int, ?_size:String) {
    super(_touch.x, _touch.y, _color, _size); //passes data to Dot superclass

    touch = _touch;
  }

  public override function update() {
    //removes dot if touch object is destroyed
    if(Input.touches[touch.id] == null) {
      scene.remove(this);
    }

    //sets position to touch position
    x = touch.x - rad;
    y = touch.y - rad;
    super.update();
  }
}
