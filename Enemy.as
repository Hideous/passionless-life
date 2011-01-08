package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Enemy extends FlxSprite 
	{
		private var 
		_runspeed:int = 22;
		
		public function Enemy(X:int, Y:int):void
		{
			super(X, Y);
			loadGraphic(Assets.ImgEnemy, true, true, 16, 16);
			
			addAnimation("run", [0, 1, 2, 3], 6);
			play("run");
			
			offset.x = 2;
			width = 12;
			
			offset.y = 2;
			height = 14;
			
			if (FlxU.random() * 10 > 5) 
			{
				velocity.x = _runspeed;
				facing = RIGHT;
			}
			else 
			{
				velocity.x = -_runspeed;
				facing = LEFT;
			}
			
			acceleration.y = 12 * 8;
		}
		
		override public function hitSide(Contact:FlxObject, Velocity:Number):void 
		{
			//super.hitSide(Contact, Velocity);
			velocity.x = -velocity.x;
			
			if (facing == LEFT) facing = RIGHT;
			else facing = LEFT;
		}
	}
	
}