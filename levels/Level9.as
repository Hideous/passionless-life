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
			_goalText = "We had a 'pause'. Like coming out of a sweaty garage with a running car, like being rescued from monoxide poisoning, it was great. But I soon found myself missing her again.";
			_csvToLoad = new Assets.LvlNine;
			_nextLevel = Level10;
			_backgroundColor = 0xFFf0ff21;
		}
		
		override public function createObjects():void 
		{
			super.createObjects();
			
			_enemies.add(new Enemy(14 * 8, 25 * 8));
			_enemies.add(new Enemy(8 * 8, 12 * 8));
		}
	}
	
}