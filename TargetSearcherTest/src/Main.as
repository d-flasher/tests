package
{
	import ai3.core.scenario.batch.targetSelector.Modificator;
	import ai3.core.scenario.batch.targetSelector.TargetPointSelector;
	import flash.display.Sprite;
	import flash.events.Event;
	import ru.dflasher.utils.MathUtil;

	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class Main extends Sprite
	{

		public function Main()
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point

			var targets:Vector.<MokoScannedObj> = new Vector.<MokoScannedObj>();
			for (var i:int = 0; i < 4; i++)
			{
				var newMokoScannedObj:MokoScannedObj = new MokoScannedObj();
				newMokoScannedObj.isoX = MathUtil.randomInteger(-10, 10);
				newMokoScannedObj.isoY = MathUtil.randomInteger(-10, 10);
				newMokoScannedObj.teamId = MathUtil.randomInteger(0, 1);
				newMokoScannedObj.playerId = MathUtil.randomInteger(0, 4);
				newMokoScannedObj.unitId = 0;
				targets.push(newMokoScannedObj);
			}

			trace(1, targets);

			var modificator1:Modificator = new Modificator();
			modificator1.init(Modificator.TYPE_ARRAY, Modificator.NAME_SORT, '[distance][100]');

			var tps:TargetPointSelector = new TargetPointSelector();
			tps.setTargets(targets);
			tps.addEventListener(TargetPointSelector.WORK_COMPLETE, onTpsWorkComplete);
			tps.startWork(new <Modificator>[modificator1]);

			trace(2, targets);
		}

		private function onTpsWorkComplete(event:Event):void
		{
			trace(1, TargetPointSelector(event.target).result);
		}

		//private const MOD_XML:XML = <mod chain="arr.sort([distance][100])->arr.slice(0,1)->item.line_move()"/>;

	}

}