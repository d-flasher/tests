package aiTests
{
	import aiTests.aiCommandLauncher.AICLSuite;
	import aiTests.aiScanner.AIScannerSuite;
	import aiTests.testsCases.AIScanningTests;
	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class AISuite
	{
		public var aiScanningTests:AIScanningTests;
	}

}