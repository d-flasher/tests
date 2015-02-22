package suites.testLoader1
{
	import mx.rpc.AsyncToken;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	import mx.rpc.IResponder;
	import org.flexunit.runner.external.ExternalDependencyToken;
	import org.flexunit.runner.external.IExternalDependencyLoader;
	import ru.khaustov.utils.XMLUtil;
	/**
	 * ...
	 * @author Sdenis
	 */
	public class RadiiDataHelper implements IExternalDependencyLoader, IResponder
	{
		private var _service:HTTPService;
		private var _dToken:ExternalDependencyToken;

		public function RadiiDataHelper(url:String)
		{
			_service = new HTTPService();
			_service.url = url;
			_service.resultFormat = "e4x";

			_dToken = new ExternalDependencyToken();
		}

		public function retrieveDependency(testClass:Class):ExternalDependencyToken
		{
			var asyncToken:AsyncToken = _service.send();
			asyncToken.addResponder(this);

			return _dToken;
		}

		public function result(data:Object):void
		{
			var resultObj:* = XMLUtil.objectFromSimpleXML((data as ResultEvent).result as XML);

			_dToken.notifyResult(resultObj.item as Array);
		}

		public function fault(info:Object):void
		{
			_dToken.notifyFault("Totally broken");
		}
	}

}