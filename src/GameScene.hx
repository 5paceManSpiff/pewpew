import com.haxepunk.utils.Input;
import com.haxepunk.utils.Touch;
import com.haxepunk.Scene;
import com.haxepunk.HXP;

import game.*;

class GameScene extends Scene {
  private var old_dots:Map<Int, Bool>; //stores dots from previous frame

  public function new() {
    super(); 

    old_dots = new Map(); //initialized var
  }

  public override function begin() {
    add(new Player(HXP.halfWidth, HXP.halfHeight)); //adds player to middle of scene
  }

  public override function update() {
//sets up finger tracking if -Ddebug is set when compiling
#if debug
    for(i in Input.touches.keys()) {
      if(old_dots.exists(i) == false) { //runs through all new touches
        add(new FollowDot(Input.touches[i], 0xFFFFFF, 'large')); //adds dot entity for new touches
        old_dots.set(i, true);
      }
    }

    for(i in old_dots.keys()) { //runs through old dots
      if(Input.touches.exists(i) == false) {
        old_dots.remove(i); //removes non-existant dots
      }
    }
#end


    super.update();
  }

  public function reset() {

  }
}
