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
			_spawnPosition = new FlxPoint(8, 17 * 8);
			_goalText = "We ended up moving in together, in a small apartment in Greenwich, on the third floor. We'd go up to the roof some nights, and just sit there together, looking at the stars.";
			_csvToLoad = new Assets.LvlThree;
			_nextLevel = Level4;
			_backgroundColor = 0xFF21ffb5;
		}
	}
	
}