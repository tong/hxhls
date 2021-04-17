
import haxe.extern.Rest;
import haxe.extern.EitherType;
import js.html.MediaElement;

@:native("Hls.ErrorTypes")
extern class ErrorTypes {
    static var KEY_SYSTEM_ERROR : String;
    static var MEDIA_ERROR: String;
    static var MUX_ERROR: String;
    static var NETWORK_ERROR: String;
    static var OTHER_ERROR: String;
}

@:native("Hls.Events")
extern class Events {
    static var AUDIO_TRACKS_UPDATED : String;
    static var AUDIO_TRACK_LOADED : String;
    static var AUDIO_TRACK_LOADING : String;
    static var AUDIO_TRACK_SWITCHED : String;
    static var AUDIO_TRACK_SWITCHING : String;
    static var BACK_BUFFER_REACHED : String;
    static var BUFFER_APPENDED : String;
    static var BUFFER_APPENDING : String;
    static var BUFFER_CODECS : String;
    static var BUFFER_CREATED : String;
    static var BUFFER_EOS : String;
    static var BUFFER_FLUSHED : String;
    static var BUFFER_FLUSHING : String;
    static var BUFFER_RESET : String;
    static var CUES_PARSED : String;
    static var DESTROYING : String;
    static var ERROR : String;
    static var FPS_DROP : String;
    static var FPS_DROP_LEVEL_CAPPING : String;
    static var FRAG_BUFFERED : String;
    static var FRAG_CHANGED : String;
    static var FRAG_DECRYPTED : String;
    static var FRAG_LOADED : String;
    static var FRAG_LOADING : String;
    static var FRAG_LOAD_EMERGENCY_ABORTED : String;
    static var FRAG_PARSED : String;
    static var FRAG_PARSING_INIT_SEGMENT : String;
    static var FRAG_PARSING_METADATA : String;
    static var FRAG_PARSING_USERDATA : String;
    static var INIT_PTS_FOUND : String;
    static var KEY_LOADED : String;
    static var KEY_LOADING : String;
    static var LEVELS_UPDATED : String;
    static var LEVEL_LOADED : String;
    static var LEVEL_LOADING : String;
    static var LEVEL_PTS_UPDATED : String;
    static var LEVEL_SWITCHED : String;
    static var LEVEL_SWITCHING : String;
    static var LEVEL_UPDATED : String;
    static var LIVE_BACK_BUFFER_REACHED : String;
    static var MANIFEST_LOADED : String;
    static var MANIFEST_LOADING : String;
    static var MANIFEST_PARSED : String;
    static var MEDIA_ATTACHED : String;
    static var MEDIA_ATTACHING : String;
    static var MEDIA_DETACHED : String;
    static var MEDIA_DETACHING : String;
    static var NON_NATIVE_TEXT_TRACKS_FOUND : String;
    static var SUBTITLE_FRAG_PROCESSED : String;
    static var SUBTITLE_TRACKS_CLEARED : String;
    static var SUBTITLE_TRACKS_UPDATED : String;
    static var SUBTITLE_TRACK_LOADED : String;
    static var SUBTITLE_TRACK_LOADING : String;
    static var SUBTITLE_TRACK_SWITCH : String;
}

typedef Config = Dynamic;
/* 
/* typedef Config =  {
    autoStartLoad: Bool,
    startPosition: Int,
    debug: Bool,
    capLevelOnFPSDrop: Bool,
    capLevelToPlayerSize: Bool,
    defaultAudioCodec: undefined,
    initialLiveManifestSize: 1,
    maxBufferLength: 30,
    maxMaxBufferLength: 600,
    backBufferLength: Infinity,
    maxBufferSize: 60 * 1000 * 1000,
    maxBufferHole: 0.5,
    highBufferWatchdogPeriod: 2,
    nudgeOffset: 0.1,
    nudgeMaxRetry: 3,
    maxFragLookUpTolerance: 0.25,
    liveSyncDurationCount: 3,
    liveMaxLatencyDurationCount: Infinity,
    liveDurationInfinity: Bool,
    enableWorker: Bool,
    enableSoftwareAES: Bool,
    manifestLoadingTimeOut: 10000,
    manifestLoadingMaxRetry: 1,
    manifestLoadingRetryDelay: 1000,
    manifestLoadingMaxRetryTimeout: 64000,
    startLevel: Dynamic,
    levelLoadingTimeOut: 10000,
    levelLoadingMaxRetry: 4,
    levelLoadingRetryDelay: 1000,
    levelLoadingMaxRetryTimeout: 64000,
    fragLoadingTimeOut: 20000,
    fragLoadingMaxRetry: 6,
    fragLoadingRetryDelay: 1000,
    fragLoadingMaxRetryTimeout: 64000,
    startFragPrefetch: Bool,
    testBandwidth: Bool,
    progressive: Bool,
    lowLatencyMode: Bool,
    fpsDroppedMonitoringPeriod: 5000,
    fpsDroppedMonitoringThreshold: 0.2,
    appendErrorMaxRetry: 3,
    loader: customLoader,
    fLoader: customFragmentLoader,
    pLoader: customPlaylistLoader,
    xhrSetup: XMLHttpRequestSetupCallback,
    fetchSetup: FetchSetupCallback,
    abrController: AbrController,
    bufferController: BufferController,
    capLevelController: CapLevelController,
    fpsController: FPSController,
    timelineController: TimelineController,
    enableWebVTT: Bool,
    enableIMSC1: Bool,
    enableCEA708Captions: Bool,
    stretchShortVideoTrack: Bool,
    maxAudioFramesDrift: 1,
    forceKeyFrameOnDiscontinuity: Bool,
    abrEwmaFastLive: 3.0,
    abrEwmaSlowLive: 9.0,
    abrEwmaFastVoD: 3.0,
    abrEwmaSlowVoD: 9.0,
    abrEwmaDefaultEstimate: 500000,
    abrBandWidthFactor: 0.95,
    abrBandWidthUpFactor: 0.7,
    abrMaxWithRealBitrate: Bool,
    maxStarvationDelay: 4,
    maxLoadingDelay: 4,
    minAutoBitrate: 0,
    emeEnabled: Bool,
    widevineLicenseUrl: Dynamic,
    licenseXhrSetup: Dynamic,
    drmSystemOptions: {},
    requestMediaKeySystemAccessFunc: requestMediaKeySystemAccess,
}
*/

@:native("Hls")
extern class Hls {
    static function isSupported() : Bool;
    function new(?cfg:Config) : Void;
    function on<T>( eventName : String, handler : T) : Void;
    function loadSource( src : String ) : Void;
    function attachMedia( media : MediaElement ) : Void;
    function destroy() : Void;
    //..
}

#end
