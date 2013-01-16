package
{
	import org.flixel.*;

	public class EnemyManager extends FlxGroup
	{
		private const COUNT:int = 100;
		
		public function EnemyManager()
		{
			super();
			
			//	There are 100 enemies in our pool
			for (var i:int = 0; i < COUNT; i++)
			{
				add(new Enemy(-100, -100));
			}
		}
		
		public function spawnEnemy(X:int, Y:int, spike:Boolean):void
		{
			Enemy(getFirstAvail()).spawn(X, Y, spike);
		}
		
		public function playerCollide(player:Player, enemy:Enemy):void
		{
			if (Registry.player.y + Registry.player.height-10 < enemy.y && Registry.player.velocity.y > 0 && !enemy.isSpike && !enemy.dying)
			{
				enemy.kill();
				player.bounce();
			}
			else if (!enemy.dying && Registry.player.y + Registry.player.height-10 > enemy.y)
			{
				Registry.player.hurt(10);
			}
		}
		
		public function clearEnemies():void
		{
			for (var j:int = 0; j < COUNT; j++)
			{
				members[j].exists = false;
				members[j].dead = true;
			}
		}
		
		/*public function selfCollide(enemy1:Enemy, enemy2:Enemy):void
		{
			enemy1.facing = Math.abs(enemy1.facing - 1);
			if (enemy1.facing) enemy1.velocity.x = enemy1.maxVelocity.x;
			else enemy1.velocity.x = -enemy1.maxVelocity.x;
			
			enemy2.facing = Math.abs(enemy2.facing - 1);
			if (enemy2.facing) enemy2.velocity.x = enemy2.maxVelocity.x;
			else enemy2.velocity.x = -enemy2.maxVelocity.x;
		}*/
	}
}