package
{
	import ai3.core.scenario.batch.condition.conditionAtom.SortConditionAtom;
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class Main extends Sprite
	{

		public function Main()
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point

			var obj1:Object = {
				hp: 10,
				cover: 1,
				distance: 7
			};

			var obj2:Object = {
				hp: 40,
				cover: 1,
				distance: 1
			};

			var obj3:Object = {
				hp: 80,
				cover: 0,
				distance: 3
			};

			var sortArr:Array = [obj1, obj2, obj3];

			var sortConditionAtom:SortConditionAtom = new SortConditionAtom();
			sortConditionAtom.fill('[hp,distance,cover][50,20,30]');
			trace(sortConditionAtom);

			var result:Array = sortConditionAtom.sort(sortArr);

			var strResult:Array = [];
			for (var i:int = 0; i < result.length; i++)
			{
				strResult.push(toValString(result[i]));
			}
			trace(strResult);
		}

		private function toValString(target:Object):String
		{
			return '{' + 'hp:' + target.hp + ', cover:' + target.cover + ', distance:' + target.distance + '}';
		}
	}

}