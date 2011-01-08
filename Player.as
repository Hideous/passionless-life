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
		_jumpPower:Number = 60,
		_runSpeed:int = 23;
		
		public function Player(spawnx:int, spawny:int):void
		{
			super(spawnx, spawny);
			
			createGraphic(8, 8, 0xFF000000); //temporary until we can get a proper sprite in
			
			maxVelocity.y = _jumpPower * 16; //Just guessing here
			acceleration.y = 12 * 8; //Gravity!
			drag.x = 90; //Stop quickly, but not TOO quickly. Slide is artsy.
		}
		
		override public function update():void 
		{
			if (FlxG.keys.LEFT) velocity.x = -_runSpeed;
			else if (FlxG.keys.RIGHT) velocity.x = _runSpeed;
			
			if (FlxG.keys.justPressed("UP") && onFloor) velocity.y = -_jumpPower;
			
			super.update();
			
		}
	}
	
}