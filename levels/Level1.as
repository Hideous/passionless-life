package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level1 extends BaseLevel 
	{
		public function Level1():void
		{
			_spawnPosition = new FlxPoint(8, 27 * 8);
			_goalText = "At first, nothing was out of the ordinary. Days went on as per usual, my eyes, ears, nose, and fingers sensed nothing strange. We were just our usual selves.";
			_csvToLoad = new Assets.LvlOne;
			_nextLevel = Level2;
			
			_backgroundColor = 0xFF21d3ff;
			
			if (!Assets.music.playing) Assets.music.play();
		}
	}
	
}