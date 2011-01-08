package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level2 extends BaseLevel 
	{
		public function Level2():void
		{
			_spawnPosition = new FlxPoint(8, 22.5 * 8);
			_goalText = "We definitely had our ups. The thrill of someone new, the joy of just being. PLACEHOLDER TEXT LOL";
			_csvToLoad = new Assets.LvlTwo;
			_nextLevel = Level2;
		}
	}
	
}