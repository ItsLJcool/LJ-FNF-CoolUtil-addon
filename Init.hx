package ljcoolutil;
import haxe.Json;
import haxe.Http;
import sys.thread.Thread;
class Init {
	static public var version:String = "1.0.0";
	static public var custom:Bool = false;
	static public function init() {
		trace("initalize coolutil");
		trace(version);
		daThread = Thread.create(function() {
			try {
				var data = Http.requestUrl("https://raw.githubusercontent.com/ItsLJcool/LJ-FNF-CoolUtil-addon/main/version.json");
			} catch(e) {
				trace(e.details());
				trace(e.stack.toString());
				return;
			}
		});
		data = Json.parse(data);
		trace(data.version);
	}
}
