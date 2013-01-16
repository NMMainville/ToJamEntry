package
{
	import org.flixel.*;
 
	public class Level extends FlxTilemap
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		[Embed(source = "../data/mapCSV_Group0_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap0:Class; //map layout 0
		[Embed(source = "../data/mapCSV_Group1_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap1:Class; //map layout 1
		[Embed(source = "../data/mapCSV_Group2_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap2:Class; //map layout 2
		[Embed(source = "../data/mapCSV_Group3_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap3:Class; //map layout 3
		[Embed(source = "../data/mapCSV_Group4_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap4:Class; //map layout 4
		[Embed(source = "../data/mapCSV_Group6_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap6:Class; //map layout 6
		[Embed(source = "../data/mapCSV_Group7_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap7:Class; //map layout 7
		[Embed(source = "../data/mapCSV_Group8_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap8:Class; //map layout 8
		[Embed(source = "../data/mapCSV_Group9_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap9:Class; //map layout 9
		[Embed(source = "../data/mapCSV_Group10_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap10:Class; //map layout 10
		[Embed(source = "../data/mapCSV_Group11_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap11:Class; //map layout 11
		[Embed(source = "../data/mapCSV_Group12_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap12:Class; //map layout 12
		[Embed(source = "../data/mapCSV_Group13_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap13:Class; //map layout 13
		[Embed(source = "../data/mapCSV_Group14_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap14:Class; //map layout 14
		[Embed(source = "../data/mapCSV_Group15_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap15:Class; //map layout 15
		[Embed(source = "../data/mapCSV_Group16_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap16:Class; //map layout 16
		[Embed(source = "../data/mapCSV_Group17_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap17:Class; //map layout 17
		[Embed(source = "../data/mapCSV_Group18_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap18:Class; //map layout 18
		[Embed(source = "../data/mapCSV_Group19_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap19:Class; //map layout 19
		[Embed(source = "../data/mapCSV_Group20_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap20:Class; //map layout 20
		[Embed(source = "../data/mapCSV_Group21_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap21:Class; //map layout 21
		[Embed(source = "../data/mapCSV_Group22_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap22:Class; //map layout 22
		[Embed(source = "../data/mapCSV_Group23_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap23:Class; //map layout 23
		[Embed(source = "../data/mapCSV_Group24_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap24:Class; //map layout 24
		[Embed(source = "../data/mapCSV_Group25_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap25:Class; //map layout 25
		[Embed(source = "../data/mapCSV_Group26_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap26:Class; //map layout 26
		[Embed(source = "../data/mapCSV_Group27_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap27:Class; //map layout 27
		[Embed(source = "../data/mapCSV_Group28_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap28:Class; //map layout 28
		[Embed(source = "../data/mapCSV_Group29_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap29:Class; //map layout 29
		[Embed(source = "../data/mapCSV_Group30_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap30:Class; //map layout 30
		[Embed(source = "../data/mapCSV_Group31_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap31:Class; //map layout 31
		[Embed(source = "../data/mapCSV_Group32_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap32:Class; //map layout 32
		[Embed(source = "../data/mapCSV_Group33_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap33:Class; //map layout 33
		[Embed(source = "../data/mapCSV_Group34_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap34:Class; //map layout 34
		[Embed(source = "../data/mapCSV_Group35_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap35:Class; //map layout 35
		[Embed(source = "../data/mapCSV_Group36_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap36:Class; //map layout 36
		[Embed(source = "../data/mapCSV_Group37_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap37:Class; //map layout 37
		[Embed(source = "../data/mapCSV_Group38_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap38:Class; //map layout 38
		[Embed(source = "../data/mapCSV_Group39_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap39:Class; //map layout 39
		[Embed(source = "../data/mapCSV_Group40_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap40:Class; //map layout 40
		
		//DEBUG LEVELS
		
		[Embed(source = "../data/mapCSV_Group41_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap41:Class; //map layout 41
		[Embed(source = "../data/mapCSV_Group42_Map1.csv", mimeType = "application/octet-stream")] public var TxtMap42:Class; //map layout 42
		
		[Embed(source = "../data/bgTiles.png")] public var BG1:Class; //map graphics 1
		public var currentLevel:int = 1; //change this number for testing purposes
										//player can long jump 14 squares, 21 when boosted
										//jump 4 squares, bounce 7 squares
		
		private const BOUND:Number = 2.5; //defines path boundary
		
		private var tempArray:Array;
		public var worldWidth:int = 0;
		public var worldHeight:int = 0;
		private var levelMap:Array = new Array([]);
		
		public var path1:FlxPoint = new FlxPoint(-1000, -1000); //The four entrance/exit paths for the maps
		public var path2:FlxPoint = new FlxPoint(-1000, -1000);
		public var path3:FlxPoint = new FlxPoint(-1000, -1000);
		public var path4:FlxPoint = new FlxPoint(-1000, -1000);
		
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function Level():void
		{
			levelMap = [[0, 0, 0, 0], //This index is unused
						[3, 2, 41, 0], //1 //NOTE: this array defines what level to change to when the player exits
						[0, 1, 0, 0], //2
						[1, 4, 0, 0], //3
						[6, 3, 0, 0], //4
						[0, 0, 0, 0], //nil
						[4, 7, 7, 0], //6
						[8, 6, 6, 8], //7
						[7, 9, 13, 7], //8
						[10, 8, 0, 0], //9
						[9, 11, 0, 0], //10
						[12, 10, 0, 0], //11
						[11, 0, 0, 0], //12
						[14, 0, 8, 0], //13
						[13, 15, 0, 19], //14
						[16, 14, 17, 26], //15
						[15, 0, 0, 0], //16
						[18, 0, 15, 0], //17
						[17, 31, 0, 0], //18
						[20, 25, 26, 14], //19
						[19, 21, 0, 0], //20
						[22, 20, 0, 0], //21
						[21, 0, 23, 0], //22
						[25, 24, 22, 32], //23
						[0, 23, 0, 0], //24
						[23, 19, 0, 0], //25
						[27, 28, 19, 15], //26
						[26, 0, 0, 0], //27
						[29, 26, 0, 0], //28
						[28, 30, 0, 0], //29
						[38, 29, 31, 35], //30
						[0, 18, 30, 0], //31
						[33, 37, 0, 23], //32
						[32, 34, 0, 0], //33
						[35, 33, 0, 0], //34
						[34, 36, 0, 30], //35
						[37, 35, 0, 0], //36
						[36, 32, 38, 0], //37
						[30, 39, 37, 0], //38
						[40, 38, 0, 0], //39
						[39, 0, 0, 0], //40
						[42, 0, 1, 0], //DEBUG 1
						[41, 0, 0, 0]]; //DEBUG 2
			
			drawIndex = 16;
			collideIndex = 16;
			
			loadMap(new TxtMap0, BG1, 16, 16);
			
			changeLevel(currentLevel);
			
			
		}
		
		/*override public function update():void //update function
		{
			super.update();
		}*/
		
		public function checkMapChange(force:int):void
		{
			//FlxG.log(Registry.player.x + " - " + path1.x + "," + Registry.player.y + " - " + path1.y);
			//FlxG.log(Registry.player.x + "," + Registry.player.y);
			//FlxG.log(path1.x + "," + path1.y);
			
			if (Registry.player.x > path1.x - (BOUND * 16)
					&& Registry.player.y > path1.y - (BOUND * 16)
					&& Registry.player.x < path1.x + (BOUND * 16)
					&& Registry.player.y < path1.y + (BOUND * 16)
					&& levelMap[currentLevel][0] != 0 || force==1)
			{
				//FlxG.log("Good to travel path 1");
				changeLevel(levelMap[currentLevel][0]);
				currentLevel = levelMap[currentLevel][0];
				Registry.player.x = Registry.camera.x = path1.x;
				Registry.player.y = Registry.camera.y = path1.y;
				resetCamera();
			}
			else if (Registry.player.x > path2.x - (BOUND * 16)
					&& Registry.player.y > path2.y - (BOUND * 16)
					&& Registry.player.x < path2.x + (BOUND * 16)
					&& Registry.player.y < path2.y + (BOUND * 16)
					&& levelMap[currentLevel][1] != 0 || force==2)
			{
				//FlxG.log("Good to travel path 2");
				changeLevel(levelMap[currentLevel][1]);
				currentLevel = levelMap[currentLevel][1];
				Registry.player.x = Registry.camera.x = path2.x;
				Registry.player.y = Registry.camera.y = path2.y;
				resetCamera();
			}
			else if (Registry.player.x > path3.x - (BOUND * 16)
					&& Registry.player.y > path3.y - (BOUND * 16)
					&& Registry.player.x < path3.x + (BOUND * 16)
					&& Registry.player.y < path3.y + (BOUND * 16)
					&& levelMap[currentLevel][2] != 0 || force==3)
			{
				//FlxG.log("Good to travel path 3");
				changeLevel(levelMap[currentLevel][2]);
				currentLevel = levelMap[currentLevel][2];
				Registry.player.x = Registry.camera.x = path3.x;
				Registry.player.y = Registry.camera.y = path3.y;
				resetCamera();
			}
			else if (Registry.player.x > path4.x - (BOUND * 16)
					&& Registry.player.y > path4.y - (BOUND * 16)
					&& Registry.player.x < path4.x + (BOUND * 16)
					&& Registry.player.y < path4.y + (BOUND * 16)
					&& levelMap[currentLevel][3] != 0 || force==4)
			{
				//FlxG.log("Good to travel path 4");
				changeLevel(levelMap[currentLevel][3]);
				currentLevel = levelMap[currentLevel][3];
				Registry.player.x = Registry.camera.x = path4.x;
				Registry.player.y = Registry.camera.y = path4.y;
				resetCamera();
			}
			//FlxG.log("Current level is "+currentLevel);
		}
		
		public function changeLevel(levelNumber:int):void
		{
			Registry.powerups.getCurrentLevel(levelNumber);
			switch(levelNumber)
			{
				default: break;
				case 1: loadMap(new TxtMap1, BG1, 16, 16);
						parseTileMap(new TxtMap1);
						Registry.powerups.parseTileMap(new TxtMap1);
						break;
				case 2: loadMap(new TxtMap2, BG1, 16, 16);
						parseTileMap(new TxtMap2);
						Registry.powerups.parseTileMap(new TxtMap2);
						break;
				case 3: loadMap(new TxtMap3, BG1, 16, 16);
						parseTileMap(new TxtMap3);
						Registry.powerups.parseTileMap(new TxtMap3);
						break;
				case 4: loadMap(new TxtMap4, BG1, 16, 16);
						parseTileMap(new TxtMap4);
						Registry.powerups.parseTileMap(new TxtMap4);
						break;
				case 6: loadMap(new TxtMap6, BG1, 16, 16);
						parseTileMap(new TxtMap6);
						Registry.powerups.parseTileMap(new TxtMap6);
						break;
				case 7: loadMap(new TxtMap7, BG1, 16, 16);
						parseTileMap(new TxtMap7);
						Registry.powerups.parseTileMap(new TxtMap7);
						break;
				case 8: loadMap(new TxtMap8, BG1, 16, 16);
						parseTileMap(new TxtMap8);
						Registry.powerups.parseTileMap(new TxtMap8);
						break;
				case 9: loadMap(new TxtMap9, BG1, 16, 16);
						parseTileMap(new TxtMap9);
						Registry.powerups.parseTileMap(new TxtMap9);
						break;
				case 10: loadMap(new TxtMap10, BG1, 16, 16);
						parseTileMap(new TxtMap10);
						Registry.powerups.parseTileMap(new TxtMap10);
						break;
				case 11: loadMap(new TxtMap11, BG1, 16, 16);
						parseTileMap(new TxtMap11);
						Registry.powerups.parseTileMap(new TxtMap11);
						break;
				case 12: loadMap(new TxtMap12, BG1, 16, 16);
						parseTileMap(new TxtMap12);
						Registry.powerups.parseTileMap(new TxtMap12);
						break;
				case 13: loadMap(new TxtMap13, BG1, 16, 16);
						parseTileMap(new TxtMap13);
						Registry.powerups.parseTileMap(new TxtMap13);
						break;
				case 14: loadMap(new TxtMap14, BG1, 16, 16);
						parseTileMap(new TxtMap14);
						Registry.powerups.parseTileMap(new TxtMap14);
						break;
				case 15: loadMap(new TxtMap15, BG1, 16, 16);
						parseTileMap(new TxtMap15);
						Registry.powerups.parseTileMap(new TxtMap15);
						break;
				case 16: loadMap(new TxtMap16, BG1, 16, 16);
						parseTileMap(new TxtMap16);
						Registry.powerups.parseTileMap(new TxtMap16);
						break;
				case 17: loadMap(new TxtMap17, BG1, 16, 16);
						parseTileMap(new TxtMap17);
						Registry.powerups.parseTileMap(new TxtMap17);
						break;
				case 18: loadMap(new TxtMap18, BG1, 16, 16);
						parseTileMap(new TxtMap18);
						Registry.powerups.parseTileMap(new TxtMap18);
						break;
				case 19: loadMap(new TxtMap19, BG1, 16, 16);
						parseTileMap(new TxtMap19);
						Registry.powerups.parseTileMap(new TxtMap19);
						break;
				case 20: loadMap(new TxtMap20, BG1, 16, 16);
						parseTileMap(new TxtMap20);
						Registry.powerups.parseTileMap(new TxtMap20);
						break;
				case 21: loadMap(new TxtMap21, BG1, 16, 16);
						parseTileMap(new TxtMap21);
						Registry.powerups.parseTileMap(new TxtMap21);
						break;
				case 22: loadMap(new TxtMap22, BG1, 16, 16);
						parseTileMap(new TxtMap22);
						Registry.powerups.parseTileMap(new TxtMap22);
						break;
				case 23: loadMap(new TxtMap23, BG1, 16, 16);
						parseTileMap(new TxtMap23);
						Registry.powerups.parseTileMap(new TxtMap23);
						break;
				case 24: loadMap(new TxtMap24, BG1, 16, 16);
						parseTileMap(new TxtMap24);
						Registry.powerups.parseTileMap(new TxtMap24);
						break;
				case 25: loadMap(new TxtMap25, BG1, 16, 16);
						parseTileMap(new TxtMap25);
						Registry.powerups.parseTileMap(new TxtMap25);
						break;
				case 26: loadMap(new TxtMap26, BG1, 16, 16);
						parseTileMap(new TxtMap26);
						Registry.powerups.parseTileMap(new TxtMap26);
						break;
				case 27: loadMap(new TxtMap27, BG1, 16, 16);
						parseTileMap(new TxtMap27);
						Registry.powerups.parseTileMap(new TxtMap27);
						break;
				case 28: loadMap(new TxtMap28, BG1, 16, 16);
						parseTileMap(new TxtMap28);
						Registry.powerups.parseTileMap(new TxtMap28);
						break;
				case 29: loadMap(new TxtMap29, BG1, 16, 16);
						parseTileMap(new TxtMap29);
						Registry.powerups.parseTileMap(new TxtMap29);
						break;
				case 30: loadMap(new TxtMap30, BG1, 16, 16);
						parseTileMap(new TxtMap30);
						Registry.powerups.parseTileMap(new TxtMap30);
						break;
				case 31: loadMap(new TxtMap31, BG1, 16, 16);
						parseTileMap(new TxtMap31);
						Registry.powerups.parseTileMap(new TxtMap31);
						break;
				case 32: loadMap(new TxtMap32, BG1, 16, 16);
						parseTileMap(new TxtMap32);
						Registry.powerups.parseTileMap(new TxtMap32);
						break;
				case 33: loadMap(new TxtMap33, BG1, 16, 16);
						parseTileMap(new TxtMap33);
						Registry.powerups.parseTileMap(new TxtMap33);
						break;
				case 34: loadMap(new TxtMap34, BG1, 16, 16);
						parseTileMap(new TxtMap34);
						Registry.powerups.parseTileMap(new TxtMap34);
						break;
				case 35: loadMap(new TxtMap35, BG1, 16, 16);
						parseTileMap(new TxtMap35);
						Registry.powerups.parseTileMap(new TxtMap35);
						break;
				case 36: loadMap(new TxtMap36, BG1, 16, 16);
						parseTileMap(new TxtMap36);
						Registry.powerups.parseTileMap(new TxtMap36);
						break;
				case 37: loadMap(new TxtMap37, BG1, 16, 16);
						parseTileMap(new TxtMap37);
						Registry.powerups.parseTileMap(new TxtMap37);
						break;
				case 38: loadMap(new TxtMap38, BG1, 16, 16);
						parseTileMap(new TxtMap38);
						Registry.powerups.parseTileMap(new TxtMap38);
						break;
				case 39: loadMap(new TxtMap39, BG1, 16, 16);
						parseTileMap(new TxtMap39);
						Registry.powerups.parseTileMap(new TxtMap39);
						break;
				case 40: loadMap(new TxtMap40, BG1, 16, 16);
						parseTileMap(new TxtMap40);
						Registry.powerups.parseTileMap(new TxtMap40);
						break;
					//DEBUG LEVELS
				case 41: loadMap(new TxtMap41, BG1, 16, 16);
						parseTileMap(new TxtMap41);
						Registry.powerups.parseTileMap(new TxtMap41);
						break;
				case 42: loadMap(new TxtMap42, BG1, 16, 16);
						parseTileMap(new TxtMap42);
						Registry.powerups.parseTileMap(new TxtMap42);
						break;
			}
		}
		
		public function resetCamera():void
		{
			FlxG.followBounds(0, 0, (worldWidth) * 16, (worldHeight) * 16, true);
			FlxG.follow(Registry.camera,2.5);
			FlxG.followAdjust(0.5, 0.0);
		}
		
		public function parseTileMap(tileMapTxt:String):void //Parse FG tilemap into powerup locations
		{
			path1.x = -1000;
			path1.y = -1000;
			
			path2.x = -1000;
			path2.y = -1000;
			
			path3.x = -1000;
			path3.y = -1000;
			
			path4.x = -1000;
			path4.y = -1000;
			
			worldWidth = 0;
			worldHeight = 0;
			
			tempArray = tileMapTxt.split("\n");
			
			for (var i:int = 0; i < tempArray.length; i++)
			{
				tempArray[i] = tempArray[i].split(",");
				
				for (var j:int = 0; j < tempArray[i].length; j++)
				{
					if (tempArray[i][j] == 12)
					{
						path1.x = j*16;
						path1.y = i*16;
					}
					if (tempArray[i][j] == 13)
					{
						path2.x = j*16;
						path2.y = i*16;
					}
					if (tempArray[i][j] == 14)
					{
						path3.x = j*16;
						path3.y = i*16;
					}
					if (tempArray[i][j] == 15)
					{
						path4.x = j*16;
						path4.y = i*16;
					}
				}
			}
			worldWidth = tempArray[0].length;
			worldHeight = tempArray.length - 1;
		}
	}
}