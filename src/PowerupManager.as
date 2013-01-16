package
{
	import org.flixel.*;

	public class PowerupManager extends FlxGroup
	{
		
		//[Embed(source = "../data/mapCSV_Group1_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap1:Class; //map layout 1
		private var tempArray:Array;
		private var currentLevel:int = 1;
		public var largeArray:Array = new Array();
		private var smallArray:Array = new Array();
		private var queuePosition:int = 0;
		
		public var oneTimeArray:Array = new Array();
		
		public function PowerupManager()
		{
			super();
			
			//	There are 75 powerups in our pool
			for (var i:int = 0; i < 75; i++)
			{
				add(new Powerup(-100, -100));
			}
			
			for (var j:int = 0; j < 50; j++)
			{
				largeArray.push(new Array); //TODO: Make these array lengths dynamic instead of a fixed value!
				for (var k:int = 0; k < 75; k++) largeArray[j][k] = 1;
			}
			
			
			//	There are 25 enemies in our pool
			//for (var k:int = 0; k < 25; k++)
			//{
			//	add(new Enemy(-100, -100));
			//}
			
			//parseTileMap(new TxtMap1);
		}
		
		public function parseTileMap(tileMapTxt:String):void //Parse FG tilemap into powerup locations
		{
			queuePosition = 0;
			killMembers();
			Registry.enemies.clearEnemies();
			Registry.door.kill();
			
			tempArray = tileMapTxt.split("\n");
			
			for (var i:int = 0; i < tempArray.length; i++)
			{
				tempArray[i] = tempArray[i].split(",");
				
				for (var j:int = 0; j < tempArray[i].length; j++)
				{
					//FlxG.log(queuePosition);
						if (tempArray[i][j] == 1)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 1, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 2)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 2, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 3)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 3, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 4)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 4, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 5)
						{
							/*if (largeArray[currentLevel][queuePosition] == 1)*/ Registry.enemies.spawnEnemy(j * 16, i * 16, false);
							//queuePosition++;
						}
						else if (tempArray[i][j] == 6)
						{
							/*if (largeArray[currentLevel][queuePosition] == 1)*/ Registry.enemies.spawnEnemy(j * 16, i * 16, true);
							//queuePosition++;
						}
						else if (tempArray[i][j] == 7)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 5, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 8)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 6, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 9)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 7, queuePosition);
							queuePosition++;
						}
						else if (tempArray[i][j] == 10)
						{
							if (largeArray[currentLevel][queuePosition] == 1) Registry.door.spawn(j*16, i*16);
							queuePosition++;
						}
						else if (tempArray[i][j] == 11)
						{
							//if (largeArray[currentLevel][queuePosition] == 1) Powerup(getFirstAvail()).spawn(j * 16, i * 16, 8, queuePosition);
							//queuePosition++;
							//spawn cutscene trophy instead of trophy pickup
							if (largeArray[currentLevel][queuePosition] == 1) Registry.trophyEnemy.spawn(j * 16, i * 16, queuePosition);
							queuePosition++;
						}
						
				}
			}
			queuePosition = 0;
		}
		
		public function getCurrentLevel(level:int):void
		{
			currentLevel = level - 1;
			
			//FlxG.log(largeArray +"       ");
		}
		
		public function collectPowerup(player:Player, powerup:Powerup):void
		{
			if(!powerup.disabled) player.boost(powerup.itemType);
			
			if (powerup.itemType != 5 && powerup.itemType != 6)
			{
				powerup.kill();
				largeArray[currentLevel][powerup.queueID] = 0;
			}
			else powerup.disable();
		}
	}

}