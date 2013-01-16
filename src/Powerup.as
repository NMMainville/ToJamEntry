package
{
	import org.flixel.*;
 
	public class Powerup extends FlxSprite
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		[Embed(source = "../data/powerups.png")] public var powerupSprites:Class;
		public var itemType:int = 0; //determines type of powerup
									//1 - Health
									//2 - Double jump
									//3 - Speed
									//4 - Coin
									//5 - Respawning double jump
									//6 - Respawning speed
									//7 - Key
									//8 - Trophy
		public var disabled:Boolean = false;
		public var disableTimer:Number = 0;
		public var queueID:int = 0;
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function Powerup(X: int, Y: int):void //X and Y define starting position of the player
		{
			super(X, Y);
			//Create player
			loadGraphic(powerupSprites, true, true, 16, 16);
			
			//Animations
			addAnimation("nil", [0]);
			addAnimation("heart", [1]);
			addAnimation("coin", [2]);
			addAnimation("doublejump", [3]);
			addAnimation("speed", [4]);
			addAnimation("nodoublejump", [5]);
			addAnimation("nospeed", [6]);
			addAnimation("key", [7]);
			addAnimation("trophy", [8]);
			addAnimation("singledoublejump", [9]);
			addAnimation("singlespeed", [10]);
			play("nil");
			
			kill();
		}
		
		override public function update():void //update function
		{
			if (disableTimer > 0)
			{
				disableTimer = disableTimer - FlxG.elapsed;
				
				if (disableTimer <= 0)
				{
					disableTimer = 0;
					disabled = false;
					if (itemType == 5) play("doublejump");
					if (itemType == 6) play("speed");
				}
			}
			super.update();
		}
		
		public function spawn(X:int, Y:int, num:int, ID:int):void
		{
			queueID = ID;
			itemType = num;
			if (itemType > 0 && itemType < 9)
			{
				reset(X, Y);
				if (itemType > 0 && itemType < 9)
				{
					switch(itemType)
					{
						case 1: play("heart");
						break;
						case 2: play("singledoublejump");
						break;
						case 3: play("singlespeed");
						break;
						case 4: play ("coin");
						break;
						case 5: play ("doublejump");
						break;
						case 6: play ("speed");
						break;
						case 7: play ("key");
						break;
						case 8: play ("trophy");
						break;
						default: break;
					}
				reset(X, Y);
				}
			}
		}
		
		public function disable():void
		{
			if(!disabled)
			{
				disabled = true;
				if (itemType == 5) play("nodoublejump");
				if (itemType == 6) play("nospeed");
				disableTimer = 1;
			}
		}
	}
}
