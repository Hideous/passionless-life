package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class BaseLevel extends FlxState 
	{
		/* TODO:
		 * Every level needs:
		 * A spawn position
		 * A background color
		 * A tilemap to interact with
		 * A textbox to tell you the 'story'
		 * */
		
		public var
		_backgroundColor:uint = 0xFFFF0000,
		_spawnPosition:FlxPoint,
		_levelTilemap:FlxTilemap,
		_csvToLoad:String, //This is going to be a reference to the CSV file to load for the tilemap.
		_tileGraphics:Class; //The graphics for the tiles.
		 
		 
		override public function create():void 
		{
			super.create();
			
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, _backgroundColor);
			add(bgSprite); //This adds the background sprite. As long as _backgroundColor and similar are set in the constructor we should be fine
			
			_levelTilemap = new FlxTilemap();
			_levelTilemap.loadMap(_csvToLoad, _tileGraphics, 8, 8);
			add(_levelTilemap);
		}
		
		override public function update():void 
		{
			super.update();
			//TODO: Make level collide with (currently non-existant) player
		}
	}
	
}