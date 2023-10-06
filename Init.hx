package ljcoolutil;
import haxe.Json;
import haxe.Http;
import sys.thread.Thread;
import flixel.FlxG;
import Sys;
class Init {
	static public var version:String = "1.0.0";
	static public var custom:Bool = false;
	static public var githubSource:String = null;
	static public function init() {
		trace("initalize coolutil");
		trace(version);
		var data = null;
		var daThread:Thread = Thread.create(function() {
			try {
				var data = Http.requestUrl("https://raw.githubusercontent.com/ItsLJcool/LJ-FNF-CoolUtil-addon/main/version.json");
				doVersionCheck(data);
			} catch(e) {
				trace(e.details());
				trace(e.stack.toString());
				return;
			}
		});
	}
	static private function doVersionCheck(data) {
		var jsonVersion = Json.parse(data);
		if (version != jsonVersion.version) {
			trace("outdated version!! updating");
			if (githubSource == null) {
				FlxG.stage.application.current.window.alert("HEY! you need to go into `ljcoolutil` and set your `githubSource` string into your GitHub Source!", "YO Dumbasses");
				Sys.exit(0);
				return;
			}
		}
	}
}
