package renderers
{
	import flash.display.Sprite;

	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class TrackRenderer extends Sprite
	{
		private const WIDTH:Number = 10;

		private var _height:Number = 1;
		/**
		 *
		 */
		override public function get height():Number
		{
			return _height;
		}

		override public function set height(value:Number):void
		{
			if (value == _height || isNaN(value)) return;
			_height = value;

			graphics.clear();
			graphics.beginFill(0x0, 0.4);
			graphics.drawRect(0, 0, WIDTH, _height);
			graphics.endFill();
		}
	}

}