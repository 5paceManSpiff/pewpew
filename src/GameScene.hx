import com.haxepunk.utils.Input;
import com.haxepunk.utils.Touch;
import com.haxepunk.Scene;
import com.haxepunk.HXP;

import game.*;

class GameScene extends Scene {
  private var old_dots:Map<Int, Bool>;

  public function new() {
    super(); 

    old_dots = new Map();
  }

  public override function begin() {
    add(new Player(HXP.halfWidth, HXP.halfHeight));
  }

  public override function update() {
#if debug
    for(i in Input.touches.keys()) {
      if(old_dots.exists(i) == false) {
        add(new FollowDot(Input.touches[i], 0xFFF, 'large'));
        old_dots.set(i, true);
      }
    }

    for(i in old_dots.keys()) {
      if(Input.touches.exists(i) == false) {
        old_dots.remove(i);
      }
    }
#end


    super.update();
  }

  public function reset() {

  }
}
