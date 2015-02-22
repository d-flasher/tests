package
{
	import suites.testLoader1.LoaderRunner;
	import suites.tests1.SampleSuite;
	import suites.tests2.ChildSuite;
	import suites.theory.TheoryRunner;
	/**
	 * ...
	 * @author Sdenis
	 */
	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class BaseSuite
	{
		//public var _t1:SampleSuite;
		//public var _t2:ChildSuite;
		//public var _t3:TheoryRunner;
		public var _t4:LoaderRunner;
	}

}