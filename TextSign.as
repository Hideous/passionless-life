package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	 
	public class TextSign extends FlxSprite 
	{
		[Embed(source = 'assets/slkscr.ttf', fontFamily='silkscreen')] public var Silkscreen:String;
		
		public var
		_goalString:String,
		_textDisplay:FlxText,
		_active:Boolean = false;
		
		private var
		_timeSinceLast:Number,
		_nextTime:Number,
		_maxTime:Number = 0.1,
		_timeVariation:Number = 0.05,
		_currentLetterIndex:int = 0;
		
		public function TextSign():void
		{
			super();
			_goalString = "I am not set to anything :(";
			_timeSinceLast = 0;
			_nextTime = 0.01;
			
			_textDisplay = new FlxText(5, 5, 195, "");
			
			
			_textDisplay.setFormat("silkscreen", 8, 0x000000);
			_textDisplay.antialiasing = false;
			
			loadGraphic(Assets.ImgTextBalloon);
		}
		
		public function start():void
		{
			_active = true;
		}
		
		override public function update():void 
		{
			super.update();
			var i:int;
			if (!_active) return;
			
			_timeSinceLast += FlxG.elapsed;
			
			if (_timeSinceLast >= _nextTime)
			{
				_timeSinceLast = 0;
				_nextTime = _maxTime + (FlxU.random() * _timeVariation );
				
				if (_currentLetterIndex == _goalString.length) return;
				
				
				
				_textDisplay.text += _goalString.substr(_currentLetterIndex, 1);
				_currentLetterIndex++;
				
			}
		}
		
		override public function render():void 
		{
			super.render();
			_textDisplay.render();
		}
		
	}
	
}