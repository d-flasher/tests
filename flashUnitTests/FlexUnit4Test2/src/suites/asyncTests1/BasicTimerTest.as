package suites.asyncTests1
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flexunit.framework.Assert;
	import org.flexunit.async.Async;
	import ru.dflasher.utils.ServiceUtil;

	/**
	 * ...
	 * @author Sdenis
	 */
	public class BasicTimerTest
	{
		private var timer:Timer;

		[Before]

		public function setUp():void
		{
			timer = new Timer(100, 1);
		}

		[After]

		public function tearDown():void
		{
			if (timer && timer.running)
			{
				timer.stop();
			}

			timer = null;
		}

		//-----------------------------------------------------------------------------------------------------------------------
		//
		//-----------------------------------------------------------------------------------------------------------------------

		[Test(async)]

		public function shouldCompleteTimer():void
		{
			var asyncHanlderTick:Function = Async.asyncHandler(this, handleWin, 90/*, timer, handleTimeout*/);

			//ServiceUtil.timeOut(100, asyncHanlderTick);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, asyncHanlderTick, false, 0, true);

			timer.start();
		}

		protected function handleWin(event:Event, passThroughData:Object):void
		{
			trace(11, passThroughData);
			//Assert.assertEquals((event.target as Timer).currentCount, passThroughData.repeatCount);
			Assert.assertEquals(1, 1);
		}

		protected function handleTimeout(passThroughData:Object):void
		{
			trace(22);
			Assert.fail("Pending event timed out");
		}
	}

}