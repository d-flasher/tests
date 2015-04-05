package renderers
{
	import flash.display.Sprite;

	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class DButton extends Sprite
	{
		private const WIDTH:Number = 10;
		private const HEIGHT:Number = 10;

		public function DButton()
		{
			graphics.beginFill(0x0, 1);
			graphics.drawRect(0, 0, WIDTH, HEIGHT);
			graphics.endFill();
		}

		override public function get width():Number
		{
			return WIDTH;
		}

		override public function get height():Number
		{
			return HEIGHT;
		}
	}

}