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
			_goalText = "And sometimes, when I was at my best, her abusive behavior would drag me back down again. It was an evil, malicious and unbreakable spiral.";
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