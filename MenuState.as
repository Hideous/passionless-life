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
		_backgroundColor:uint = 0xFF00c3ff;
		 
		 
		override public function create():void 
		{
			super.create();
			
			FlxG.playMusic(Assets.SndWind);
			
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, _backgroundColor);
			add(bgSprite); //This adds the background sprite. As long as _backgroundColor and similar are set in the constructor we should be fine
			
			var menuSprite:FlxSprite = new FlxSprite();
			menuSprite.loadGraphic(Assets.ImgMenu, true, false, 200, 320);
			menuSprite.addAnimation("wind", [0, 1, 2, 3], 6, true);
			menuSprite.play("wind");
			add(menuSprite);
		}
		
		override public function update():void 
		{
			super.update();
			
			if (FlxG.keys.pressed("LEFT") && FlxG.keys.pressed("RIGHT"))
			{
				FlxG.state = new GameState();
			}
		}
	}
	
}