package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level12 extends BaseLevel 
	{
		public function Level12():void
		{
			_spawnPosition = new FlxPoint(8, 15 * 8);
			_goalText = "";
			_csvToLoad = new Assets.LvlTwelve;
			_nextLevel = Level1;
			_backgroundColor = 0xFFff5c21;
		}
		
		override public function createObjects():void 
		{
			super.createObjects();
			
			_enemies.add(new Enemy(3 * 8, 17 * 8));
			_enemies.add(new Enemy(5 * 8, 17 * 8));
			_enemies.add(new Enemy(7 * 8, 17 * 8));
			_enemies.add(new Enemy(9 * 8, 17 * 8));
			
			_enemies.add(new Enemy(7 * 8, 26 * 8));
			_enemies.add(new Enemy(9 * 8, 26 * 8));
			_enemies.add(new Enemy(11 * 8, 26 * 8));
			_enemies.add(new Enemy(13 * 8, 26 * 8));
		}
	}
	
}