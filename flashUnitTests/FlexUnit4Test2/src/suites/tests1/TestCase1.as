package suites.tests1
{
	import flash.geom.Point;
	import matcher.CloseToPointMatcher;
	import org.flexunit.Assert;
	import org.flexunit.assertThat;

	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class TestCase1
	{
		private var count:int;

		[BeforeClass]
		public static function runBeforeEveryTestC():void
		{
			trace('BeforeClass');
		}

		[AfterClass]
		public static function runAfterEveryTestC():void
		{
			trace('AfterClass');
		}

		[Before]
		public function runBeforeEveryTest():void
		{
			trace('Before');
			count = 10;
		}

		[After]
		public function runAfterEveryTest():void
		{
			trace('After');
			trace('');
			count = 0;
		}

		//---------------------------------------------------------------------
		//
		//---------------------------------------------------------------------

		[Test]
		public function substraction():void
		{
			Assert.assertFalse(8 == 7);
		}

		[Ignore(description="Rtt112")]
		[Test]
		public function substraction1():void
		{
			Assert.assertEquals(8, count - 2, 10 - 2);
		}

		[Test(description = "This tests addition")]
		public function simpleAdd():void
		{
			var x:int = 5 + 3;
			Assert.assertEquals( 8, x );
		}

		[Test]
		public function substaction2():void
		{
			//assertThat(5, closeTo(4.99, 0.01));
			assertThat(
				new Point(5, 0.1),
				new CloseToPointMatcher(new Point(5, 0), 0.1)
			);
		}

		[Test(expects="Error")]
		public function throErrorTest():void
		{
			var n:Object;
			Assert.assertTrue(n['tt']);
		}


	}

}