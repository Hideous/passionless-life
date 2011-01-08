package 
{
	import flash.utils.ByteArray;
	
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
		
		[Embed(source = 'assets/testlevel.txt', mimeType = "application/octet-stream")] public static var LvlTest:Class;
		
		[Embed(source = 'assets/Level 1.txt', mimeType = "application/octet-stream")] public static var LvlOne:Class;
		[Embed(source = 'assets/Level 2.txt', mimeType = "application/octet-stream")] public static var LvlTwo:Class;
		[Embed(source = 'assets/Level 3.txt', mimeType = "application/octet-stream")] public static var LvlThree:Class;
		
		[Embed(source = 'assets/Wind.mp3', mimeType = 'application/octet-stream')] public static var SndWind:Class;
	}
	
}