package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level8 extends BaseLevel 
	{
		public function Level8():void
		{
			_spawnPosition = new FlxPoint(8, 36 * 8);
			_goalText = "";
			_csvToLoad = new Assets.LvlEight;
			_nextLevel = Level9;
			_backgroundColor = 0xFFb5ff21;
		}
		
		override public function createObjects():void 
		{
			super.createObjects();
			
			_enemies.add(new Enemy(14 * 8, 36 * 8));
		}
	}
	
}