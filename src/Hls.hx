import js.html.MediaElement;

typedef BufferInfo = {
	len:Int,
	start:Int,
	end:Int,
	?nextStart:Int
}

enum abstract HdcpLevels(String) from String to String {
	var NONE;
	var TYPE_0 = "TYPE-0";
	var TYPE_1 = "TYPE-1";
	var TYPE_2 = "TYPE-2";
}

@:native("Hls.ErrorTypes")
extern class ErrorTypes {
	static var KEY_SYSTEM_ERROR:String;
	static var MEDIA_ERROR:String;
	static var MUX_ERROR:String;
	static var NETWORK_ERROR:String;
	static var OTHER_ERROR:String;
}

@:native("Hls.Events")
extern class Events {
	static var AUDIO_TRACKS_UPDATED:String;
	static var AUDIO_TRACK_LOADED:String;
	static var AUDIO_TRACK_LOADING:String;
	static var AUDIO_TRACK_SWITCHED:String;
	static var AUDIO_TRACK_SWITCHING:String;
	static var BACK_BUFFER_REACHED:String;
	static var BUFFER_APPENDED:String;
	static var BUFFER_APPENDING:String;
	static var BUFFER_CODECS:String;
	static var BUFFER_CREATED:String;
	static var BUFFER_EOS:String;
	static var BUFFER_FLUSHED:String;
	static var BUFFER_FLUSHING:String;
	static var BUFFER_RESET:String;
	static var CUES_PARSED:String;
	static var DESTROYING:String;
	static var ERROR:String;
	static var FPS_DROP:String;
	static var FPS_DROP_LEVEL_CAPPING:String;
	static var FRAG_BUFFERED:String;
	static var FRAG_CHANGED:String;
	static var FRAG_DECRYPTED:String;
	static var FRAG_LOADED:String;
	static var FRAG_LOADING:String;
	static var FRAG_LOAD_EMERGENCY_ABORTED:String;
	static var FRAG_PARSED:String;
	static var FRAG_PARSING_INIT_SEGMENT:String;
	static var FRAG_PARSING_METADATA:String;
	static var FRAG_PARSING_USERDATA:String;
	static var INIT_PTS_FOUND:String;
	static var KEY_LOADED:String;
	static var KEY_LOADING:String;
	static var LEVELS_UPDATED:String;
	static var LEVEL_LOADED:String;
	static var LEVEL_LOADING:String;
	static var LEVEL_PTS_UPDATED:String;
	static var LEVEL_SWITCHED:String;
	static var LEVEL_SWITCHING:String;
	static var LEVEL_UPDATED:String;
	static var LIVE_BACK_BUFFER_REACHED:String;
	static var MANIFEST_LOADED:String;
	static var MANIFEST_LOADING:String;
	static var MANIFEST_PARSED:String;
	static var MEDIA_ATTACHED:String;
	static var MEDIA_ATTACHING:String;
	static var MEDIA_DETACHED:String;
	static var MEDIA_DETACHING:String;
	static var NON_NATIVE_TEXT_TRACKS_FOUND:String;
	static var SUBTITLE_FRAG_PROCESSED:String;
	static var SUBTITLE_TRACKS_CLEARED:String;
	static var SUBTITLE_TRACKS_UPDATED:String;
	static var SUBTITLE_TRACK_LOADED:String;
	static var SUBTITLE_TRACK_LOADING:String;
	static var SUBTITLE_TRACK_SWITCH:String;
}

