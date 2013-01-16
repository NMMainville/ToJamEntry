package
{
	import org.flixel.*;
 
	public class Enemy extends FlxSprite
	{	
		//TODO: Fix enemy movement bugs (enemy doesn't move when landing, enemy not affected by gravity, etc)
		//------------------------------------------DECLARATIONS---------------------------------------------
		[Embed(source = "../data/EnemySprites.png")] public var enemySprites:Class;
		private const GRAVITY:int = 800;
		private const ACCEL:int = 3; //people's X acceleration
		public var isSpike:Boolean = false; //determines whether the enemy is an enemy or spikes
		public var dying:Boolean = false;
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function Enemy(X: int, Y: int):void //X and Y define starting position of the player
		{
			super(X, Y);
			//Create player
			loadGraphic(enemySprites, true, true, 16, 16);
			
			maxVelocity.x = 50;
			maxVelocity.y = 200;
			acceleration.y = 200;
			
			//Adjust size
			//offset.x = 1;
			//offset.y = 7;
			//width = 15;
			//height = 45;
			
			facing = 0;
			velocity.x = -maxVelocity.x
			
			//Animations
			addAnimation("spikes", [0]);
			addAnimation("enemy", [1, 2], 6, true);
			addAnimation("death", [3, 4, 4], 6, false);
			play("enemy");
			
			addAnimationCallback(detectFrame);
			
			exists = false;
			dead = true;
		}
		
		override public function update():void //update function
		{
			if (onScreen())
			{
				//------------------------------------------ANIMATIONS-----------------------------------------------
				//-------------------------------------------MOVEMENT------------------------------------------------
				if (!isSpike && !dying)
				{
					if (facing == 0 && Registry.level.getTile(x/16 - 0.01, y/16) >= 16)
					{
						facing = 1;
						velocity.x = maxVelocity.x;
					}
					if (facing == 1 && Registry.level.getTile(x/16 + 1, y/16) >= 16)
					{
						facing = 0;
						velocity.x = -maxVelocity.x;
					}
					super.update();
				}
				else if (isSpike && !dying) play("spikes");
				else if (dying) super.update();
			}
		}
		
		public function spawn(X:int, Y:int, spike:Boolean):void
		{
			dying = false;
			reset(X, Y);
			isSpike = spike;
			play("enemy");
			facing = 0;
			if (!isSpike && facing == 1) velocity.x = maxVelocity.x;
			else if (!isSpike && facing == 0) velocity.x = -maxVelocity.x;
		}
		
		override public function kill():void
		{
			play("death");
			velocity.x = 0;
			velocity.y = 0;
			acceleration.y = 0;
			dying = true;
		}
		
		public function detectFrame(animState:String, frameNo:int, spriteNo:int):void //reads the animation state
		{
			if (animState == "death" && frameNo == 2)
			{
				exists = false;
				dead = true;
				dying = false;
				acceleration.y = 200;
				facing = 0;
			}
		}
		
		//override public function hitSide(Contact:FlxObject,Velocity:Number):void { kill(); }
		//override public function hitBottom(Contact:FlxObject,Velocity:Number):void { kill(); }
		//override public function hitTop(Contact:FlxObject, Velocity:Number):void { kill(); }
	}
}
