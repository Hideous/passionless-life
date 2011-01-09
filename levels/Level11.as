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
			_goalText = "But the relationship fell apart. No longer were we ourselves, no longer would she be together with me. I was angry, mad, furious. What had I done wrong?";
			_csvToLoad = new Assets.LvlEleven;
			_nextLevel = Level12;
			_backgroundColor = 0xFFff9721;
		}
	}
	
}