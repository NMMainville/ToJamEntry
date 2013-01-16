package
{
	import org.flixel.*;
	import flash.display.StageScaleMode;
 
	public class PlayState extends FlxState
	{	
		//---------------------------------------CURRENT OBJECTIVES------------------------------------------
		//------------------------------------------DECLARATIONS---------------------------------------------
		//[Embed(source = "../data/music5.mp3")] private var stageMusic:Class; //TODO: music
		[Embed(source = "../data/para4.png")] private var BGfar:Class; //map graphics 1
		[Embed(source = "../data/para5.png")] private var BG:Class; //map graphics 2
		
		public var bg1:FlxSprite;
		public var bg2:FlxSprite;
		//public var musicPlaying:Boolean = false;
		
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		override public function create():void
		{
			FlxG.stage.scaleMode = StageScaleMode.SHOW_ALL; // Scale the stage to the window size, but preserve aspect ratio.
			FlxG.stage.align = ""; // Align the stage to the absolute center.
			
			bgColor = 0xffaaaaaa; //change bgcolour
			
			bg1 = new FlxSprite(0, 0);
			bg1.loadGraphic(BGfar, false, false);
			bg1.scrollFactor.x = 0;
			bg1.scrollFactor.y = 0;
			bg2 = new FlxSprite(0, 0);
			bg2.loadGraphic(BG, false, false);
			bg2.scrollFactor.x = 0.1;
			bg2.scrollFactor.y = 0;
			
			Registry.enemies = new EnemyManager();
			Registry.door = new Door( -1000, -1000);
			Registry.trophyEnemy = new TrophyEnemy();
			Registry.powerups = new PowerupManager();
			Registry.level = new Level();
			Registry.player = new Player(6 * 16, 6 * 16);
			Registry.camera = new Camera(6 * 16, 6 * 16);
			Registry.hud = new HUD();
			
			add(bg1);
			add(bg2);
			add(Registry.level); //adds the tilemap
			add(Registry.powerups);
			add(Registry.enemies);
			add(Registry.door);
			add(Registry.trophyEnemy);
			add(Registry.player); //adds the player
			add(Registry.hud);
			add(Registry.camera);
			
			FlxG.score = 0; //reset score
			
			Registry.level.resetCamera();
		}
		
		//----------------------------------------UPDATE FUNCTION--------------------------------------------
		override public function update():void
		{
			
			FlxU.overlap(Registry.player, Registry.powerups, Registry.powerups.collectPowerup);
			FlxU.overlap(Registry.player, Registry.enemies, Registry.enemies.playerCollide);
			FlxU.overlap(Registry.player, Registry.door, Registry.door.playerCollide);
			//FlxU.overlap(Registry.enemies, Registry.enemies, Registry.enemies.selfCollide);
			
			//if (FlxG.keys.justPressed("B")) FlxG.showBounds = !FlxG.showBounds; //bounding box debug
			//if (FlxG.keys.justPressed("Q")) Registry.level.checkMapChange(1); //level debug
			//if (FlxG.keys.justPressed("W")) Registry.level.checkMapChange(2); //level debug
			//if (FlxG.keys.justPressed("E")) Registry.level.checkMapChange(3); //level debug
			//if (FlxG.keys.justPressed("R")) Registry.level.checkMapChange(4); //level debug
			
			if (!Registry.player.onScreen())
			{
				Registry.level.checkMapChange(0);
				if (Registry.player.win) FlxG.fade.start(0xff000000, 5, onFade, false);
			}
			
			if (Registry.player.dead) FlxG.fade.start(0xffff0000, 1, onFade, false);
			
			Registry.camera.x = Registry.player.x;
			Registry.camera.y = Registry.player.y;
			
			super.update();
			
			//FlxU.collide(Registry.player, Registry.door);
			FlxU.collide(Registry.player, Registry.level);
			FlxU.collide(Registry.enemies, Registry.level);
			FlxU.collide(Registry.trophyEnemy.members[1], Registry.level);
		}
		
		private function onFade():void
		{
			FlxG.state = new MenuState();
		}
	}
}