package suites.testLoader1
{
	import flexunit.framework.Assert;
	import org.flexunit.runner.external.IExternalDependencyLoader;
	/**
	 * ...
	 * @author Sdenis
	 */
	[Theories]
	[RunWith("org.flexunit.experimental.theories.Theories")]
	public class LoaderRunner
	{
		public static var testLoader:IExternalDependencyLoader = new RadiiDataHelper("../src/suites/testLoader1/TestXML.xml");

		[DataPoints(loader="testLoader")]
		[ArrayElementType("Number")]
		public static var radii:Array;

		[Theory]
		public function testMethod1(value:Number):void
		{
			trace(value);
			Assert.assertTrue(value >= 0);
		}
	}

}