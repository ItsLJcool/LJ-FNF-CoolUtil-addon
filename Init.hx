package ljcoolutil;
import haxe.Json;
import haxe.Http;
class Init {
	static public var version:String = "1.0.0";
	static public var custom:Bool = false;
	static public function init() {
		trace("initalize coolutil");
		trace(version);
		var data = Http.requestUrl("https://raw.githubusercontent.com/ItsLJcool/LJ-FNF-CoolUtil-addon/main/version.json");
		trace(data);
	}
}
