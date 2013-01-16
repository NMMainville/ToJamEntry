package
{
	import adobe.utils.CustomActions;
	import org.flixel.*;
 
	public class Player extends FlxSprite
	{	
		//------------------------------------------DECLARATIONS---------------------------------------------
		[Embed(source = "../data/PlayerSprites.png")] public var playerSprites:Class; //map graphics 1
		[Embed(source = "../data/coin.mp3")] private var pickCoin:Class;
		[Embed(source = "../data/walk1.mp3")] private var pickHeart:Class;
		[Embed(source = "../data/speed.mp3")] private var pickSpeed:Class;
		[Embed(source = "../data/jump.mp3")] private var pickJump:Class;
		[Embed(source = "../data/crush.mp3")] private var killEnemy:Class;
		[Embed(source = "../data/jump1.mp3")] private var jumpSound:Class;
		[Embed(source = "../data/GCAtreasure.mp3")] private var getKey:Class;
		[Embed(source = "../data/GCAdrop2.mp3")] private var hurtSound:Class;
		[Embed(source = "../data/GCAexplosion2.mp3")] private var dieSound:Class;
		public var win:Boolean = false;
		private var zHeld:Boolean = false;
		private var doubleJump:Boolean = false;
		private var lockDirection:uint = 0; //dictates the direction the player must face when boosted
		private var speedTimer:Number = 0;
		private var hurtTimer:Number = 0; //invincibility frame timer
		public var hasKey:Boolean = false;
		private const GRAVITY:int = 800;
		private const ACCEL:int = 3; //people's X acceleration
		private const HURTTIME:Number = 1; //length of invincibility frames
		//----------------------------------------CREATE FUNCTION--------------------------------------------
		public function Player(X: int, Y: int):void //X and Y define starting position of the player
		{
			super(X, Y);
			//Create player
			loadGraphic(playerSprites, true, true, 32, 32);
			
			health = 30;
			
			win = false;
			
			maxVelocity.x = 150;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = 800;
			
			//Adjust size
			offset.x = 6;
			offset.y = 2;
			width = 20;
			height = 30;

			//Animations
			addAnimation("idle", [0]);
			addAnimation("walking", [0, 1], 12);
			addAnimation("jump", [2]);
			addAnimation("shoot", [3]);
			play("idle");
		}
		
		override public function update():void //update function
		{
			if (onScreen())
			{
			//------------------------------------------ANIMATIONS-----------------------------------------------
			if (velocity.x != 0 && velocity.y == 0 && onFloor) play("walking");
			else if (!onFloor) play("jump");
			else play("idle");
			//-------------------------------------------MOVEMENT------------------------------------------------
			acceleration.x = 0; //set acceleration to 0, update it throughout the update function accordingly
			if(!win){
			if (FlxG.keys.LEFT){
				acceleration.x = -maxVelocity.x * ACCEL;
				facing = LEFT;
			}
			if(FlxG.keys.RIGHT){
				acceleration.x = maxVelocity.x * ACCEL;
				facing = RIGHT;
			}
			if (FlxG.keys.Z && onFloor && !zHeld || FlxG.keys.Z && doubleJump && !zHeld)
			{
				velocity.y = -maxVelocity.y / 1.25;
				FlxG.play(jumpSound);
				zHeld = true;
				doubleJump = false;
			}
			}
			if (onFloor && doubleJump) doubleJump = false;
			if (!FlxG.keys.Z && zHeld) zHeld = false;
			if (!zHeld && !onFloor && velocity.y < 0) velocity.y = 4*velocity.y/5;
			if (!onFloor && velocity.y > 0) velocity.y = 6*velocity.y/5;
			
			if (speedTimer > 0 || maxVelocity.x > 150)
			{
				speedTimer = speedTimer - FlxG.elapsed;
				
				if (facing != lockDirection && speedTimer > 0) facing = lockDirection;
				
				if (lockDirection == 1 && speedTimer > 0)
				{
					velocity.x = maxVelocity.x;
				}
				else if (lockDirection == 0 && speedTimer > 0)
				{
					velocity.x = -maxVelocity.x;
				}
				
				if (speedTimer <= 0)
				{
					speedTimer = 0;
					if(onFloor) maxVelocity.x = 150;
				}
			}
			
			if (hurtTimer > 0) hurtTimer = hurtTimer - FlxG.elapsed;
			
			if (x > Registry.level.worldWidth*16) x = x + 100*FlxG.elapsed;
			
			super.update();
			}
		}
		
		public function boost(type:int):void
		{
			switch(type)
			{
				case 1: if (health < 50) health = health + 10;
						else FlxG.score++;
						FlxG.play(pickHeart);
						break;
				case 2: doubleJump = true; FlxG.play(pickJump); break;
				case 3: speedTimer = 0.75;
						FlxG.play(pickSpeed);
						maxVelocity.x = 250;
						if (facing == 1) velocity.x = 250;
						else if (facing == 0) velocity.x = -250;
						lockDirection = facing;
						break;
				case 4: FlxG.score++; FlxG.play(pickCoin); break;
				case 5: doubleJump = true; FlxG.play(pickJump); break;
				case 6: speedTimer = 0.75;
						FlxG.play(pickSpeed);
						maxVelocity.x = 250;
						if (facing == 1) velocity.x = 250;
						else if (facing == 0) velocity.x = -250;
						lockDirection = facing;
						break;
				case 7: hasKey = true; FlxG.play(getKey); break;
				case 8: break;
				case 9: victory(); break;
				default: break;
			}
		}
		
		public function bounce():void
		{
			FlxG.play(killEnemy);
			velocity.y = -maxVelocity.y / 1;
			zHeld = true;
		}
		
		override public function hurt(Damage:Number):void
		{
			if (hurtTimer <= 0)
			{
				FlxG.play(hurtSound);
				super.hurt(Damage);
				if (facing) velocity.x = -100;
				else velocity.x = 100;
				velocity.y = -100;
				flicker(HURTTIME);
				hurtTimer = HURTTIME;
			}
		}
		
		public function victory():void
		{
			win = true;
			drag.x = 0;
			velocity.x = 50;
			FlxG.play(getKey);
		}
		
		override public function kill():void
		{
			FlxG.play(dieSound);
			super.kill();
		}
		
		//override public function hitSide(Contact:FlxObject,Velocity:Number):void {super.hitSide(Contact, Velocity); }
		//override public function hitBottom(Contact:FlxObject,Velocity:Number):void { super.hitBottom(Contact, Velocity); }
		//override public function hitTop(Contact:FlxObject, Velocity:Number):void { super.hitTop(Contact, Velocity); }
	}
}
