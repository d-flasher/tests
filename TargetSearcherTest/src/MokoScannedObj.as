package
{
	import ru.dflasher.utils.MathUtil;
	import ru.dflasher.utils.ServiceUtil;
	/**
	 * ...
	 * @author SitdikovDR (sdr-u@mail.ru)
	 */
	public class MokoScannedObj
	{
		public var isoX:int;
		public var isoY:int;

		public var teamId:int;
		public var playerId:int;
		public var unitId:int;

		public function toString():String
		{
			return '{' + ServiceUtil.getTypeName(this) + ': ' + teamId + '_' + playerId + '_' + unitId + ' (' + isoX + ',' + isoY + ')}';
		}
	}

}