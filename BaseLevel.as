package 
{
	import org.flixel.*;
	import flash.utils.getDefinitionByName;
	
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
		_player:Player,
		_nextLevel:String,
		_crypticText:TextSign;
		 
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
			
			_csvToLoad = new Assets.LvlTest; //Temporary for testing
			
			_levelTilemap = new FlxTilemap();
			add(_levelTilemap);
			_levelTilemap.x = -5*8
			_levelTilemap.collideIndex = 5;
			_levelTilemap.loadMap(_csvToLoad, Assets.ImgTiles, 8, 8);
			_levelTilemap.refresh = true;
			
			/*_tileBlock = new FlxTileblock( -25, 200, 500, 500);
			_tileBlock.loadTiles(Assets.ImgTiles, 8, 8, 0);*/
			
			_player = new Player(30, 30);
			
			add(_tileBlock);
			add(_player);
			
			_crypticText = new TextSign();
			add(_crypticText);
			_crypticText._goalString = "I ate my ice cream. After 7 hours\nnobody wanted my hamburgers.\n\nI enjoy toasters.";
			_crypticText.start();
		}
		
		override public function update():void 
		{
			super.update();
			
			_levelTilemap.collide(_player);
			
			if (_player.x > FlxG.width && _nextLevel != "")
			{
				var classReference:Class = getDefinitionByName(_nextLevel) as Class;
				FlxG.state = (new classReference() as FlxState); //Load the next level by determining the class name from the string
			}
		}
	}
	
}