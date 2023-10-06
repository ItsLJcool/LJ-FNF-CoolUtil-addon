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
		var data = null;
		var daThread:Thread = Thread.create(function() {
			try {
				data = Http.requestUrl("https://raw.githubusercontent.com/ItsLJcool/LJ-FNF-CoolUtil-addon/main/version.json");
			} catch(e) {
				trace(e.details());
				trace(e.stack.toString());
				return;
			}
		});
		if (data == null) return;
		data = Json.parse(data);
		trace(data.version);
	}
}
