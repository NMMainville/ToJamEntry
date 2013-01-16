package
{
	import org.flixel.*;
 
	public class TrophyEnemy extends FlxGroup
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function TrophyEnemy():void //X and Y define starting position of the item
		{
			super();
			
			add(new Powerup( -100, -100)); //index 0
			add(new Enemy(-100, -100)); //index 1
			
			//Adjust size
			//offset.x = 6;
			//offset.y = 2;
			//width = 20;
			//height = 30;
		}
		
		override public function update():void //update function
		{
			
			super.update();
		}
		
		public function spawn(X:int, Y:int, ID:int):void //TODO: Make sure that this item will only spawn once (borrow code from one-time pickups
		{
			Powerup(members[0]).spawn(X, Y, 8, ID);
			Enemy(members[1]).spawn(X, Y, false);
		}
	}
}
