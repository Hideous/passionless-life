package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Doeke de Wolf
	 */
	public class MenuState extends FlxState 
	{
		
		public var
		_backgroundColor:uint = 0xFF2197ff,
		_textLeftRight:FlxText;
		 
		override public function create():void 
		{
			super.create();
			
			//FlxG.playMusic(Assets.SndWind, 0.7);
			Assets.windSound = new FlxSound();
			Assets.windSound.loadEmbedded(Assets.SndWind, true);
			Assets.windSound.volume = 0.5;
			Assets.windSound.play();
			
			Assets.music = new FlxSound();
			Assets.music.loadEmbedded(Assets.SndMusic, true);
			
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, _backgroundColor);
			add(bgSprite); //This adds the background sprite. As long as _backgroundColor and similar are set in the constructor we should be fine
			
			var menuSprite:FlxSprite = new FlxSprite();
			menuSprite.loadGraphic(Assets.ImgMenu, true, false, 200, 320);
			menuSprite.addAnimation("wind", [0, 1, 2, 3], 6, true);
			menuSprite.play("wind");
			add(menuSprite);
			
			_textLeftRight = new FlxText(0, 40, 200, "LEFT + RIGHT");
			_textLeftRight.setFormat("silkscreen", 9, 0x000000);
			_textLeftRight.alignment = "center";
			_textLeftRight.antialiasing = false;
			add(_textLeftRight);
		}
		
		override public function update():void 
		{
			super.update();
			
			if (FlxG.keys.pressed("LEFT") && FlxG.keys.pressed("RIGHT"))
			{
				FlxG.state = new GameState();
			}
			
			// animate the left+right text
			var date:Date = new Date();
			var t:Number = date.getMilliseconds() / 1000.0 + date.getSeconds();
			var speed:Number = 2; // speed at which the text floats up/down
			var scale:Number = 3; // scale the up/down movement in pixels
			_textLeftRight.y = 40 + int(scale * Math.sin(t * speed));
		}
	}
	
}