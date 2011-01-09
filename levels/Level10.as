package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level10 extends BaseLevel 
	{
		public function Level10():void
		{
			_spawnPosition = new FlxPoint(8, 34 * 8);
			_goalText = "We got back together. But we were broken, lost. We tried our best to regain what we had before, what we so longed for.";
			_csvToLoad = new Assets.LvlTen;
			_nextLevel = Level11;
			_backgroundColor = 0xFFffd321;
		}
	}
	
}