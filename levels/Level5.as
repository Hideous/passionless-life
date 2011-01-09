package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level5 extends BaseLevel 
	{
		public function Level5():void
		{
			_spawnPosition = new FlxPoint(8, 18 * 8);
			_goalText = "I started seeing familiar faces and shapes everywhere. Faces of people - people who were better than me. At everything.";
			_csvToLoad = new Assets.LvlFive;
			_nextLevel = Level6;
			_backgroundColor = 0xFF21ff3f;
		}
	}
	
}