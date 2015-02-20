package sampleSuite.tests
{
	import org.flexunit.Assert;
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
			Assert.assertEquals(8, count - 2, 10 - 1);
			Assert.assertEquals(8, count - 2, 10 - 2);

			//Assert.assertFalse(6 == count - 2);
		}

		[Test]
		public function substraction1():void
		{
			Assert.assertEquals(8, count - 2, 10 - 1);
			Assert.assertEquals(8, count - 2, 10 - 2);

			//Assert.assertFalse(6 == count - 2);
		}

		[Test( description = "This tests addition" )]
		public function simpleAdd():void
		{
			var x:int = 5 + 3;
			Assert.assertEquals( 8, x );
		}
	}

}