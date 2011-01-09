package levels
{
	import org.flixel.FlxPoint;
	
	import levels.BaseLevel;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Level9 extends BaseLevel 
	{
		public function Level9():void
		{
			_spawnPosition = new FlxPoint(8, 34 * 8);
			_goalText = "";
			_csvToLoad = new Assets.LvlNine;
			_nextLevel = Level1;
		}
		
		override public function createObjects():void 
		{
			super.createObjects();
			
			_enemies.add(new Enemy(14 * 8, 25 * 8));
			_enemies.add(new Enemy(8 * 8, 12 * 8));
		}
	}
	
}