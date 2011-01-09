package 
{
	import flash.net.SharedObject;
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class EndingCutscene extends FlxState 
	{
		private var
		_cutscene:FlxSprite,
		_passedTime:Number,
		_frame:int = 0;
		
		public function EndingCutscene():void
		{
			Assets.music.stop();
			var bgSprite:FlxSprite = new FlxSprite();
			bgSprite.createGraphic(FlxG.width, FlxG.height, 0xFFff2121);
			add(bgSprite);
			
			var so:FlxSave = new FlxSave();
			so.bind("passionless");
			so.data.complete = 1;
			so.forceSave();
			
			_cutscene = new FlxSprite();
			_cutscene.loadGraphic(Assets.ImgCutscene, true, false, FlxG.width, FlxG.height);
			
			_cutscene.addAnimation("1", [0]);
			_cutscene.addAnimation("2", [1]);
			_cutscene.addAnimation("3", [2]);
			_cutscene.addAnimation("4", [3]);
			
			_cutscene.play("1");
			_frame = 0;
			
			_passedTime = 0;
			
			add(_cutscene);
			
		}
		
		override public function update():void 
		{
			super.update();
			
			_passedTime += FlxG.elapsed;
			
			if (_passedTime >= 3)
			{
				_passedTime = 0;
				if (_frame == 0)
				{
					_cutscene.play("2");
					_frame++;
				}
				else if (_frame == 1 )
				{
					_cutscene.play("3");
					_frame++;
				}
				else if (_frame == 2 )
				{
					FlxG.flash.start();
					_cutscene.play("4");
					_frame++;
				}
			}
			
		}
		
	}
	
}