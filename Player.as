package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Player extends FlxSprite 
	{
		public var
		_jumpPower:Number = 50,
		_runSpeed:int = 23,
		_jumping:Boolean = false,
		_canMove:Boolean = true;
		
		private var
		_jumpDuration:Number = 0;
		
		public function Player(spawnx:int, spawny:int):void
		{
			super(spawnx, spawny);
			
			//createGraphic(8, 8, 0xFF000000); //temporary until we can get a proper sprite in
			loadGraphic(Assets.ImgPlayer, true, true, 16, 20);
			
			width = 6;
			offset.x = 5;
			offset.y = 5
			height = height-5
			
			addAnimation("idle", [0]);
			addAnimation("jumpup", [5]);
			addAnimation("jumpmid", [6]);
			addAnimation("falling", [7]);
			addAnimation("run", [1, 2, 3, 4], 6, true);
			
			maxVelocity.y = _jumpPower * 16; //Just guessing here
			acceleration.y = 12 * 8; //Gravity!
			drag.x = 90; //Stop quickly, but not TOO quickly. Slide is artsy.
		}
		
		override public function update():void 
		{
			if (!_canMove) return;
			if (FlxG.keys.LEFT) 
			{
				velocity.x = -_runSpeed;
				facing = FlxSprite.LEFT;
			}
			else if (FlxG.keys.RIGHT) 
			{
				facing = FlxSprite.RIGHT;
				velocity.x = _runSpeed;
			}
			
			if (velocity.y < -10 && !onFloor) play("jumpup");
			else if (velocity.y > 10 && !onFloor) play("falling");
			else if (!onFloor) play("jumpmid");
			
			if (onFloor && !velocity.x) play("idle");
			else if (onFloor) play("run");
			
			if (!onFloor)
			{
				_jumpDuration += FlxG.elapsed;
			}
			else 
			{
				_jumpDuration = 0;
				_jumping = false;
			}
			
			if (FlxG.keys.justPressed("UP") && onFloor) 
			{
				velocity.y = -_jumpPower;
				_jumping = true;
			}
			
			if (!FlxG.keys.UP && !onFloor) _jumpDuration = 50;
			
			if (FlxG.keys.UP && !onFloor && _jumpDuration < 0.5 && _jumping)
			{
				velocity.y = -_jumpPower
			}
			
			super.update();
			
		}
		
		override public function hitTop(Contact:FlxObject, Velocity:Number):void 
		{
			super.hitTop(Contact, Velocity);
			
			_jumpDuration = 50;
		}
	}
	
}