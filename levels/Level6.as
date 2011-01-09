package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level6 extends BaseLevel 
	{
		public function Level6():void
		{
			_spawnPosition = new FlxPoint(8, 22 * 8);
			_goalText = "We'd have a few arguments. Very small ones, over things like the toilet ring or who left the milk out. She'd usually crush me in those pretty fast. She was strong.";
			_csvToLoad = new Assets.LvlSix;
			_nextLevel = Level7;
			_backgroundColor = 0xFF3fff21;
		}
		
		override public function createObjects():void 
		{
			super.createObjects();
			
			_enemies.add(new Enemy(9 * 8, 31 * 8));
		}
	}
	
}