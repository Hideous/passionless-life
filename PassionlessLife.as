package 
{

	import org.flixel.FlxGame;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	
	[SWF(width = "400", height = "640", backgroundColor = "#000000")]
	[Frame(factoryClass = "Preloader")]
	 
	public class PassionlessLife extends FlxGame 
	{
		public function PassionlessLife()
		{
			super(200, 320, MenuState); //Todo: add a game state.
		}
	}
	
}