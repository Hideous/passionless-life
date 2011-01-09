package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level7 extends BaseLevel 
	{
		public function Level7():void
		{
			_spawnPosition = new FlxPoint(8, 28 * 8);
			_goalText = "I started feeling depressed. I'd be trapped, deep in the pit of despair - but she always helped me back up again.";
			_csvToLoad = new Assets.LvlSeven;
			_nextLevel = Level8;
			_backgroundColor = 0xFF7aff21;
		}
	}
	
}