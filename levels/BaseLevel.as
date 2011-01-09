package levels
{
	import org.flixel.*;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class BaseLevel extends FlxState 
	{
		/* TODO:
		 * Every level needs:
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
		_nextLevel:Class,
		_goalText:String,
		_crypticText:TextSign,
		_enemies:FlxGroup;
		 
		//TEMPORARY FOR DEBUG
		private var
		_tileBlock:FlxTileblock;
		
		private var _fadeSprite:FlxSprite;
		 
		override public function create():void 
		{
			super.create();
			
			FlxU.setWorldBounds( -500, -500, 800, 800);
			
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, _backgroundColor);
			add(bgSprite); //This adds the background sprite. As long as _backgroundColor and similar are set in the constructor we should be fine
			
			//_csvToLoad = new Assets.LvlTest; //Temporary for testing
			
			_levelTilemap = new FlxTilemap();
			add(_levelTilemap);
			_levelTilemap.x = -5*8
			_levelTilemap.collideIndex = 5;
			_levelTilemap.loadMap(_csvToLoad, Assets.ImgTiles, 8, 8);
			_levelTilemap.refresh = true;
			
			/*_tileBlock = new FlxTileblock( -25, 200, 500, 500);
			_tileBlock.loadTiles(Assets.ImgTiles, 8, 8, 0);*/
			
			_player = new Player(_spawnPosition.x, _spawnPosition.y);
			
			add(_tileBlock);
			add(_player);
			
			_crypticText = new TextSign();
			add(_crypticText);
			_crypticText._goalString = _goalText;
			_crypticText.start();
			
			_enemies = new FlxGroup();
			add(_enemies);
			
			createObjects();
			
			_fadeSprite = new FlxSprite();
			_fadeSprite.createGraphic(FlxG.width, FlxG.height, 0xFF000000);
			add(_fadeSprite);
		}
		
		public function createObjects():void
		{
			//For use in sub-classes when creating objects and stuff, to make them show up in the right order
		}
		
		override public function update():void 
		{
			super.update();
			
			if (FlxG.debug && FlxG.keys.justPressed("O")) FlxG.state = new Level11();
			
			_fadeSprite.alpha -= FlxG.elapsed;
			
			_levelTilemap.collide(_player);
			_levelTilemap.collide(_enemies);
			
			for each (var e:Enemy in _enemies.members)
			{
				if (e.overlaps(_player) && !e.dead && _player._canMove)
				{
					if (_player.velocity.y > 0)
					{
						e.kill()
						_player.velocity.y = -30;
					}
					else
					{
						//_player._canMove = false;
						_player.kill();
						//FlxG.fade.start(0xFF000000, 0.5, resetLevel);
						FlxG.flash.start(0xFFFFFFFF, 0.3, resetLevel);
					}
				}
			}
			
			if (_player.y > FlxG.height)
			{
				_player.kill();
				FlxG.flash.start(0xFFFFFFFF, 0.3, resetLevel);
			}
			
			if (_player.x > FlxG.width)
			{
				FlxG.fade.start(0xFF000000, 1, switchLevels);
				_player._canMove = false;
			}
		}
		
		private function switchLevels():void
		{
			FlxG.state = new _nextLevel; //Load the next level
		}
		private function resetLevel():void
		{
			var classToMake:Class = getDefinitionByName(getQualifiedClassName(this)) as Class;
			FlxG.state = new classToMake;//State is a new instance of this class
		}
	}
	
}