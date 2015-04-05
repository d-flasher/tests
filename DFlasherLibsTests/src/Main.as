package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import renderers.DButton;
	import renderers.TrackRenderer;
	import ru.dflasher.ui.scrollBar1.DScrollBar1;
	import ru.dflasher.ui.scrollBar1.VDScrollBar1;

	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class Main extends Sprite
	{

		public function Main()
		{
			super();

			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}

		private function onAddedToStage(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);

			var container:Sprite = new Sprite();
			container.x = container.y = 20;
			addChild(container);

			var scrollBar:VDScrollBar1 = new VDScrollBar1();
			scrollBar.firstButtonRenderer = DButton;
			scrollBar.secondButtonRenderer = DButton;
			scrollBar.thumbButtonRenderer = DButton;
			scrollBar.trackBackgroundRenderer = TrackRenderer;
			scrollBar.scrollBarHeight = 200;

			scrollBar.minimum = 0;
			scrollBar.maximum = 100;
			scrollBar.changeStep = 10;

			scrollBar.displayParent = container;
		}
	}

}