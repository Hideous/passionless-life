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
			_goalText = "";
			_csvToLoad = new Assets.LvlSeven;
			_nextLevel = Level8;
			_backgroundColor = 0xFF7aff21;
		}
	}
	
}