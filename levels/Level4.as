package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level4 extends BaseLevel 
	{
		public function Level4():void
		{
			_spawnPosition = new FlxPoint(8, 34 * 8);
			_goalText = "Some kind of cave, you are a monkey.";
			_csvToLoad = new Assets.LvlFour;
			_nextLevel = Level5;
			_backgroundColor = 0xFF21ff7a;
		}
	}
	
}