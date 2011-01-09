package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level11 extends BaseLevel 
	{
		public function Level11():void
		{
			_spawnPosition = new FlxPoint(8, 17 * 8);
			_goalText = "";
			_csvToLoad = new Assets.LvlEleven;
			_nextLevel = Level12;
			_backgroundColor = 0xFFff9721;
		}
	}
	
}