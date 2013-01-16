package
{
	import adobe.utils.CustomActions;
	import org.flixel.*;
 
	public class Camera extends FlxSprite
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function Camera(X: int, Y: int):void //X and Y define starting position of the player
		{
			super(X, Y);
			
			createGraphic(18, 30, 0xffffffff);
			visible = false;
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
	}
}
