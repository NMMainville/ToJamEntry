package
{
	import org.flixel.*;
 
	public class MenuState extends FlxState
	{
		override public function create():void
		{
			bgColor = 0xff000000;
			var title:FlxText;
			title = new FlxText(0, 64, FlxG.width, "Shafted");
			title.setFormat (null, 16, 0xFFFFFFFF, "center");
			add(title);
			
			var objective:FlxText;
			objective = new FlxText(0, FlxG.height-128, FlxG.width, "Find the key and unlock the door to reach the end of the cave!");
			objective.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(objective);
			
			var instructions:FlxText;
			instructions = new FlxText(0, FlxG.height - 96, FlxG.width, "Press Z to start.");
			instructions.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(instructions);
			
			var credit:FlxText;
			credit = new FlxText(0, FlxG.height - 16, FlxG.width, "By Team Super Lucid Butter (Nathan M, Sean M, Andrew R)");
			credit.setFormat (null, 8, 0xFFFFFFFF, "center");
			add(credit);
 
		} // end function create
 
 
		override public function update():void
		{
			super.update(); // calls update on everything you added to the game loop
 
			if (FlxG.keys.justPressed("Z"))
			{
				FlxG.state = new PlayState();
			}
 
		} // end function update
 
 
		public function MenuState()
		{
			super();
 
		}  // end function MenuState
 
	} // end class
}// end package