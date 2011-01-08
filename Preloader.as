package 
{
	import flash.display.StageQuality;
	import flash.ui.ContextMenu;
	import org.flixel.FlxPreloader;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Preloader extends FlxPreloader 
	{
		public function Preloader():void
		{
			className = "PassionlessLife";
			
			stage.quality = StageQuality.LOW;
			
			var menu:ContextMenu = new ContextMenu();
			menu.hideBuiltInItems();
			contextMenu = menu;
			
			
			super();
		}
	}
	
}