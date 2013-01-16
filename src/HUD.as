package
{
	import org.flixel.*;
 
	public class HUD extends FlxGroup
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		//TODO: Add functions to change data instead of calling from playstate
		//public var life:int = 30;
		private var frame:FlxSprite = new FlxSprite(4,4);
		private var inside:FlxSprite = new FlxSprite(5,5);
		private var bar:FlxSprite = new FlxSprite(5, 5);
		private var coinscore:FlxText = new FlxText(5, 15, 64, "0");
		private var timer:FlxText = new FlxText(FlxG.width - 64, 0, 64, "00:00:00");
		private var min:int = 0; //TODO: convert minS, secS, and msS to FlxText objects and place them together instead of in the same string
		private var minS:String = "";
		private var sec:int = 0;
		private var secS:String = "";
		private var ms:Number = 0;
		private var msS:String = "";
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function HUD():void //X and Y define starting position of the player
		{
			super();
			
			//Health Bar
			frame.createGraphic(52,10); //White frame for the health bar
			frame.scrollFactor.x = frame.scrollFactor.y = 0;
			add(frame);
			
			inside.createGraphic(50,8,0xff000000); //Black interior, 48 pixels wide
			inside.scrollFactor.x = inside.scrollFactor.y = 0;
			add(inside);
			
			bar.createGraphic(1,8,0xffff0000); //The red bar itself
			bar.scrollFactor.x = bar.scrollFactor.y = 0;
			bar.origin.x = bar.origin.y = 0; //Zero out the origin
			bar.scale.x = Registry.player.health; //Fill up the health bar
			add(bar);
			
			//Score
			coinscore.scrollFactor.x = coinscore.scrollFactor.y = 0;
			add(coinscore);
			
			//Timer
			min = sec = ms = 0;
			timer.scrollFactor.x = timer.scrollFactor.y = 0;
			timer.setFormat(null, 8, 0xffffff, "left");
			add(timer);
		}
		
		override public function update():void //update function
		{
			bar.scale.x = Registry.player.health;
			coinscore.text = String(FlxG.score);
			
			ms = ms + FlxG.elapsed;
			if (ms > 1)
			{
				ms = 0;
				sec++;
				if (sec > 59)
				{
					sec = 0;
					min++;
				}
			}
			
			minS = String(min);
			if (minS.length < 2) minS = "0" + minS;
			secS = String(sec);
			if (secS.length < 2) secS = "0" + secS;
			msS = String(ms*100);
			if (msS.length > 2) msS = msS.substring(0, 2);
			if (msS.charAt(1) == ".") msS = "0" + msS.substring(0, 1);
			else if (msS.length < 2) msS = "0" + msS;
			
			timer.text = minS +":"+ secS +":"+ msS;
			
			super.update();
		}
	}
}
