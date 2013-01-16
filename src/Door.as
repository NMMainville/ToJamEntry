package
{
	import org.flixel.*;
 
	public class Door extends FlxSprite
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		[Embed(source = "../data/door.png")] public var doorSprites:Class;
		public var locked:Boolean = true;
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function Door(X: int, Y: int):void //X and Y define starting position of the player
		{
			super(X, Y);
			//Create door
			loadGraphic(doorSprites, true, false, 16, 32);
			
			//Animations
			addAnimation("closed", [0]);
			addAnimation("opening", [0, 1, 2, 3, 4, 5, 6, 7, 7], 6, false);
			addAnimation("open", [7]);
			play("closed");
			
			addAnimationCallback(detectFrame);
			
			fixed = true;
			
			kill();
		}
		
		override public function update():void //update function
		{
			
			super.update();
		}
		
		public function spawn(X:int, Y:int):void
		{
			reset(X, Y);
		}
		
		public function playerCollide(player:Player, door:Door):void
		{
			if (door.locked && player.velocity.x > 0)
			{
				player.x = door.x - player.width;
				player.velocity.x = 0;
			}
			if (player.hasKey)
			{
				door.play("opening");
				player.hasKey = false;
			}
		}
		
		public function detectFrame(animState:String, frameNo:int, spriteNo:int):void //reads the animation state
		{
			if (animState == "opening" && frameNo == 8)
			{
				solid = false;
				locked = false;
				play("open");
				Registry.player.victory();
			}
		}
	}
}