typedef Config = {
	?autoStartLoad:Bool,
	?startPosition:Int,
	?debug:Bool,
	?capLevelOnFPSDrop:Bool,
	?capLevelToPlayerSize:Bool,
	?defaultAudioCodec:Dynamic,
	?initialLiveManifestSize:Int,
	?maxBufferLength:Float,
	?maxMaxBufferLength:Float,
	?backBufferLength:Float,
	?maxBufferSize:Float,
	?maxBufferHole:Float,
	?highBufferWatchdogPeriod:Float,
	?nudgeOffset:Float,
	?nudgeMaxRetry:Int,
	?maxFragLookUpTolerance:Float,
	?liveSyncDurationCount:Int,
	?liveMaxLatencyDurationCount:Float,
	?liveDurationInfinity:Bool,
	?enableWorker:Bool,
	?enableSoftwareAES:Bool,
	?manifestLoadingTimeOut:Float,
	?manifestLoadingMaxRetry:Int,
	?manifestLoadingRetryDelay:Float,
	?manifestLoadingMaxRetryTimeout:Float,
	?startLevel:Dynamic,
	?levelLoadingTimeOut:Float,
	?levelLoadingMaxRetry:Int,
	?levelLoadingRetryDelay:Float,
	?levelLoadingMaxRetryTimeout:Float,
	?fragLoadingTimeOut:Float,
	?fragLoadingMaxRetry:Int,
	?fragLoadingRetryDelay:Float,
	?fragLoadingMaxRetryTimeout:Float,
	?startFragPrefetch:Bool,
	?testBandwidth:Bool,
	?progressive:Bool,
	?lowLatencyMode:Bool,
	?fpsDroppedMonitoringPeriod:Float,
	?fpsDroppedMonitoringThreshold:Float,
	?appendErrorMaxRetry:Int,
	?loader:Dynamic,
	?fLoader:Dynamic,
	?pLoader:Dynamic,
	?xhrSetup:Dynamic, // XMLHttpRequestSetupCallback,
	?fetchSetup:Dynamic, // FetchSetupCallback,
	?abrController:Dynamic, // AbrController,
	?bufferController:Dynamic, // BufferController,
	?capLevelController:Dynamic, // CapLevelController,
	?fpsController:Dynamic, // FPSController,
	?timelineController:Dynamic, // TimelineController,
	?enableWebVTT:Bool,
	?enableIMSC1:Bool,
	?enableCEA708Captions:Bool,
	?stretchShortVideoTrack:Bool,
	?maxAudioFramesDrift:Float,
	?forceKeyFrameOnDiscontinuity:Bool,
	?abrEwmaFastLive:Float,
	?abrEwmaSlowLive:Float,
	?abrEwmaFastVoD:Float,
	?abrEwmaSlowVoD:Float,
	?abrEwmaDefaultEstimate:Float,
	?abrBandWidthFactor:Float,
	?abrBandWidthUpFactor:Float,
	?abrMaxWithRealBitrate:Bool,
	?maxStarvationDelay:Float,
	?maxLoadingDelay:Float,
	?minAutoBitrate:Float,
	?emeEnabled:Bool,
	?widevineLicenseUrl:Dynamic,
	?licenseXhrSetup:Dynamic,
	?drmSystemOptions:Dynamic,
	?requestMediaKeySystemAccessFunc:Dynamic,
}

@:native("Hls")
extern class Hls {
	static function isSupported():Bool;
	static var version(default, null):String;

	var audioTrack:Int;
	var audioTracks(default, never):Array<Dynamic>;
	var autoLevelCapping:Float;
	var autoLevelEnabled(default, never):Bool;
	var bandwidthEstimate(default, never):Int;
	var capLevelToPlayerSize:Bool;
	var config(default, never):Config;
	var currentLevel:Int;
	var drift(default, never):Int;
	var firstLevel:Int;
	var forceStartLoad(default, never):Bool;
	var latency(default, never):Bool;
	var levels(default, never):Array<Int>;
	var liveSyncPosition(default, never):Int;
	var loadLevel:Int;
	var nextLoadLevel:Int;
	var lowLatencyMode:Bool;
	var mainForwardBufferInfo(default, never):Null<BufferInfo>;
	var manualLevel:Int;
	var manualAutoLevel:Int;
	var maxHdcpLevel:HdcpLevels;
	var maxLatency(default, never):Int;
	var media(default, never):MediaElement;
	var minAutoLevel(default, never):MediaElement;
	var nextAutoLevel:Int;
	var nextLevel:Int;
	var playingDate(default, never):Date;
	var startLevel:Int;
	var subtitleDisplay:Bool;
	var subtitleTrack:Int;
	var subtitleTracks:Array<Dynamic>;
	var targetLatency(default, never):Int;
	var ttfbEstimate(default, never):Int;
	var userConfig(default, never):Config;

	function new(?cfg:Config):Void;
	function on<T>(eventName:String, handler:T):Void;
	function removeLevel(levelIndex:Int, urlId:String):Void;
	function loadSource(src:String):Void;
	function startLoad(?startPosition:Int):Void;
	function stopLoad():Void;
	function attachMedia(media:MediaElement):Void;
	function detachMedia():Void;
	function destroy():Void;
}
