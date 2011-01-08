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
		_backgroundColor:uint = 0xFF44bee3,
		_spawnPosition:FlxPoint,
		_levelTilemap:FlxTilemap,
		_csvToLoad:String, //This is going to be a reference to the CSV file to load for the tilemap.
		_tileGraphics:Class, //The graphics for the tiles.
		_player:Player;
		 
		//TEMPORARY FOR DEBUG
		private var
		_tileBlock:FlxTileblock;
		 
		override public function create():void 
		{
			super.create();
			
			FlxU.setWorldBounds( -500, -500, 800, 800);
			
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, _backgroundColor);
			add(bgSprite); //This adds the background sprite. As long as _backgroundColor and similar are set in the constructor we should be fine
			
			//Uncomment later, when we actually have tilemaps to use
			/*_levelTilemap = new FlxTilemap();
			_levelTilemap.loadMap(_csvToLoad, _tileGraphics, 8, 8);
			add(_levelTilemap);*/
			
			_tileBlock = new FlxTileblock( -25, 200, 500, 500);
			_tileBlock.loadTiles(Assets.ImgTiles, 8, 8, 0);
			
			_player = new Player(30, 30);
			
			add(_tileBlock);
			add(_player);
		}
		
		override public function update():void 
		{
			super.update();
			//TODO: Make level collide with (currently non-existant) player
			
			_tileBlock.collide(_player);
		}
	}
	
}