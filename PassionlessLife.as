package 
{
	import flash.display.StageQuality;
	import flash.ui.ContextMenu;
	import org.flixel.FlxGame;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	
	[SWF(width="400", height="640", backgroundColor="#000000")]
	 
	public class PassionlessLife extends FlxGame 
	{
		public function PassionlessLife()
		{
			super(200, 320, MenuState); //Todo: add a game state.
			
			stage.quality = StageQuality.LOW;
			
			var menu:ContextMenu = new ContextMenu();
			menu.hideBuiltInItems();
			contextMenu = menu;
			
		}
	}
	
}