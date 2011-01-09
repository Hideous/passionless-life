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
			_goalText = "I started seeing familiar faces and shapes everywhere. Faces of people - people who were better than me. At everything.";
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