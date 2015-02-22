package matcher
{
	import flash.geom.Point;
	import org.hamcrest.Description;
	import org.hamcrest.TypeSafeMatcher;

	/**
	 * ...
	 * @author Sdenis
	 */
	public class CloseToPointMatcher extends TypeSafeMatcher
	{
		private var _point:Point;
		private var _tolerance:Number;

		public function CloseToPointMatcher(point:Point, tolerance:Number)
		{
			super(Point);

			_point = point;
			_tolerance = tolerance;
		}

		override public function matchesSafely(item:Object):Boolean
		{
			var distance:Number = Point.distance(Point(item), _point);

			return ((Math.abs(distance) - _tolerance) <= 0);
		}

		override public function describeTo(description:Description):void
        {
			description.appendText('point "').appendText(_point.toString()).appendText('"');
        }

	}

}