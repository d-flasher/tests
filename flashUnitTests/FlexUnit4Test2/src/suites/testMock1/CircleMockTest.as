package suites.testMock1
{
	import flash.geom.Point;
	import matcher.CloseToPointMatcher;
	import mockolate.mock;
	import mockolate.runner.MockolateRule;
	import mockolate.strict;
	import org.flexunit.assertThat;
	/**
	 * ...
	 * @author Sdenis
	 */
	public class CircleMockTest
	{
		[Rule]
		public var mockRule:MockolateRule = new MockolateRule();

		//[Mock(type="strict")]
		//[Mock]
		[Mock(type="strict",inject="false")]
		//[Mock(inject="false")]
		public var mockCircle:Circle;

		[Before]
		public function setup():void
		{
			mockCircle = strict(Circle, "mockCircle", [new Point(0,1), 1]);
			//mockCircle = nice(Circle, "mockCircle", [new Point(0,1), 1]);
		}

		[Test]
		public function shouldBeEqualCircleMock():void
		{
			mock(mockCircle).getter("radius").atLeast(1);
			//stub(mockCircle).getter("radius").returns(8);

			mock(mockCircle).getter("origin").atLeast(1);
			//stub(mockCircle).getter("origin").returns(new Point(2, 3));

			trace(111, mockCircle.origin, mockCircle.radius);

			var circle:Circle = new Circle( new Point( 0, 0 ), 0 );
			circle.equals(mockCircle);
		}

		//-----------------------------------------------------------------------------------------------------------------------
		//
		//-----------------------------------------------------------------------------------------------------------------------

		private static const TOLERANCE:Number = .01;

		[Rule]
		public var mockRule1:MockolateRule = new MockolateRule();

		[Mock]
		public var mockPoint:Point;

		[Test]
		public function shouldBeEqualDistance():void
		{
			var testPoint:Point = new Point( 5, 5 );
			var endPoint:Point = new Point( 10, 10 );
			var summedPoints:Point;

			mock(mockPoint).method("add").args(testPoint).returns(new Point(10, 10));

			summedPoints = mockPoint.add( testPoint );
			assertThat(endPoint, new CloseToPointMatcher(summedPoints, TOLERANCE));
		}
	}

}