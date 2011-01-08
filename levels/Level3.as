package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level3 extends BaseLevel 
	{
		public function Level3():void
		{
			_spawnPosition = new FlxPoint(8, 16 * 8);
			_goalText = "nooooooooooooooope";
			_csvToLoad = new Assets.LvlThree;
			_nextLevel = Level2;
		}
	}
	
}