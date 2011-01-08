package 
{
	import org.flixel.FlxSprite;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Player extends FlxSprite 
	{
		public var
		_jumpPower:Number = 12;
		
		public function Player(spawnx:int, spawny:int):void
		{
			super(spawnx, spawny);
			
			createGraphic(8, 8); //temporary until we can get a 
			
			maxVelocity.y = _jumpPower * 16; //Just guessing here
			acceleration.y = _jumpPower * 5; //Gravity!
		}
		
		override public function update():void 
		{
			super.update();
		}
	}
	
}