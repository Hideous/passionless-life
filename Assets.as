package 
{
	import flash.utils.ByteArray;
	import org.flixel.FlxSound;
	
	/**
	 * ...
	 * @author Andreas Jörgensen
	 */
	public class Assets 
	{
		[Embed(source = 'assets/tiles.png')] public static var ImgTiles:Class;
		[Embed(source = 'assets/text_balloon.png')] public static var ImgTextBalloon:Class;
		[Embed(source = 'assets/player.png')] public static var ImgPlayer:Class;
		[Embed(source = 'assets/menu.png')] public static var ImgMenu:Class;
		[Embed(source = 'assets/enemy.png')] public static var ImgEnemy:Class;
		
		[Embed(source = 'assets/testlevel.txt', mimeType = "application/octet-stream")] public static var LvlTest:Class;
		
		[Embed(source = 'assets/Level 1.txt', mimeType = "application/octet-stream")] public static var LvlOne:Class;
		[Embed(source = 'assets/Level 2.txt', mimeType = "application/octet-stream")] public static var LvlTwo:Class;
		[Embed(source = 'assets/Level 3.txt', mimeType = "application/octet-stream")] public static var LvlThree:Class;
		[Embed(source = 'assets/Level 4.txt', mimeType = "application/octet-stream")] public static var LvlFour:Class;
		[Embed(source = 'assets/Level 5.txt', mimeType = "application/octet-stream")] public static var LvlFive:Class;
		[Embed(source = 'assets/Level 6.txt', mimeType = "application/octet-stream")] public static var LvlSix:Class;
		[Embed(source = 'assets/Level 7.txt', mimeType = "application/octet-stream")] public static var LvlSeven:Class;
		[Embed(source = 'assets/Level 8.txt', mimeType = "application/octet-stream")] public static var LvlEight:Class;
		[Embed(source = 'assets/Level 9.txt', mimeType = "application/octet-stream")] public static var LvlNine:Class;
		[Embed(source = 'assets/Level 10.txt', mimeType = "application/octet-stream")] public static var LvlTen:Class;
		[Embed(source = 'assets/Level 11.txt', mimeType = "application/octet-stream")] public static var LvlEleven:Class;
		[Embed(source = 'assets/Level 12.txt', mimeType = "application/octet-stream")] public static var LvlTwelve:Class;
		
		[Embed(source = 'assets/Wind.mp3')] public static var SndWind:Class;
		[Embed(source = 'assets/Downshift_Version_3.mp3')] public static var SndMusic:Class;
		
		public static var windSound:FlxSound; //Putting these here cause I CBA to make another global class
		public static var music:FlxSound;
		
	}
	
}