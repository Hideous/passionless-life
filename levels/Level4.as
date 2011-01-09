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
			_goalText = "Sure, we'd have our fair share of problems. But like the young, naive fools we were, we buried them, and pretended that everything was just fine. And then it started...";
			_csvToLoad = new Assets.LvlFour;
			_nextLevel = Level5;
			_backgroundColor = 0xFF21ff7a;
		}
	}
	
}