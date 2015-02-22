package suites.theory
{
	import flexunit.framework.Assert;
	import org.flexunit.assumeThat;
	import org.hamcrest.number.greaterThan;
	/**
	 * ...
	 * @author Sdenis
	 */
	[Theories]
	[RunWith("org.flexunit.experimental.theories.Theories")]
	public class TheoryRunner
	{

		[DataPoints]
		[ArrayElementType("int")]
		public static var radii1:Array = [1, 1, 2, 3, 4];

		[DataPoints]
		[ArrayElementType("int")]
		public static var radii:Array = [5, 6, 7, 8];

		//-----------------------------------------------------------------------------------------------------------------------
		//
		//-----------------------------------------------------------------------------------------------------------------------

		/*public static var pp:int;

		public function TheoryRunner(value:int):void
		{
			pp = value;
		}

		[Theory]
		public function testMethod3():void
		{
			trace(pp);
			Assert.assertTrue(pp >= 0);
		}*/

		//-----------------------------------------------------------------------------------------------------------------------
		//
		//-----------------------------------------------------------------------------------------------------------------------

		[Theory]
		public function testMethod1(value:int):void
		{
			Assert.assertTrue(value >= 0);
		}

		[Theory]
		public function testMethod2(value:int):void
		{
			// предположение "больше чем", если не подходит - даже не отпраляет дальше на проверку
			assumeThat(value, greaterThan(0));

			Assert.assertTrue(value >= 0);
		}
	}

}