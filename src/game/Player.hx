package game;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Touch;
import flash.geom.Point;

class Player extends Entity {

  private var sprite:Image; //stores player sprite
  private var goTo:Point; //stores place to go
  private var speed:Int; //the divisor which prevents player form jumping

  public function new(_x:Float, _y:Float) {
    graphic = sprite = new Image('graphics/player.png'); //initialized graphic and sprite with .png
    setHitboxTo(sprite); //sets hitbox to .png

    super(_x - sprite.width/2, _y - sprite.height/2); //displays entity at _x and _y

    goTo = new Point(); //initializes goTo
    speed = 5; // initializes speed
  }

  public override function update() {
    //stores touches for one frame
    var touch0:Touch = Input.touches[0];
    var touch1:Touch = Input.touches[1];

    if(touch0 != null && touch1 != null) { //checks if user has caused two touch events
      //gets distance between touch events
      var xdist:Float = Math.abs(touch0.x - touch1.x);
      var ydist:Float = Math.abs(touch0.y - touch1.y);

      //gets center of touch events and sets it to goTo
      goTo.x = (touch0.x < touch1.x) ? touch0.x + xdist/2 : touch1.x + xdist/2;
      goTo.y = (touch0.y < touch1.y) ? touch0.y + ydist/2 : touch1.y + ydist/2;

      //centers sprite
      goTo.x -= sprite.width/2;
      goTo.y -= sprite.height/2;

      //moves to goTo
      x += (goTo.x - x)/speed;
      y += (goTo.y - y)/speed;
    }

    super.update();
  }
}
