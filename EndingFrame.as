package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class EndingFrame extends FlxState 
	{
		public function EndingFrame()
		{
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, 0xFFff2121);
			add(bgSprite);
			
			var _cutscene:FlxSprite = new FlxSprite();
			_cutscene.loadGraphic(Assets.ImgCutscene, true, false, FlxG.width, FlxG.height);
			
			_cutscene.addAnimation("1", [0]);
			_cutscene.addAnimation("2", [1]);
			_cutscene.addAnimation("3", [2]);
			_cutscene.addAnimation("4", [3]);
			
			_cutscene.play("4");
			
			add(_cutscene);
		}
		
		override public function update():void 
		{
			 super.update();
			 
			if (FlxG.keys.SHIFT && FlxG.keys.R)
			{
				var so:FlxSave = new FlxSave();
				so.bind("passionless");
				so.data.complete = 0;
				so.forceSave();
				
				FlxG.state = new MenuState();
			}
		}
	}
	
}