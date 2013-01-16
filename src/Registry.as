package
{
        import flash.display.Stage;
        import org.flixel.*;

        public class Registry
        {
			public static var level:Level;
			
			public static var powerups:PowerupManager;
			public static var enemies:EnemyManager;
			
			public static var player:Player;
			public static var camera:Camera;
			public static var door:Door;
			public static var hud:HUD;
			public static var trophyEnemy:TrophyEnemy;
            
			public function Registry()
            {
				
            }
        }
}