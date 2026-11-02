package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.ByteString;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslMap;
import com.google.protobuf.kotlin.DslProxy;
import com.ironsource.C3510b4;
import com.ironsource.R6;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.List;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationRequestKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class InitializationRequestKt {
    public static final InitializationRequestKt INSTANCE = new InitializationRequestKt();

    /* JADX INFO: compiled from: InitializationRequestKt.kt */
    @Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001c\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0007\u0018\u0000 °\u00012\u00020\u0001:\u0006°\u0001±\u0001²\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010)\u001a\u00020\u0010J\u0006\u0010*\u001a\u00020\u0012J\u0006\u0010.\u001a\u00020\u0010J\u0006\u0010/\u001a\u00020\u0012J\u0006\u00103\u001a\u00020\u0010J\u0006\u00104\u001a\u00020\u0012J\u0006\u00108\u001a\u00020\u0010J\u0006\u00109\u001a\u00020\u0012J\u0006\u0010@\u001a\u00020\u0010J\u0006\u0010A\u001a\u00020\u0012J\u0006\u0010G\u001a\u00020\u0010J\u0006\u0010K\u001a\u00020\u0010J\u0006\u0010L\u001a\u00020\u0012J\u0006\u0010P\u001a\u00020\u0010J\u0006\u0010Q\u001a\u00020\u0012J\u0006\u0010U\u001a\u00020\u0010J\u0006\u0010V\u001a\u00020\u0012J\u0006\u0010Z\u001a\u00020\u0010J\u0006\u0010[\u001a\u00020\u0012J\u0006\u0010_\u001a\u00020\u0010J\u0006\u0010`\u001a\u00020\u0012J3\u0010f\u001a\u00020\u0010*\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020c0b2\u0006\u0010g\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001bH\u0007¢\u0006\u0002\bhJ4\u0010i\u001a\u00020\u0010*\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020c0b2\u0006\u0010g\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001bH\u0087\n¢\u0006\u0002\bjJ+\u0010k\u001a\u00020\u0010*\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020c0b2\u0006\u0010g\u001a\u00020\u001bH\u0007¢\u0006\u0002\blJ7\u0010m\u001a\u00020\u0010*\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020c0b2\u0012\u0010n\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0oH\u0007¢\u0006\u0002\bpJ#\u0010q\u001a\u00020\u0010*\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020c0bH\u0007¢\u0006\u0002\brJ\u0006\u0010v\u001a\u00020\u0010J\u0006\u0010w\u001a\u00020\u0012J\u0006\u0010~\u001a\u00020\u0010J\u0006\u0010\u007f\u001a\u00020\u0012J\u0007\u0010\u0086\u0001\u001a\u00020\u0010J\u0007\u0010\u0087\u0001\u001a\u00020\u0012J+\u0010\u008e\u0001\u001a\u00020\u0010*\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u00012\u0007\u0010\b\u001a\u00030\u008a\u0001H\u0007¢\u0006\u0003\b\u008f\u0001J,\u0010\u0090\u0001\u001a\u00020\u0010*\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u00012\u0007\u0010\b\u001a\u00030\u008a\u0001H\u0087\n¢\u0006\u0003\b\u0091\u0001J3\u0010\u0092\u0001\u001a\u00020\u0010*\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u00012\u000f\u0010\u0093\u0001\u001a\n\u0012\u0005\u0012\u00030\u008a\u00010\u0094\u0001H\u0007¢\u0006\u0003\b\u0095\u0001J4\u0010\u0090\u0001\u001a\u00020\u0010*\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u00012\u000f\u0010\u0093\u0001\u001a\n\u0012\u0005\u0012\u00030\u008a\u00010\u0094\u0001H\u0087\n¢\u0006\u0003\b\u0096\u0001J5\u0010i\u001a\u00020\u0010*\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u00012\b\u0010\u0097\u0001\u001a\u00030\u0098\u00012\u0007\u0010\b\u001a\u00030\u008a\u0001H\u0087\u0002¢\u0006\u0003\b\u0099\u0001J!\u0010q\u001a\u00020\u0010*\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u0001H\u0007¢\u0006\u0003\b\u009a\u0001J\u0007\u0010\u009e\u0001\u001a\u00020\u0010J\u0007\u0010\u009f\u0001\u001a\u00020\u0012J\u0007\u0010¦\u0001\u001a\u00020\u0010J\u0007\u0010§\u0001\u001a\u00020\u0012J\u0007\u0010®\u0001\u001a\u00020\u0010J\u0007\u0010¯\u0001\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010\"\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b#\u0010\u0016\"\u0004\b$\u0010\u0018R$\u0010&\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R$\u0010+\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b,\u0010\u001e\"\u0004\b-\u0010 R$\u00100\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u0010\u0016\"\u0004\b2\u0010\u0018R$\u00105\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b6\u0010\u001e\"\u0004\b7\u0010 R$\u0010;\u001a\u00020:2\u0006\u0010\b\u001a\u00020:8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R$\u0010B\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010H\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bI\u0010\u001e\"\u0004\bJ\u0010 R$\u0010M\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bN\u0010\u0016\"\u0004\bO\u0010\u0018R$\u0010R\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bS\u0010\u0016\"\u0004\bT\u0010\u0018R$\u0010W\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bX\u0010\u0016\"\u0004\bY\u0010\u0018R$\u0010\\\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b]\u0010\u001e\"\u0004\b^\u0010 R#\u0010a\u001a\u0014\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020c0b8G¢\u0006\u0006\u001a\u0004\bd\u0010eR$\u0010s\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bt\u0010\u001e\"\u0004\bu\u0010 R$\u0010y\u001a\u00020x2\u0006\u0010\b\u001a\u00020x8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}R\u001a\u0010\u0080\u0001\u001a\u0004\u0018\u00010x*\u00020\u00008F¢\u0006\b\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R'\u0010\u0083\u0001\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u0084\u0001\u0010\u001e\"\u0005\b\u0085\u0001\u0010 R#\u0010\u0088\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u008a\u0001\u0012\u0005\u0012\u00030\u008b\u00010\u0089\u00018F¢\u0006\b\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R'\u0010\u009b\u0001\u001a\u00020\u001b2\u0006\u0010\b\u001a\u00020\u001b8G@GX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u009c\u0001\u0010\u001e\"\u0005\b\u009d\u0001\u0010 R+\u0010¡\u0001\u001a\u00030 \u00012\u0007\u0010\b\u001a\u00030 \u00018G@GX\u0086\u000e¢\u0006\u0010\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001R\u001b\u0010¨\u0001\u001a\u0005\u0018\u00010 \u0001*\u00020\u00008F¢\u0006\b\u001a\u0006\b©\u0001\u0010ª\u0001R'\u0010«\u0001\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\u000e\u001a\u0005\b¬\u0001\u0010\u0016\"\u0005\b\u00ad\u0001\u0010\u0018¨\u0006³\u0001"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;", "<init>", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V", "_build", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;", "value", "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "clientInfo", "getClientInfo", "()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;", "setClientInfo", "(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V", "clearClientInfo", "", "hasClientInfo", "", "Lcom/google/protobuf/ByteString;", "privacy", "getPrivacy", "()Lcom/google/protobuf/ByteString;", "setPrivacy", "(Lcom/google/protobuf/ByteString;)V", "clearPrivacy", "hasPrivacy", "", R6.P0, "getIdfi", "()Ljava/lang/String;", "setIdfi", "(Ljava/lang/String;)V", "clearIdfi", "sessionId", "getSessionId", "setSessionId", "clearSessionId", "cache", "getCache", "setCache", "clearCache", "hasCache", "legacyFlowUserConsent", "getLegacyFlowUserConsent", "setLegacyFlowUserConsent", "clearLegacyFlowUserConsent", "hasLegacyFlowUserConsent", "auid", "getAuid", "setAuid", "clearAuid", "hasAuid", "analyticsUserId", "getAnalyticsUserId", "setAnalyticsUserId", "clearAnalyticsUserId", "hasAnalyticsUserId", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "deviceInfo", "getDeviceInfo", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;", "setDeviceInfo", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V", "clearDeviceInfo", "hasDeviceInfo", "isFirstInit", "getIsFirstInit", "()Z", "setIsFirstInit", "(Z)V", "clearIsFirstInit", "auidString", "getAuidString", "setAuidString", "clearAuidString", "hasAuidString", "uadsInitBlob", "getUadsInitBlob", "setUadsInitBlob", "clearUadsInitBlob", "hasUadsInitBlob", "unityInstallationId", "getUnityInstallationId", "setUnityInstallationId", "clearUnityInstallationId", "hasUnityInstallationId", "unityMegaSessionId", "getUnityMegaSessionId", "setUnityMegaSessionId", "clearUnityMegaSessionId", "hasUnityMegaSessionId", "externalUserIdentifier", "getExternalUserIdentifier", "setExternalUserIdentifier", "clearExternalUserIdentifier", "hasExternalUserIdentifier", HandleInvocationsFromAdViewer.KEY_EXTRAS, "Lcom/google/protobuf/kotlin/DslMap;", "Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ExtrasProxy;", "getExtrasMap", "()Lcom/google/protobuf/kotlin/DslMap;", "put", C3510b4.i.W, "putExtras", "set", "setExtras", "remove", "removeExtras", "putAll", "map", "", "putAllExtras", "clear", "clearExtras", "unityBuildGuid", "getUnityBuildGuid", "setUnityBuildGuid", "clearUnityBuildGuid", "hasUnityBuildGuid", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;", "installReferrer", "getInstallReferrer", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;", "setInstallReferrer", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)V", "clearInstallReferrer", "hasInstallReferrer", "installReferrerOrNull", "getInstallReferrerOrNull", "(Lgatewayprotocol/v1/InitializationRequestKt$Dsl;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;", "googleAppId", "getGoogleAppId", "setGoogleAppId", "clearGoogleAppId", "hasGoogleAppId", "moduleInitParams", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;", "Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ModuleInitParamsProxy;", "getModuleInitParams", "()Lcom/google/protobuf/kotlin/DslList;", "add", "addModuleInitParams", "plusAssign", "plusAssignModuleInitParams", "addAll", TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "addAllModuleInitParams", "plusAssignAllModuleInitParams", FirebaseAnalytics.Param.INDEX, "", "setModuleInitParams", "clearModuleInitParams", "installSource", "getInstallSource", "setInstallSource", "clearInstallSource", "hasInstallSource", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;", "quickCapabilities", "getQuickCapabilities", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;", "setQuickCapabilities", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V", "clearQuickCapabilities", "hasQuickCapabilities", "quickCapabilitiesOrNull", "getQuickCapabilitiesOrNull", "(Lgatewayprotocol/v1/InitializationRequestKt$Dsl;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;", "tcf", "getTcf", "setTcf", "clearTcf", "hasTcf", "Companion", "ExtrasProxy", "ModuleInitParamsProxy", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final InitializationRequestOuterClass.InitializationRequest.Builder _builder;

        /* JADX INFO: compiled from: InitializationRequestKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/InitializationRequestKt$Dsl;", "builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.InitializationRequest.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        /* JADX INFO: compiled from: InitializationRequestKt.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ExtrasProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "<init>", "()V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class ExtrasProxy extends DslProxy {
            private ExtrasProxy() {
            }
        }

        /* JADX INFO: compiled from: InitializationRequestKt.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/InitializationRequestKt$Dsl$ModuleInitParamsProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "<init>", "()V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class ModuleInitParamsProxy extends DslProxy {
            private ModuleInitParamsProxy() {
            }
        }

        private Dsl(InitializationRequestOuterClass.InitializationRequest.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(InitializationRequestOuterClass.InitializationRequest.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ InitializationRequestOuterClass.InitializationRequest _build() {
            InitializationRequestOuterClass.InitializationRequest initializationRequestBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(initializationRequestBuild, "build(...)");
            return initializationRequestBuild;
        }

        public final /* synthetic */ void addAllModuleInitParams(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllModuleInitParams(values);
        }

        public final /* synthetic */ void addModuleInitParams(DslList dslList, ModuleInitParamsOuterClass.ModuleInitParams value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addModuleInitParams(value);
        }

        public final void clearAnalyticsUserId() {
            this._builder.clearAnalyticsUserId();
        }

        public final void clearAuid() {
            this._builder.clearAuid();
        }

        public final void clearAuidString() {
            this._builder.clearAuidString();
        }

        public final void clearCache() {
            this._builder.clearCache();
        }

        public final void clearClientInfo() {
            this._builder.clearClientInfo();
        }

        public final void clearDeviceInfo() {
            this._builder.clearDeviceInfo();
        }

        public final void clearExternalUserIdentifier() {
            this._builder.clearExternalUserIdentifier();
        }

        public final /* synthetic */ void clearExtras(DslMap dslMap) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            this._builder.clearExtras();
        }

        public final void clearGoogleAppId() {
            this._builder.clearGoogleAppId();
        }

        public final void clearIdfi() {
            this._builder.clearIdfi();
        }

        public final void clearInstallReferrer() {
            this._builder.clearInstallReferrer();
        }

        public final void clearInstallSource() {
            this._builder.clearInstallSource();
        }

        public final void clearIsFirstInit() {
            this._builder.clearIsFirstInit();
        }

        public final void clearLegacyFlowUserConsent() {
            this._builder.clearLegacyFlowUserConsent();
        }

        public final /* synthetic */ void clearModuleInitParams(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearModuleInitParams();
        }

        public final void clearPrivacy() {
            this._builder.clearPrivacy();
        }

        public final void clearQuickCapabilities() {
            this._builder.clearQuickCapabilities();
        }

        public final void clearSessionId() {
            this._builder.clearSessionId();
        }

        public final void clearTcf() {
            this._builder.clearTcf();
        }

        public final void clearUadsInitBlob() {
            this._builder.clearUadsInitBlob();
        }

        public final void clearUnityBuildGuid() {
            this._builder.clearUnityBuildGuid();
        }

        public final void clearUnityInstallationId() {
            this._builder.clearUnityInstallationId();
        }

        public final void clearUnityMegaSessionId() {
            this._builder.clearUnityMegaSessionId();
        }

        public final String getAnalyticsUserId() {
            String analyticsUserId = this._builder.getAnalyticsUserId();
            Intrinsics.checkNotNullExpressionValue(analyticsUserId, "getAnalyticsUserId(...)");
            return analyticsUserId;
        }

        public final ByteString getAuid() {
            ByteString auid = this._builder.getAuid();
            Intrinsics.checkNotNullExpressionValue(auid, "getAuid(...)");
            return auid;
        }

        public final String getAuidString() {
            String auidString = this._builder.getAuidString();
            Intrinsics.checkNotNullExpressionValue(auidString, "getAuidString(...)");
            return auidString;
        }

        public final ByteString getCache() {
            ByteString cache = this._builder.getCache();
            Intrinsics.checkNotNullExpressionValue(cache, "getCache(...)");
            return cache;
        }

        public final ClientInfoOuterClass.ClientInfo getClientInfo() {
            ClientInfoOuterClass.ClientInfo clientInfo = this._builder.getClientInfo();
            Intrinsics.checkNotNullExpressionValue(clientInfo, "getClientInfo(...)");
            return clientInfo;
        }

        public final InitializationRequestOuterClass.InitializationDeviceInfo getDeviceInfo() {
            InitializationRequestOuterClass.InitializationDeviceInfo deviceInfo = this._builder.getDeviceInfo();
            Intrinsics.checkNotNullExpressionValue(deviceInfo, "getDeviceInfo(...)");
            return deviceInfo;
        }

        public final String getExternalUserIdentifier() {
            String externalUserIdentifier = this._builder.getExternalUserIdentifier();
            Intrinsics.checkNotNullExpressionValue(externalUserIdentifier, "getExternalUserIdentifier(...)");
            return externalUserIdentifier;
        }

        public final /* synthetic */ DslMap getExtrasMap() {
            Map<String, String> extrasMap = this._builder.getExtrasMap();
            Intrinsics.checkNotNullExpressionValue(extrasMap, "getExtrasMap(...)");
            return new DslMap(extrasMap);
        }

        public final String getGoogleAppId() {
            String googleAppId = this._builder.getGoogleAppId();
            Intrinsics.checkNotNullExpressionValue(googleAppId, "getGoogleAppId(...)");
            return googleAppId;
        }

        public final String getIdfi() {
            String idfi = this._builder.getIdfi();
            Intrinsics.checkNotNullExpressionValue(idfi, "getIdfi(...)");
            return idfi;
        }

        public final InitializationRequestOuterClass.InstallReferrer getInstallReferrer() {
            InitializationRequestOuterClass.InstallReferrer installReferrer = this._builder.getInstallReferrer();
            Intrinsics.checkNotNullExpressionValue(installReferrer, "getInstallReferrer(...)");
            return installReferrer;
        }

        public final InitializationRequestOuterClass.InstallReferrer getInstallReferrerOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return InitializationRequestKtKt.getInstallReferrerOrNull(dsl._builder);
        }

        public final String getInstallSource() {
            String installSource = this._builder.getInstallSource();
            Intrinsics.checkNotNullExpressionValue(installSource, "getInstallSource(...)");
            return installSource;
        }

        public final boolean getIsFirstInit() {
            return this._builder.getIsFirstInit();
        }

        public final String getLegacyFlowUserConsent() {
            String legacyFlowUserConsent = this._builder.getLegacyFlowUserConsent();
            Intrinsics.checkNotNullExpressionValue(legacyFlowUserConsent, "getLegacyFlowUserConsent(...)");
            return legacyFlowUserConsent;
        }

        public final /* synthetic */ DslList getModuleInitParams() {
            List<ModuleInitParamsOuterClass.ModuleInitParams> moduleInitParamsList = this._builder.getModuleInitParamsList();
            Intrinsics.checkNotNullExpressionValue(moduleInitParamsList, "getModuleInitParamsList(...)");
            return new DslList(moduleInitParamsList);
        }

        public final ByteString getPrivacy() {
            ByteString privacy = this._builder.getPrivacy();
            Intrinsics.checkNotNullExpressionValue(privacy, "getPrivacy(...)");
            return privacy;
        }

        public final InitializationRequestOuterClass.QuickCapabilities getQuickCapabilities() {
            InitializationRequestOuterClass.QuickCapabilities quickCapabilities = this._builder.getQuickCapabilities();
            Intrinsics.checkNotNullExpressionValue(quickCapabilities, "getQuickCapabilities(...)");
            return quickCapabilities;
        }

        public final InitializationRequestOuterClass.QuickCapabilities getQuickCapabilitiesOrNull(Dsl dsl) {
            Intrinsics.checkNotNullParameter(dsl, "<this>");
            return InitializationRequestKtKt.getQuickCapabilitiesOrNull(dsl._builder);
        }

        public final ByteString getSessionId() {
            ByteString sessionId = this._builder.getSessionId();
            Intrinsics.checkNotNullExpressionValue(sessionId, "getSessionId(...)");
            return sessionId;
        }

        public final ByteString getTcf() {
            ByteString tcf = this._builder.getTcf();
            Intrinsics.checkNotNullExpressionValue(tcf, "getTcf(...)");
            return tcf;
        }

        public final ByteString getUadsInitBlob() {
            ByteString uadsInitBlob = this._builder.getUadsInitBlob();
            Intrinsics.checkNotNullExpressionValue(uadsInitBlob, "getUadsInitBlob(...)");
            return uadsInitBlob;
        }

        public final String getUnityBuildGuid() {
            String unityBuildGuid = this._builder.getUnityBuildGuid();
            Intrinsics.checkNotNullExpressionValue(unityBuildGuid, "getUnityBuildGuid(...)");
            return unityBuildGuid;
        }

        public final ByteString getUnityInstallationId() {
            ByteString unityInstallationId = this._builder.getUnityInstallationId();
            Intrinsics.checkNotNullExpressionValue(unityInstallationId, "getUnityInstallationId(...)");
            return unityInstallationId;
        }

        public final ByteString getUnityMegaSessionId() {
            ByteString unityMegaSessionId = this._builder.getUnityMegaSessionId();
            Intrinsics.checkNotNullExpressionValue(unityMegaSessionId, "getUnityMegaSessionId(...)");
            return unityMegaSessionId;
        }

        public final boolean hasAnalyticsUserId() {
            return this._builder.hasAnalyticsUserId();
        }

        public final boolean hasAuid() {
            return this._builder.hasAuid();
        }

        public final boolean hasAuidString() {
            return this._builder.hasAuidString();
        }

        public final boolean hasCache() {
            return this._builder.hasCache();
        }

        public final boolean hasClientInfo() {
            return this._builder.hasClientInfo();
        }

        public final boolean hasDeviceInfo() {
            return this._builder.hasDeviceInfo();
        }

        public final boolean hasExternalUserIdentifier() {
            return this._builder.hasExternalUserIdentifier();
        }

        public final boolean hasGoogleAppId() {
            return this._builder.hasGoogleAppId();
        }

        public final boolean hasInstallReferrer() {
            return this._builder.hasInstallReferrer();
        }

        public final boolean hasInstallSource() {
            return this._builder.hasInstallSource();
        }

        public final boolean hasLegacyFlowUserConsent() {
            return this._builder.hasLegacyFlowUserConsent();
        }

        public final boolean hasPrivacy() {
            return this._builder.hasPrivacy();
        }

        public final boolean hasQuickCapabilities() {
            return this._builder.hasQuickCapabilities();
        }

        public final boolean hasTcf() {
            return this._builder.hasTcf();
        }

        public final boolean hasUadsInitBlob() {
            return this._builder.hasUadsInitBlob();
        }

        public final boolean hasUnityBuildGuid() {
            return this._builder.hasUnityBuildGuid();
        }

        public final boolean hasUnityInstallationId() {
            return this._builder.hasUnityInstallationId();
        }

        public final boolean hasUnityMegaSessionId() {
            return this._builder.hasUnityMegaSessionId();
        }

        public final /* synthetic */ void plusAssignAllModuleInitParams(DslList<ModuleInitParamsOuterClass.ModuleInitParams, ModuleInitParamsProxy> dslList, Iterable<ModuleInitParamsOuterClass.ModuleInitParams> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllModuleInitParams(dslList, values);
        }

        public final /* synthetic */ void plusAssignModuleInitParams(DslList<ModuleInitParamsOuterClass.ModuleInitParams, ModuleInitParamsProxy> dslList, ModuleInitParamsOuterClass.ModuleInitParams value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addModuleInitParams(dslList, value);
        }

        public final /* synthetic */ void putAllExtras(DslMap dslMap, Map map) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(map, "map");
            this._builder.putAllExtras(map);
        }

        public final void putExtras(DslMap<String, String, ExtrasProxy> dslMap, String key, String value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.putExtras(key, value);
        }

        public final /* synthetic */ void removeExtras(DslMap dslMap, String key) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            this._builder.removeExtras(key);
        }

        public final void setAnalyticsUserId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAnalyticsUserId(value);
        }

        public final void setAuid(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAuid(value);
        }

        public final void setAuidString(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAuidString(value);
        }

        public final void setCache(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCache(value);
        }

        public final void setClientInfo(ClientInfoOuterClass.ClientInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setClientInfo(value);
        }

        public final void setDeviceInfo(InitializationRequestOuterClass.InitializationDeviceInfo value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceInfo(value);
        }

        public final void setExternalUserIdentifier(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setExternalUserIdentifier(value);
        }

        public final /* synthetic */ void setExtras(DslMap<String, String, ExtrasProxy> dslMap, String key, String value) {
            Intrinsics.checkNotNullParameter(dslMap, "<this>");
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            putExtras(dslMap, key, value);
        }

        public final void setGoogleAppId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGoogleAppId(value);
        }

        public final void setIdfi(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIdfi(value);
        }

        public final void setInstallReferrer(InitializationRequestOuterClass.InstallReferrer value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInstallReferrer(value);
        }

        public final void setInstallSource(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setInstallSource(value);
        }

        public final void setIsFirstInit(boolean z) {
            this._builder.setIsFirstInit(z);
        }

        public final void setLegacyFlowUserConsent(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setLegacyFlowUserConsent(value);
        }

        public final /* synthetic */ void setModuleInitParams(DslList dslList, int i, ModuleInitParamsOuterClass.ModuleInitParams value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setModuleInitParams(i, value);
        }

        public final void setPrivacy(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setPrivacy(value);
        }

        public final void setQuickCapabilities(InitializationRequestOuterClass.QuickCapabilities value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setQuickCapabilities(value);
        }

        public final void setSessionId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setSessionId(value);
        }

        public final void setTcf(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setTcf(value);
        }

        public final void setUadsInitBlob(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUadsInitBlob(value);
        }

        public final void setUnityBuildGuid(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUnityBuildGuid(value);
        }

        public final void setUnityInstallationId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUnityInstallationId(value);
        }

        public final void setUnityMegaSessionId(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setUnityMegaSessionId(value);
        }
    }

    private InitializationRequestKt() {
    }
}
