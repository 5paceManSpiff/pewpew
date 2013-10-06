import com.haxepunk.Scene;
import com.haxepunk.HXP;

import game.*;

class GameScene extends Scene {

  public function new() {
    super(); 
  }

  public override function begin() {
    add(new Dot(HXP.halfWidth, HXP.halfHeight));
  }

  public override function update() {
    super.update();
  }

  public function reset() {

  }
}
