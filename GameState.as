package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class GameState extends FlxState //I assume this is going to turn into a testing ground, instead of the normal levels 
	{
		override public function create():void 
		{
			super.create();
			
			FlxG.state = new BaseLevel();
		}
	}
	
}