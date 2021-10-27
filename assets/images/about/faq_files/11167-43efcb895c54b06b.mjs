(self.__LOADABLE_LOADED_CHUNKS__=self.__LOADABLE_LOADED_CHUNKS__||[]).push([[11167],{484898:(e,t,a)=>{a.d(t,{Z:()=>r});var i=a(737614),s=a(966427);const r={getBrowser:()=>(0,s.u)(i.Z.instance.browser_name||""),isSafari(){return this.getBrowser()===s.o.SAFARI},isChrome(){return this.getBrowser()===s.o.CHROME},isFirefox(){return this.getBrowser()===s.o.FIREFOX},isEdge(){return this.getBrowser()===s.o.EDGE}}},805534:(e,t,a)=>{a.d(t,{Z:()=>u});var i=a(667294),s=a(34411),r=a(549135),o=a(585967),n=a(883119),l=a(872324),d=a(208757),c=a(785893);function h(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}class y extends i.Component{constructor(...e){var t;super(...e),h(this,"state",{canPlayVideo:!1,playbackState:d.Cy.DEFAULT}),h(this,"componentDidMount",(()=>{const{contextLogData:e={},playing:t}=this.props,{is_closeup_video:a=!1}=e;(0,l.tE)("videoMounted",!1,a),t&&(this.videoVisibleTime=new Date,this.logPlaybackPerformance(d.DR,{initiator:"mount"}))})),h(this,"componentDidUpdate",(e=>{const{playing:t,visible:a}=this.props;e.visible&&!1===a&&(this.logSessionStartOnNextPlay=!1,this.logPlaybackPerformance(d.$f,{initiator:"update"})),!1===e.visible&&!0===a&&(this.videoVisibleTime=this.videoVisibleTime||new Date,t?(this.setPlaybackStartTime(),this.setLastSegmentStartPlayTime(),this.setLastSegmentPlaybackStartDate(),this.logPlaybackPerformance(d.DR,{initiator:"update"})):this.logSessionStartOnNextPlay=!0),t&&this.logSessionStartOnNextPlay&&(this.setPlaybackStartTime(),this.setLastSegmentStartPlayTime(),this.setLastSegmentPlaybackStartDate(),this.logPlaybackPerformance(d.DR,{initiator:"update"}),this.logSessionStartOnNextPlay=!1)})),h(this,"errorRetryCount",2),h(this,"hasSegmentStarted",!1),h(this,"hasPlaybackStarted",!1),h(this,"hasVideoSessionStarted",!1),h(this,"hasVideoSessionEnded",!1),h(this,"lastStartPlayTime",null),h(this,"lastStallTime",null),h(this,"logSessionStartOnNextPlay",!1),h(this,"playerId",""),h(this,"videoRefSetTime",null),h(this,"videoSessionId",""),h(this,"videoVisibleTime",null),h(this,"playbackPerformance",{canPlayTime:null,detailedErrors:"",errorCode:0,errorName:"",errorReason:"",hasFatalError:!1,loadStartTime:null,numberOfStalls:0,numberOfSeeks:0,playbackStartTimestamp:null,segments:[],srcString:(t=this.props.src,t?"string"==typeof t?t:Array.isArray(t)&&t[0].src?t[0].src:"unsupported_type_"+typeof t:"undefined"),totalStallDurationMs:0}),h(this,"addSegment",(()=>{const{canPlayTime:e,loadStartTime:t,segments:a,srcString:i}=this.playbackPerformance;let s=-1;e&&t&&0===a.length&&(s=e>t?e-t:0);const r=this.videoPlayerRef&&this.videoPlayerRef.video,o={indicatedKbps:-1,duration:r&&r.duration*d.gJ||-1,lastStartPlayTime:null,level:-1,numServerAddressChange:-1,observedKbps:-1,playbackStartDate:null,serverAddress:"",sourceWidth:-1,sourceHeight:-1,startupTimeMs:s,switchBitrateKbps:-1,uri:i,viewportWidth:r&&r.clientWidth||-1,viewportHeight:r&&r.clientHeight||-1,watchedDurationMs:0};a.push(o)})),h(this,"getCurrentVideoTime",(()=>this.videoPlayerRef&&this.videoPlayerRef.video?this.videoPlayerRef.video.currentTime*d.gJ:0)),h(this,"getVideoResourceTiming",(()=>{var e,t;if(null!==(e=window)&&void 0!==e&&null!==(t=e.performance)&&void 0!==t&&t.getEntriesByName&&this.playbackPerformance.srcString){const e=window.performance.getEntriesByName(this.playbackPerformance.srcString);return e.length>0&&e[0]||null}return null})),h(this,"handleCanPlayVideo",(e=>{const{contextLogData:t={},onReady:a,playing:i,videoStartTime:s}=this.props,{is_closeup_video:r=!1}=t,{canPlayVideo:o}=this.state;(0,l.tE)("handleCanPlayVideo",!1,r,{firstCanPlayEvent:!o,playing:i}),this.playbackPerformance.hasFatalError=!1,o||(this.playbackPerformance.canPlayTime=new Date,null!=s&&this.videoPlayerRef&&this.videoPlayerRef.video&&(this.videoPlayerRef.video.currentTime=s)),this.setState({canPlayVideo:!0}),a&&a(e)})),h(this,"handleEnded",(e=>{const{loop:t,onEnded:a}=this.props,{segments:i}=this.playbackPerformance,s=i&&i[i.length-1];t&&this.videoPlayerRef&&this.videoPlayerRef.video?(this.updateWatchDurationForCurrentSegment(),s&&(s.lastStartPlayTime=0),this.hasSegmentStarted=!1):t||this.logPlaybackPerformance(d.$f,{initiator:"videoEnded",loop:t}),this.setState({playbackState:d.Cy.ENDED}),a&&a(e)})),h(this,"handleError",(()=>{var e,t,a,i,s,r,o,n;const{contextLogData:c={}}=this.props,{is_closeup_video:h=!1}=c,y=this.videoPlayerRef&&this.videoPlayerRef.video;(null==y||null===(e=y.error)||void 0===e?void 0:e.code)!==d.lG.MEDIA_ERR_ABORTED&&(this.playbackPerformance.hasFatalError=!0),this.playbackPerformance.detailedErrors+=`${this.playbackPerformance.detailedErrors.length>0?", ":""}${(null==y||null===(t=y.error)||void 0===t?void 0:t.message)||""}`,this.playbackPerformance.errorCode=(null==y||null===(a=y.error)||void 0===a?void 0:a.code)||0,this.playbackPerformance.errorName=(null==y||null===(i=y.error)||void 0===i||null===(s=i.message)||void 0===s?void 0:s.slice(0,100))||"unknown",this.playbackPerformance.errorReason=(null==y||null===(r=y.error)||void 0===r||null===(o=r.message)||void 0===o?void 0:o.slice(0,100))||"unknown";const u={errorName:this.playbackPerformance.errorCode,errorReason:this.playbackPerformance.errorName,errorRetryCount:this.errorRetryCount,playbackState:this.state.playbackState,networkState:(null==y?void 0:y.networkState)||"unknown"};switch((0,l.tE)("fatalError",!1,h,u),null==y||null===(n=y.error)||void 0===n?void 0:n.code){case d.lG.MEDIA_ERR_ABORTED:break;case d.lG.MEDIA_ERR_NETWORK:case d.lG.MEDIA_ERR_DECODE:case d.lG.MEDIA_ERR_SRC_NOT_SUPPORTED:default:this.errorRetryCount>0&&(null==y||y.load(),this.errorRetryCount-=1)}this.updateWatchDurationForCurrentSegment(),this.setState({playbackState:d.Cy.FAILED})})),h(this,"handleLoadedMetadata",(()=>{this.setState({playbackState:d.Cy.LOADED_METADATA})})),h(this,"handleLoadStart",(()=>{this.playbackPerformance.loadStartTime=new Date,this.setState({playbackState:d.Cy.LOAD_START})})),h(this,"handleLoadedData",(()=>{this.setState({playbackState:d.Cy.LOADED_DATA})})),h(this,"handlePlaying",(()=>{this.playbackPerformance.hasFatalError=!1,this.setPlaybackStartTime(),this.hasSegmentStarted||this.addSegment(),this.setLastSegmentStartPlayTime(),this.setLastSegmentPlaybackStartDate(),this.updateStallDuration(),this.setState({playbackState:d.Cy.PLAYING})})),h(this,"handlePause",(()=>{this.state.playbackState!==d.Cy.STALLING&&this.state.playbackState!==d.Cy.SEEKING&&(this.updateWatchDurationForCurrentSegment(),this.updateStallDuration()),this.setState({playbackState:d.Cy.PAUSED})})),h(this,"handleSeeking",(()=>{this.playbackPerformance.numberOfSeeks+=1;const{segments:e}=this.playbackPerformance,t=e&&e[e.length-1];t&&(t.lastStartPlayTime=null),this.state.playbackState!==d.Cy.ENDED&&this.setState({playbackState:d.Cy.SEEKING})})),h(this,"handleStalled",(()=>{null===this.lastStallTime&&this.state.playbackState!==d.Cy.ENDED&&(this.lastStallTime=new Date,this.playbackPerformance.numberOfStalls+=1,this.setState({playbackState:d.Cy.STALLING}))})),h(this,"handleTimeUpdate",(e=>{const{onTimeChange:t}=this.props;t&&t(e),this.state.playbackState===d.Cy.PLAYING&&(this.updateWatchDurationForCurrentSegment(),this.setLastSegmentStartPlayTime())})),h(this,"resetPlaybackMetrics",(()=>{this.hasSegmentStarted=!0,this.hasPlaybackStarted=!1,this.hasVideoSessionStarted=!1,this.hasVideoSessionEnded=!0,this.lastStallTime=null,this.videoSessionId="",this.videoVisibleTime=null,this.logSessionStartOnNextPlay=!1;const e={...this.playbackPerformance.segments[this.playbackPerformance.segments.length-1],lastStartPlayTime:null,playbackStartDate:null,watchedDurationMs:0};this.playbackPerformance.detailedErrors="",this.playbackPerformance.errorCode=0,this.playbackPerformance.errorName="",this.playbackPerformance.errorReason="",this.playbackPerformance.hasFatalError=!1,this.playbackPerformance.numberOfStalls=0,this.playbackPerformance.numberOfSeeks=0,this.playbackPerformance.playbackStartTimestamp=null,this.playbackPerformance.totalStallDurationMs=0,this.playbackPerformance.segments=[e]})),h(this,"setLastSegmentStartPlayTime",(()=>{const{segments:e}=this.playbackPerformance,t=e&&e[e.length-1];t&&null===t.lastStartPlayTime&&(t.lastStartPlayTime=this.getCurrentVideoTime())})),h(this,"setLastSegmentPlaybackStartDate",(()=>{const{segments:e}=this.playbackPerformance,t=e&&e[e.length-1];t&&null===t.playbackStartDate&&(t.playbackStartDate=Date.now())})),h(this,"setPlaybackStartTime",(()=>{this.hasPlaybackStarted||(this.playbackPerformance.playbackStartTimestamp=Date.now(),this.hasPlaybackStarted=!0)})),h(this,"setVideoPlayerRef",(e=>{const{setVideoRef:t}=this.props;if(e&&(t&&t(e),this.videoPlayerRef=e,this.videoPlayerRef.video)){const e=this.videoPlayerRef.video;e.addEventListener("loadedmetadata",this.handleLoadedMetadata),e.addEventListener("loadeddata",this.handleLoadedData),e.addEventListener("pause",this.handlePause),e.readyState>=3&&(this.setState({canPlayVideo:!0}),this.playbackPerformance.canPlayTime=new Date)}})),h(this,"updateStallDuration",(()=>{null!==this.lastStallTime&&(this.playbackPerformance.totalStallDurationMs+=new Date-this.lastStallTime,this.lastStallTime=null)})),h(this,"updateWatchDurationForCurrentSegment",(()=>{const{segments:e}=this.playbackPerformance,t=e&&e[e.length-1],a=t?t.lastStartPlayTime:null,i=this.getCurrentVideoTime();if(t&&null!==a&&"number"==typeof i&&"number"==typeof a){const e=i-a;e>0&&(t.watchedDurationMs+=e,t.lastStartPlayTime=null)}})),h(this,"logPlaybackPerformance",((e,t)=>{const{contextLogData:a={},userId:i,isAutoPlay:s}=this.props,{is_closeup_video:o=!1}=a,{canPlayTime:n,detailedErrors:c,errorCode:h,errorName:y,errorReason:u,hasFatalError:p,loadStartTime:m,numberOfStalls:b,numberOfSeeks:S,playbackStartTimestamp:P,srcString:g}=this.playbackPerformance,v=this.videoPlayerRef&&this.videoPlayerRef.video,f=e===d.DR,k=f&&!this.hasVideoSessionStarted,D=!f&&!this.hasVideoSessionEnded&&this.hasVideoSessionStarted;if(v&&(k||D)){var E;let k=-1;n&&m&&(k=n>m?n-m:0);let D=-1;n&&this.videoVisibleTime&&(D=n>this.videoVisibleTime?n-this.videoVisibleTime:0);const R=this.getVideoResourceTiming(),T={averageVideoKbps:-1,autoplaying:s,detailedErrors:c,downloadedKiloBytes:"number"==typeof(null==R?void 0:R.decodedBodySize)&&R.decodedBodySize/d.Fm||0,errorCode:h,errorName:y,errorReason:u,fatalError:p,isCellular:!1,nativeVideoDurationMs:v.duration*d.gJ||-1,numberOfStalls:b,numberOfSeeks:S,overallWatchedDurationMs:-1,rebufferRate:-1,playbackSessionId:this.videoSessionId,playbackStartTimestamp:P||-1,segments:[],sessionMark:e,screenPixelScale:null!==(E=window)&&void 0!==E&&E.devicePixelRatio?window.devicePixelRatio:-1,startupPlayerWidth:v.clientWidth,startupPlayerHeight:v.clientHeight,startupTimeMs:k,startupLatencyMs:D,startupVariantKbps:-1,startupVariantWatchedDurationMs:-1,startupVariantWidth:v.videoWidth,startupVariantHeight:v.videoHeight,videoUrl:g};if(f)this.videoSessionId=(0,d.Y7)(i),this.playerId=this.playerId||(0,d.EB)();else{this.updateWatchDurationForCurrentSegment(),this.updateStallDuration();const e=this.playbackPerformance.segments.reduce(((e,t)=>e+(t.watchedDurationMs||0)),0);T.rebufferRate=this.playbackPerformance.totalStallDurationMs/e,T.overallWatchedDurationMs=e,T.startupVariantWatchedDurationMs=e,T.segments=this.playbackPerformance.segments}(0,l.ZP)(T,!1,o,{playbackState:this.state.playbackState,...t}),(0,r.j)(3606,{...a,is_closeup_video:o,playback_session_id:this.videoSessionId,eventData:{videoPerformanceData:T}}),f?(this.hasVideoSessionStarted=!0,this.hasVideoSessionEnded=!1):this.resetPlaybackMetrics(),(0,l.tE)(f?"sessionStart":"sessionEnd",!1,o,{playbackState:this.state.playbackState,...t})}}))}componentWillUnmount(){const{loop:e}=this.props;this.logPlaybackPerformance(d.$f,{initiator:"unmount",loop:e})}render(){const{accessibilityMaximizeLabel:e,accessibilityMinimizeLabel:t,accessibilityMuteLabel:a,accessibilityPauseLabel:i,accessibilityPlayLabel:s,accessibilityUnmuteLabel:r,aspectRatio:o,captions:l,controls:d,loop:h,loopOverride:y,objectFit:u,onDurationChange:p,onFullscreenChange:m,onLoadedChange:b,onPause:S,onPlay:P,onPlayheadDown:g,onPlayheadUp:v,onSeek:f,onVolumeChange:k,playbackRate:D,playing:E,playsInline:R,poster:T,preload:L,src:C,volume:V}=this.props,{canPlayVideo:w}=this.state;return(0,c.jsx)(n.nk,{accessibilityMaximizeLabel:e,accessibilityMinimizeLabel:t,accessibilityMuteLabel:a,accessibilityPauseLabel:i,accessibilityPlayLabel:s,accessibilityUnmuteLabel:r,aspectRatio:o,captions:l,controls:d,loop:void 0===y?h:y,objectFit:u,onDurationChange:p,onEnded:this.handleEnded,onError:this.handleError,onFullscreenChange:m,onLoadedChange:b,onLoadStart:this.handleLoadStart,onPause:S,onPlay:P,onPlaying:this.handlePlaying,onPlayheadDown:g,onPlayheadUp:v,onReady:this.handleCanPlayVideo,onSeek:f,onSeeking:this.handleSeeking,onStalled:this.handleStalled,onTimeChange:this.handleTimeUpdate,onVolumeChange:k,onWaiting:this.handleStalled,playbackRate:D,playing:w&&E,playsInline:R,poster:T,preload:L,ref:this.setVideoPlayerRef,src:C,volume:V})}}const u=(0,i.memo)((function(e){const{country:t,isAuthenticated:a,isBot:i,isSocialBot:r,unauthId:n,userAgent:d}=(0,o.B)(),{browserName:h,browserVersion:u,isMobile:p}=d,{contextLogData:m={}}=e,{is_closeup_video:b=!1,view:S,viewParameter:P}=m,g=(0,s.ZP)(),v={browserName:h,browserVersion:u,country:t,isAuthenticated:a,isBot:i,is_closeup_video:b,isMobile:p,isSocialBot:r,view:S,viewParameter:P};return(0,l.r$)(v),(0,c.jsx)(y,{...e,userId:g.id||n})}))},911167:(e,t,a)=>{a.r(t),a.d(t,{getPlaylistSourceSrc:()=>d,default:()=>c});var i=a(667294),s=a(484898),r=a(805534),o=a(888054),n=(a(883119),a(785893));function l(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}const d=e=>{if(Array.isArray(e)){const t=e.find((e=>"video/m3u8"===e.type));return t?t.src:void 0}return RegExp("m3u8$").test(e)?e:void 0};class c extends i.PureComponent{constructor(e){super(e),l(this,"componentDidUpdate",((e,t)=>{var a;e.videoStartTime&&this.props.videoStartTime&&e.videoStartTime<this.props.videoStartTime&&null!==(a=this.videoPlayerRef)&&void 0!==a&&a.video&&(this.videoPlayerRef.video.currentTime=this.props.videoStartTime)})),l(this,"setVideoPlayerRef",(e=>{e&&(this.videoPlayerRef=e)})),l(this,"handleOnEnded",(({event:e})=>{const{loop:t,onLoop:a,onEnded:i}=this.props;i&&(i({event:e}),this.videoPlayerRef&&this.videoPlayerRef.video&&t&&(this.videoPlayerRef.video.play(),a&&a()))}));const t=d(e.src);this.state={useHlsVideo:!e.preferMp4&&!s.Z.isSafari()&&!!t}}render(){const{accessibilityMaximizeLabel:e,accessibilityMinimizeLabel:t,accessibilityMuteLabel:a,accessibilityPauseLabel:i,accessibilityPlayLabel:s,accessibilityUnmuteLabel:l,aspectRatio:c,captions:h,contextLogData:y,controls:u,hlsConfig:p,isAutoPlay:m,loop:b,objectFit:S,onDurationChange:P,onEnded:g,onFullscreenChange:v,onLoadedChange:f,onPause:k,onPlay:D,onPlayheadDown:E,onPlayheadUp:R,onReady:T,onSeek:L,onTimeChange:C,onVolumeChange:V,playbackRate:w,playing:M,playsInline:A,poster:O,preferMp4:_,preload:I,src:F,videoStartTime:x,visible:N,volume:B}=this.props,{useHlsVideo:U}=this.state,W=d(F),H={...p,startPosition:x||-1},G=!g&&b;return U&&W?(0,n.jsx)(o.Z,{accessibilityMaximizeLabel:e,accessibilityMinimizeLabel:t,accessibilityMuteLabel:a,accessibilityPauseLabel:i,accessibilityPlayLabel:s,accessibilityUnmuteLabel:l,aspectRatio:c,captions:h,contextLogData:y,controls:u,hlsConfig:H,isAutoPlay:m,loop:b,loopOverride:G,onDurationChange:P,onEnded:this.handleOnEnded,onFullscreenChange:v,onLoadedChange:f,onPause:k,onPlay:D,onPlayheadDown:E,onPlayheadUp:R,onReady:T,onSeek:L,onTimeChange:C,onVolumeChange:V,playbackRate:w,playing:M,playsInline:A,poster:O,preload:I,setVideoRef:this.setVideoPlayerRef,src:W,visible:N,volume:B}):(0,n.jsx)(r.Z,{accessibilityMaximizeLabel:e,accessibilityMinimizeLabel:t,accessibilityMuteLabel:a,accessibilityPauseLabel:i,accessibilityPlayLabel:s,accessibilityUnmuteLabel:l,aspectRatio:c,captions:h,contextLogData:y,controls:u,isAutoPlay:m,loop:b,loopOverride:G,objectFit:S,onDurationChange:P,onEnded:this.handleOnEnded,onFullscreenChange:v,onLoadedChange:f,onPause:k,onPlay:D,onPlayheadDown:E,onPlayheadUp:R,onReady:T,onSeek:L,onTimeChange:C,onVolumeChange:V,playbackRate:w,playing:M,playsInline:A,poster:O,preload:I,setVideoRef:this.setVideoPlayerRef,src:_?F:W||F,videoStartTime:x,visible:N,volume:B})}}},966427:(e,t,a)=>{a.d(t,{o:()=>i,u:()=>s});const i=Object.freeze({OTHER:0,CHROME:1,SAFARI:2,IE:3,FIREFOX:4,OPERA:5,EDGE:6}),s=e=>{switch(!0){case e.includes("Chrome"):return i.CHROME;case e.includes("Safari"):return i.SAFARI;case e.includes("Firefox"):return i.FIREFOX;case e.includes("Opera"):return i.OPERA;case e.includes("IE"):return i.IE;case e.includes("Edge"):return i.EDGE;default:return i.OTHER}}}}]);
//# sourceMappingURL=https://sm.pinimg.com/webapp/11167-43efcb895c54b06b.mjs.map