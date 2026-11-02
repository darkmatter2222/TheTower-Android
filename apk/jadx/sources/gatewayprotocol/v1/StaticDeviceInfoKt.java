package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.ironsource.C3510b4;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0004\u0014\u0015\u0016\u0017B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000bJ*\u0010\f\u001a\u00020\r2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000fJ*\u0010\u0010\u001a\u00020\u00112\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u0013\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0018"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt;", "", "<init>", "()V", "android", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeandroid", "ios", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;", "-initializeios", "web", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$WebKt$Dsl;", "-initializeweb", "Dsl", "AndroidKt", "IosKt", "WebKt", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class StaticDeviceInfoKt {
    public static final StaticDeviceInfoKt INSTANCE = new StaticDeviceInfoKt();

    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AndroidKt {
        public static final AndroidKt INSTANCE = new AndroidKt();

        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\bR\n\u0002\u0010\t\n\u0002\b\u0013\b\u0007\u0018\u0000 }2\u00020\u0001:\u0001}B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\u0012J\u0006\u0010(\u001a\u00020\u0010J\u0006\u0010)\u001a\u00020\u0012J\u0006\u0010-\u001a\u00020\u0010J\u0006\u0010.\u001a\u00020\u0012J\u0006\u00102\u001a\u00020\u0010J\u0006\u00103\u001a\u00020\u0012J\u0006\u00107\u001a\u00020\u0010J\u0006\u00108\u001a\u00020\u0012J\u0006\u0010<\u001a\u00020\u0010J\u0006\u0010=\u001a\u00020\u0012J\u0006\u0010A\u001a\u00020\u0010J\u0006\u0010B\u001a\u00020\u0012J\u0006\u0010F\u001a\u00020\u0010J\u0006\u0010G\u001a\u00020\u0012J\u0006\u0010K\u001a\u00020\u0010J\u0006\u0010L\u001a\u00020\u0012J\u0006\u0010P\u001a\u00020\u0010J\u0006\u0010Q\u001a\u00020\u0012J\u0006\u0010U\u001a\u00020\u0010J\u0006\u0010V\u001a\u00020\u0012J\u0006\u0010Z\u001a\u00020\u0010J\u0006\u0010[\u001a\u00020\u0012J\u0006\u0010_\u001a\u00020\u0010J\u0006\u0010`\u001a\u00020\u0012J\u0006\u0010d\u001a\u00020\u0010J\u0006\u0010e\u001a\u00020\u0012J\u0006\u0010i\u001a\u00020\u0010J\u0006\u0010j\u001a\u00020\u0012J\u0006\u0010q\u001a\u00020\u0010J\u0006\u0010r\u001a\u00020\u0012J\u0006\u0010v\u001a\u00020\u0010J\u0006\u0010w\u001a\u00020\u0012J\u0006\u0010{\u001a\u00020\u0010J\u0006\u0010|\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0013\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010 \u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u001b\"\u0004\b\"\u0010\u001dR$\u0010%\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b&\u0010\u001b\"\u0004\b'\u0010\u001dR$\u0010*\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010\u001dR$\u0010/\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b0\u0010\u001b\"\u0004\b1\u0010\u001dR$\u00104\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b5\u0010\u001b\"\u0004\b6\u0010\u001dR$\u00109\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010\u001b\"\u0004\b;\u0010\u001dR$\u0010>\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b?\u0010\u001b\"\u0004\b@\u0010\u001dR$\u0010C\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bD\u0010\u001b\"\u0004\bE\u0010\u001dR$\u0010H\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bI\u0010\u001b\"\u0004\bJ\u0010\u001dR$\u0010M\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bN\u0010\u001b\"\u0004\bO\u0010\u001dR$\u0010R\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bS\u0010\u001b\"\u0004\bT\u0010\u001dR$\u0010W\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bX\u0010\u001b\"\u0004\bY\u0010\u001dR$\u0010\\\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b]\u0010\f\"\u0004\b^\u0010\u000eR$\u0010a\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bb\u0010\f\"\u0004\bc\u0010\u000eR$\u0010f\u001a\u00020\u00182\u0006\u0010\b\u001a\u00020\u00188G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bg\u0010\u001b\"\u0004\bh\u0010\u001dR$\u0010l\u001a\u00020k2\u0006\u0010\b\u001a\u00020k8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR$\u0010s\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bt\u0010\f\"\u0004\bu\u0010\u000eR$\u0010x\u001a\u00020k2\u0006\u0010\b\u001a\u00020k8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\by\u0010n\"\u0004\bz\u0010p¨\u0006~"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;", "<init>", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;)V", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "value", "", "apiLevel", "getApiLevel", "()I", "setApiLevel", "(I)V", "clearApiLevel", "", "hasApiLevel", "", "versionCode", "getVersionCode", "setVersionCode", "clearVersionCode", "hasVersionCode", "", "androidFingerprint", "getAndroidFingerprint", "()Ljava/lang/String;", "setAndroidFingerprint", "(Ljava/lang/String;)V", "clearAndroidFingerprint", "hasAndroidFingerprint", "appInstaller", "getAppInstaller", "setAppInstaller", "clearAppInstaller", "hasAppInstaller", "apkDeveloperSigningCertificateHash", "getApkDeveloperSigningCertificateHash", "setApkDeveloperSigningCertificateHash", "clearApkDeveloperSigningCertificateHash", "hasApkDeveloperSigningCertificateHash", "buildBoard", "getBuildBoard", "setBuildBoard", "clearBuildBoard", "hasBuildBoard", "buildBrand", "getBuildBrand", "setBuildBrand", "clearBuildBrand", "hasBuildBrand", "buildDevice", "getBuildDevice", "setBuildDevice", "clearBuildDevice", "hasBuildDevice", "buildDisplay", "getBuildDisplay", "setBuildDisplay", "clearBuildDisplay", "hasBuildDisplay", "buildFingerprint", "getBuildFingerprint", "setBuildFingerprint", "clearBuildFingerprint", "hasBuildFingerprint", "buildHardware", "getBuildHardware", "setBuildHardware", "clearBuildHardware", "hasBuildHardware", "buildHost", "getBuildHost", "setBuildHost", "clearBuildHost", "hasBuildHost", "buildBootloader", "getBuildBootloader", "setBuildBootloader", "clearBuildBootloader", "hasBuildBootloader", "buildProduct", "getBuildProduct", "setBuildProduct", "clearBuildProduct", "hasBuildProduct", "buildId", "getBuildId", "setBuildId", "clearBuildId", "hasBuildId", "extensionVersion", "getExtensionVersion", "setExtensionVersion", "clearExtensionVersion", "hasExtensionVersion", C3510b4.j.S, "getPhoneType", "setPhoneType", "clearPhoneType", "hasPhoneType", C3510b4.j.R, "getSimOperator", "setSimOperator", "clearSimOperator", "hasSimOperator", "", "totalDiskSpaceInternal", "getTotalDiskSpaceInternal", "()J", "setTotalDiskSpaceInternal", "(J)V", "clearTotalDiskSpaceInternal", "hasTotalDiskSpaceInternal", "displayScreenDensity", "getDisplayScreenDensity", "setDisplayScreenDensity", "clearDisplayScreenDensity", "hasDisplayScreenDensity", "jvmMaxMemory", "getJvmMaxMemory", "setJvmMaxMemory", "clearJvmMaxMemory", "hasJvmMaxMemory", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dsl {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder _builder;

            /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$AndroidKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder) {
                this._builder = builder;
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Android _build() {
                StaticDeviceInfoOuterClass.StaticDeviceInfo.Android androidBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(androidBuild, "build(...)");
                return androidBuild;
            }

            public final void clearAndroidFingerprint() {
                this._builder.clearAndroidFingerprint();
            }

            public final void clearApiLevel() {
                this._builder.clearApiLevel();
            }

            public final void clearApkDeveloperSigningCertificateHash() {
                this._builder.clearApkDeveloperSigningCertificateHash();
            }

            public final void clearAppInstaller() {
                this._builder.clearAppInstaller();
            }

            public final void clearBuildBoard() {
                this._builder.clearBuildBoard();
            }

            public final void clearBuildBootloader() {
                this._builder.clearBuildBootloader();
            }

            public final void clearBuildBrand() {
                this._builder.clearBuildBrand();
            }

            public final void clearBuildDevice() {
                this._builder.clearBuildDevice();
            }

            public final void clearBuildDisplay() {
                this._builder.clearBuildDisplay();
            }

            public final void clearBuildFingerprint() {
                this._builder.clearBuildFingerprint();
            }

            public final void clearBuildHardware() {
                this._builder.clearBuildHardware();
            }

            public final void clearBuildHost() {
                this._builder.clearBuildHost();
            }

            public final void clearBuildId() {
                this._builder.clearBuildId();
            }

            public final void clearBuildProduct() {
                this._builder.clearBuildProduct();
            }

            public final void clearDisplayScreenDensity() {
                this._builder.clearDisplayScreenDensity();
            }

            public final void clearExtensionVersion() {
                this._builder.clearExtensionVersion();
            }

            public final void clearJvmMaxMemory() {
                this._builder.clearJvmMaxMemory();
            }

            public final void clearPhoneType() {
                this._builder.clearPhoneType();
            }

            public final void clearSimOperator() {
                this._builder.clearSimOperator();
            }

            public final void clearTotalDiskSpaceInternal() {
                this._builder.clearTotalDiskSpaceInternal();
            }

            public final void clearVersionCode() {
                this._builder.clearVersionCode();
            }

            public final String getAndroidFingerprint() {
                String androidFingerprint = this._builder.getAndroidFingerprint();
                Intrinsics.checkNotNullExpressionValue(androidFingerprint, "getAndroidFingerprint(...)");
                return androidFingerprint;
            }

            public final int getApiLevel() {
                return this._builder.getApiLevel();
            }

            public final String getApkDeveloperSigningCertificateHash() {
                String apkDeveloperSigningCertificateHash = this._builder.getApkDeveloperSigningCertificateHash();
                Intrinsics.checkNotNullExpressionValue(apkDeveloperSigningCertificateHash, "getApkDeveloperSigningCertificateHash(...)");
                return apkDeveloperSigningCertificateHash;
            }

            public final String getAppInstaller() {
                String appInstaller = this._builder.getAppInstaller();
                Intrinsics.checkNotNullExpressionValue(appInstaller, "getAppInstaller(...)");
                return appInstaller;
            }

            public final String getBuildBoard() {
                String buildBoard = this._builder.getBuildBoard();
                Intrinsics.checkNotNullExpressionValue(buildBoard, "getBuildBoard(...)");
                return buildBoard;
            }

            public final String getBuildBootloader() {
                String buildBootloader = this._builder.getBuildBootloader();
                Intrinsics.checkNotNullExpressionValue(buildBootloader, "getBuildBootloader(...)");
                return buildBootloader;
            }

            public final String getBuildBrand() {
                String buildBrand = this._builder.getBuildBrand();
                Intrinsics.checkNotNullExpressionValue(buildBrand, "getBuildBrand(...)");
                return buildBrand;
            }

            public final String getBuildDevice() {
                String buildDevice = this._builder.getBuildDevice();
                Intrinsics.checkNotNullExpressionValue(buildDevice, "getBuildDevice(...)");
                return buildDevice;
            }

            public final String getBuildDisplay() {
                String buildDisplay = this._builder.getBuildDisplay();
                Intrinsics.checkNotNullExpressionValue(buildDisplay, "getBuildDisplay(...)");
                return buildDisplay;
            }

            public final String getBuildFingerprint() {
                String buildFingerprint = this._builder.getBuildFingerprint();
                Intrinsics.checkNotNullExpressionValue(buildFingerprint, "getBuildFingerprint(...)");
                return buildFingerprint;
            }

            public final String getBuildHardware() {
                String buildHardware = this._builder.getBuildHardware();
                Intrinsics.checkNotNullExpressionValue(buildHardware, "getBuildHardware(...)");
                return buildHardware;
            }

            public final String getBuildHost() {
                String buildHost = this._builder.getBuildHost();
                Intrinsics.checkNotNullExpressionValue(buildHost, "getBuildHost(...)");
                return buildHost;
            }

            public final String getBuildId() {
                String buildId = this._builder.getBuildId();
                Intrinsics.checkNotNullExpressionValue(buildId, "getBuildId(...)");
                return buildId;
            }

            public final String getBuildProduct() {
                String buildProduct = this._builder.getBuildProduct();
                Intrinsics.checkNotNullExpressionValue(buildProduct, "getBuildProduct(...)");
                return buildProduct;
            }

            public final int getDisplayScreenDensity() {
                return this._builder.getDisplayScreenDensity();
            }

            public final int getExtensionVersion() {
                return this._builder.getExtensionVersion();
            }

            public final long getJvmMaxMemory() {
                return this._builder.getJvmMaxMemory();
            }

            public final int getPhoneType() {
                return this._builder.getPhoneType();
            }

            public final String getSimOperator() {
                String simOperator = this._builder.getSimOperator();
                Intrinsics.checkNotNullExpressionValue(simOperator, "getSimOperator(...)");
                return simOperator;
            }

            public final long getTotalDiskSpaceInternal() {
                return this._builder.getTotalDiskSpaceInternal();
            }

            public final int getVersionCode() {
                return this._builder.getVersionCode();
            }

            public final boolean hasAndroidFingerprint() {
                return this._builder.hasAndroidFingerprint();
            }

            public final boolean hasApiLevel() {
                return this._builder.hasApiLevel();
            }

            public final boolean hasApkDeveloperSigningCertificateHash() {
                return this._builder.hasApkDeveloperSigningCertificateHash();
            }

            public final boolean hasAppInstaller() {
                return this._builder.hasAppInstaller();
            }

            public final boolean hasBuildBoard() {
                return this._builder.hasBuildBoard();
            }

            public final boolean hasBuildBootloader() {
                return this._builder.hasBuildBootloader();
            }

            public final boolean hasBuildBrand() {
                return this._builder.hasBuildBrand();
            }

            public final boolean hasBuildDevice() {
                return this._builder.hasBuildDevice();
            }

            public final boolean hasBuildDisplay() {
                return this._builder.hasBuildDisplay();
            }

            public final boolean hasBuildFingerprint() {
                return this._builder.hasBuildFingerprint();
            }

            public final boolean hasBuildHardware() {
                return this._builder.hasBuildHardware();
            }

            public final boolean hasBuildHost() {
                return this._builder.hasBuildHost();
            }

            public final boolean hasBuildId() {
                return this._builder.hasBuildId();
            }

            public final boolean hasBuildProduct() {
                return this._builder.hasBuildProduct();
            }

            public final boolean hasDisplayScreenDensity() {
                return this._builder.hasDisplayScreenDensity();
            }

            public final boolean hasExtensionVersion() {
                return this._builder.hasExtensionVersion();
            }

            public final boolean hasJvmMaxMemory() {
                return this._builder.hasJvmMaxMemory();
            }

            public final boolean hasPhoneType() {
                return this._builder.hasPhoneType();
            }

            public final boolean hasSimOperator() {
                return this._builder.hasSimOperator();
            }

            public final boolean hasTotalDiskSpaceInternal() {
                return this._builder.hasTotalDiskSpaceInternal();
            }

            public final boolean hasVersionCode() {
                return this._builder.hasVersionCode();
            }

            public final void setAndroidFingerprint(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAndroidFingerprint(value);
            }

            public final void setApiLevel(int i) {
                this._builder.setApiLevel(i);
            }

            public final void setApkDeveloperSigningCertificateHash(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setApkDeveloperSigningCertificateHash(value);
            }

            public final void setAppInstaller(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setAppInstaller(value);
            }

            public final void setBuildBoard(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildBoard(value);
            }

            public final void setBuildBootloader(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildBootloader(value);
            }

            public final void setBuildBrand(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildBrand(value);
            }

            public final void setBuildDevice(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildDevice(value);
            }

            public final void setBuildDisplay(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildDisplay(value);
            }

            public final void setBuildFingerprint(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildFingerprint(value);
            }

            public final void setBuildHardware(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildHardware(value);
            }

            public final void setBuildHost(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildHost(value);
            }

            public final void setBuildId(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildId(value);
            }

            public final void setBuildProduct(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuildProduct(value);
            }

            public final void setDisplayScreenDensity(int i) {
                this._builder.setDisplayScreenDensity(i);
            }

            public final void setExtensionVersion(int i) {
                this._builder.setExtensionVersion(i);
            }

            public final void setJvmMaxMemory(long j) {
                this._builder.setJvmMaxMemory(j);
            }

            public final void setPhoneType(int i) {
                this._builder.setPhoneType(i);
            }

            public final void setSimOperator(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSimOperator(value);
            }

            public final void setTotalDiskSpaceInternal(long j) {
                this._builder.setTotalDiskSpaceInternal(j);
            }

            public final void setVersionCode(int i) {
                this._builder.setVersionCode(i);
            }
        }

        private AndroidKt() {
        }
    }

    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b%\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001c\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 ®\u00012\u00020\u0001:\u0006®\u0001¯\u0001°\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u001d\u001a\u00020\u0010J\u0006\u0010\u001e\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0010J\u0006\u0010#\u001a\u00020\u0012J\u0006\u0010'\u001a\u00020\u0010J\u0006\u0010(\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0010J\u0006\u0010-\u001a\u00020\u0012J\u0006\u00101\u001a\u00020\u0010J\u0006\u00102\u001a\u00020\u0012J\u0006\u00106\u001a\u00020\u0010J\u0006\u00107\u001a\u00020\u0012J\u0006\u0010>\u001a\u00020\u0010J\u0006\u0010?\u001a\u00020\u0012J\u0006\u0010C\u001a\u00020\u0010J\u0006\u0010D\u001a\u00020\u0012J\u0006\u0010H\u001a\u00020\u0010J\u0006\u0010I\u001a\u00020\u0012J\u0006\u0010M\u001a\u00020\u0010J\u0006\u0010N\u001a\u00020\u0012J%\u0010T\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0P2\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\bUJ&\u0010V\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0P2\u0006\u0010\b\u001a\u00020\tH\u0087\n¢\u0006\u0002\bWJ+\u0010X\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0P2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\t0ZH\u0007¢\u0006\u0002\b[J,\u0010V\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0P2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\t0ZH\u0087\n¢\u0006\u0002\b\\J.\u0010]\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0P2\u0006\u0010^\u001a\u0002082\u0006\u0010\b\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b_J\u001d\u0010`\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0PH\u0007¢\u0006\u0002\baJ\u0006\u0010h\u001a\u00020\u0010J\u0006\u0010i\u001a\u00020\u0012J\u0006\u0010m\u001a\u00020\u0010J\u0006\u0010n\u001a\u00020\u0012J\u0006\u0010r\u001a\u00020\u0010J\u0006\u0010s\u001a\u00020\u0012J\u0006\u0010w\u001a\u00020\u0010J\u0006\u0010x\u001a\u00020\u0012J\u0006\u0010|\u001a\u00020\u0010J\u0006\u0010}\u001a\u00020\u0012J\u0007\u0010\u0081\u0001\u001a\u00020\u0010J\u0007\u0010\u0082\u0001\u001a\u00020\u0012J'\u0010T\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010P2\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0003\b\u0086\u0001J(\u0010V\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010P2\u0006\u0010\b\u001a\u00020\tH\u0087\n¢\u0006\u0003\b\u0087\u0001J-\u0010X\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010P2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\t0ZH\u0007¢\u0006\u0003\b\u0088\u0001J.\u0010V\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010P2\f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\t0ZH\u0087\n¢\u0006\u0003\b\u0089\u0001J0\u0010]\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010P2\u0006\u0010^\u001a\u0002082\u0006\u0010\b\u001a\u00020\tH\u0087\u0002¢\u0006\u0003\b\u008a\u0001J\u001f\u0010`\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010PH\u0007¢\u0006\u0003\b\u008b\u0001J\u0007\u0010\u008f\u0001\u001a\u00020\u0010J\u0007\u0010\u0090\u0001\u001a\u00020\u0012J\u0007\u0010\u0097\u0001\u001a\u00020\u0010J\u0007\u0010\u0098\u0001\u001a\u00020\u0012J\u0007\u0010\u009f\u0001\u001a\u00020\u0010J\u0007\u0010 \u0001\u001a\u00020\u0012J\u0007\u0010§\u0001\u001a\u00020\u0010J\u0007\u0010¨\u0001\u001a\u00020\u0012J\u0007\u0010\u00ad\u0001\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0013\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR$\u0010\u0018\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR$\u0010\u001f\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b \u0010\u001a\"\u0004\b!\u0010\u001cR$\u0010$\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR$\u0010)\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\f\"\u0004\b+\u0010\u000eR$\u0010.\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b/\u0010\f\"\u0004\b0\u0010\u000eR$\u00103\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b4\u0010\f\"\u0004\b5\u0010\u000eR$\u00109\u001a\u0002082\u0006\u0010\b\u001a\u0002088G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R$\u0010@\u001a\u0002082\u0006\u0010\b\u001a\u0002088G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bA\u0010;\"\u0004\bB\u0010=R$\u0010E\u001a\u0002082\u0006\u0010\b\u001a\u0002088G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bF\u0010;\"\u0004\bG\u0010=R$\u0010J\u001a\u0002082\u0006\u0010\b\u001a\u0002088G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bK\u0010;\"\u0004\bL\u0010=R\u001d\u0010O\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020Q0P8F¢\u0006\u0006\u001a\u0004\bR\u0010SR$\u0010c\u001a\u00020b2\u0006\u0010\b\u001a\u00020b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR$\u0010j\u001a\u00020b2\u0006\u0010\b\u001a\u00020b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bk\u0010e\"\u0004\bl\u0010gR$\u0010o\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bp\u0010\f\"\u0004\bq\u0010\u000eR$\u0010t\u001a\u00020b2\u0006\u0010\b\u001a\u00020b8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bu\u0010e\"\u0004\bv\u0010gR$\u0010y\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bz\u0010\f\"\u0004\b{\u0010\u000eR%\u0010~\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\r\u001a\u0004\b\u007f\u0010\u001a\"\u0005\b\u0080\u0001\u0010\u001cR \u0010\u0083\u0001\u001a\u000f\u0012\u0004\u0012\u00020\t\u0012\u0005\u0012\u00030\u0084\u00010P8F¢\u0006\u0007\u001a\u0005\b\u0085\u0001\u0010SR'\u0010\u008c\u0001\u001a\u00020b2\u0006\u0010\b\u001a\u00020b8G@GX\u0086\u000e¢\u0006\u000e\u001a\u0005\b\u008d\u0001\u0010e\"\u0005\b\u008e\u0001\u0010gR+\u0010\u0092\u0001\u001a\u00030\u0091\u00012\u0007\u0010\b\u001a\u00030\u0091\u00018G@GX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001\"\u0006\b\u0095\u0001\u0010\u0096\u0001R+\u0010\u009a\u0001\u001a\u00030\u0099\u00012\u0007\u0010\b\u001a\u00030\u0099\u00018G@GX\u0086\u000e¢\u0006\u0010\u001a\u0006\b\u009b\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R+\u0010¢\u0001\u001a\u00030¡\u00012\u0007\u0010\b\u001a\u00030¡\u00018G@GX\u0086\u000e¢\u0006\u0010\u001a\u0006\b£\u0001\u0010¤\u0001\"\u0006\b¥\u0001\u0010¦\u0001R\u0015\u0010©\u0001\u001a\u00030ª\u00018G¢\u0006\b\u001a\u0006\b«\u0001\u0010¬\u0001¨\u0006±\u0001"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;", "<init>", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)V", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;", "value", "", "bundleId", "getBundleId", "()Ljava/lang/String;", "setBundleId", "(Ljava/lang/String;)V", "clearBundleId", "", "hasBundleId", "", "bundleVersion", "getBundleVersion", "setBundleVersion", "clearBundleVersion", "hasBundleVersion", "appDebuggable", "getAppDebuggable", "()Z", "setAppDebuggable", "(Z)V", "clearAppDebuggable", "hasAppDebuggable", "rooted", "getRooted", "setRooted", "clearRooted", "hasRooted", "osVersion", "getOsVersion", "setOsVersion", "clearOsVersion", "hasOsVersion", "deviceMake", "getDeviceMake", "setDeviceMake", "clearDeviceMake", "hasDeviceMake", "deviceModel", "getDeviceModel", "setDeviceModel", "clearDeviceModel", "hasDeviceModel", "webviewUa", "getWebviewUa", "setWebviewUa", "clearWebviewUa", "hasWebviewUa", "", "screenDensity", "getScreenDensity", "()I", "setScreenDensity", "(I)V", "clearScreenDensity", "hasScreenDensity", "screenWidth", "getScreenWidth", "setScreenWidth", "clearScreenWidth", "hasScreenWidth", "screenHeight", "getScreenHeight", "setScreenHeight", "clearScreenHeight", "hasScreenHeight", "screenSize", "getScreenSize", "setScreenSize", "clearScreenSize", "hasScreenSize", "stores", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$StoresProxy;", "getStores", "()Lcom/google/protobuf/kotlin/DslList;", "add", "addStores", "plusAssign", "plusAssignStores", "addAll", TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "addAllStores", "plusAssignAllStores", "set", FirebaseAnalytics.Param.INDEX, "setStores", "clear", "clearStores", "", "totalDiskSpace", "getTotalDiskSpace", "()J", "setTotalDiskSpace", "(J)V", "clearTotalDiskSpace", "hasTotalDiskSpace", "totalRamMemory", "getTotalRamMemory", "setTotalRamMemory", "clearTotalRamMemory", "hasTotalRamMemory", "cpuModel", "getCpuModel", "setCpuModel", "clearCpuModel", "hasCpuModel", "cpuCount", "getCpuCount", "setCpuCount", "clearCpuCount", "hasCpuCount", "gpuModel", "getGpuModel", "setGpuModel", "clearGpuModel", "hasGpuModel", "madeWithUnity", "getMadeWithUnity", "setMadeWithUnity", "clearMadeWithUnity", "hasMadeWithUnity", "keyboardLanguages", "Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$KeyboardLanguagesProxy;", "getKeyboardLanguages", "addKeyboardLanguages", "plusAssignKeyboardLanguages", "addAllKeyboardLanguages", "plusAssignAllKeyboardLanguages", "setKeyboardLanguages", "clearKeyboardLanguages", "totalDiskSpaceBytes", "getTotalDiskSpaceBytes", "setTotalDiskSpaceBytes", "clearTotalDiskSpaceBytes", "hasTotalDiskSpaceBytes", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "android", "getAndroid", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;", "setAndroid", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Android;)V", "clearAndroid", "hasAndroid", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "ios", "getIos", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "setIos", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;)V", "clearIos", "hasIos", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web;", "web", "getWeb", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web;", "setWeb", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web;)V", "clearWeb", "hasWeb", "platformSpecificCase", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$PlatformSpecificCase;", "getPlatformSpecificCase", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$PlatformSpecificCase;", "clearPlatformSpecific", "Companion", "StoresProxy", "KeyboardLanguagesProxy", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder _builder;

        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$KeyboardLanguagesProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "<init>", "()V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class KeyboardLanguagesProxy extends DslProxy {
            private KeyboardLanguagesProxy() {
            }
        }

        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$Dsl$StoresProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "<init>", "()V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class StoresProxy extends DslProxy {
            private StoresProxy() {
            }
        }

        private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo _build() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo staticDeviceInfoBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(staticDeviceInfoBuild, "build(...)");
            return staticDeviceInfoBuild;
        }

        public final /* synthetic */ void addAllKeyboardLanguages(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllKeyboardLanguages(values);
        }

        public final /* synthetic */ void addAllStores(DslList dslList, Iterable values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            this._builder.addAllStores(values);
        }

        public final /* synthetic */ void addKeyboardLanguages(DslList dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addKeyboardLanguages(value);
        }

        public final /* synthetic */ void addStores(DslList dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.addStores(value);
        }

        public final void clearAndroid() {
            this._builder.clearAndroid();
        }

        public final void clearAppDebuggable() {
            this._builder.clearAppDebuggable();
        }

        public final void clearBundleId() {
            this._builder.clearBundleId();
        }

        public final void clearBundleVersion() {
            this._builder.clearBundleVersion();
        }

        public final void clearCpuCount() {
            this._builder.clearCpuCount();
        }

        public final void clearCpuModel() {
            this._builder.clearCpuModel();
        }

        public final void clearDeviceMake() {
            this._builder.clearDeviceMake();
        }

        public final void clearDeviceModel() {
            this._builder.clearDeviceModel();
        }

        public final void clearGpuModel() {
            this._builder.clearGpuModel();
        }

        public final void clearIos() {
            this._builder.clearIos();
        }

        public final /* synthetic */ void clearKeyboardLanguages(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearKeyboardLanguages();
        }

        public final void clearMadeWithUnity() {
            this._builder.clearMadeWithUnity();
        }

        public final void clearOsVersion() {
            this._builder.clearOsVersion();
        }

        public final void clearPlatformSpecific() {
            this._builder.clearPlatformSpecific();
        }

        public final void clearRooted() {
            this._builder.clearRooted();
        }

        public final void clearScreenDensity() {
            this._builder.clearScreenDensity();
        }

        public final void clearScreenHeight() {
            this._builder.clearScreenHeight();
        }

        public final void clearScreenSize() {
            this._builder.clearScreenSize();
        }

        public final void clearScreenWidth() {
            this._builder.clearScreenWidth();
        }

        public final /* synthetic */ void clearStores(DslList dslList) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            this._builder.clearStores();
        }

        public final void clearTotalDiskSpace() {
            this._builder.clearTotalDiskSpace();
        }

        public final void clearTotalDiskSpaceBytes() {
            this._builder.clearTotalDiskSpaceBytes();
        }

        public final void clearTotalRamMemory() {
            this._builder.clearTotalRamMemory();
        }

        public final void clearWeb() {
            this._builder.clearWeb();
        }

        public final void clearWebviewUa() {
            this._builder.clearWebviewUa();
        }

        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android getAndroid() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.Android android2 = this._builder.getAndroid();
            Intrinsics.checkNotNullExpressionValue(android2, "getAndroid(...)");
            return android2;
        }

        public final boolean getAppDebuggable() {
            return this._builder.getAppDebuggable();
        }

        public final String getBundleId() {
            String bundleId = this._builder.getBundleId();
            Intrinsics.checkNotNullExpressionValue(bundleId, "getBundleId(...)");
            return bundleId;
        }

        public final String getBundleVersion() {
            String bundleVersion = this._builder.getBundleVersion();
            Intrinsics.checkNotNullExpressionValue(bundleVersion, "getBundleVersion(...)");
            return bundleVersion;
        }

        public final long getCpuCount() {
            return this._builder.getCpuCount();
        }

        public final String getCpuModel() {
            String cpuModel = this._builder.getCpuModel();
            Intrinsics.checkNotNullExpressionValue(cpuModel, "getCpuModel(...)");
            return cpuModel;
        }

        public final String getDeviceMake() {
            String deviceMake = this._builder.getDeviceMake();
            Intrinsics.checkNotNullExpressionValue(deviceMake, "getDeviceMake(...)");
            return deviceMake;
        }

        public final String getDeviceModel() {
            String deviceModel = this._builder.getDeviceModel();
            Intrinsics.checkNotNullExpressionValue(deviceModel, "getDeviceModel(...)");
            return deviceModel;
        }

        public final String getGpuModel() {
            String gpuModel = this._builder.getGpuModel();
            Intrinsics.checkNotNullExpressionValue(gpuModel, "getGpuModel(...)");
            return gpuModel;
        }

        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios getIos() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios ios = this._builder.getIos();
            Intrinsics.checkNotNullExpressionValue(ios, "getIos(...)");
            return ios;
        }

        public final DslList<String, KeyboardLanguagesProxy> getKeyboardLanguages() {
            List<String> keyboardLanguagesList = this._builder.getKeyboardLanguagesList();
            Intrinsics.checkNotNullExpressionValue(keyboardLanguagesList, "getKeyboardLanguagesList(...)");
            return new DslList<>(keyboardLanguagesList);
        }

        public final boolean getMadeWithUnity() {
            return this._builder.getMadeWithUnity();
        }

        public final String getOsVersion() {
            String osVersion = this._builder.getOsVersion();
            Intrinsics.checkNotNullExpressionValue(osVersion, "getOsVersion(...)");
            return osVersion;
        }

        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.PlatformSpecificCase getPlatformSpecificCase() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.PlatformSpecificCase platformSpecificCase = this._builder.getPlatformSpecificCase();
            Intrinsics.checkNotNullExpressionValue(platformSpecificCase, "getPlatformSpecificCase(...)");
            return platformSpecificCase;
        }

        public final boolean getRooted() {
            return this._builder.getRooted();
        }

        public final int getScreenDensity() {
            return this._builder.getScreenDensity();
        }

        public final int getScreenHeight() {
            return this._builder.getScreenHeight();
        }

        public final int getScreenSize() {
            return this._builder.getScreenSize();
        }

        public final int getScreenWidth() {
            return this._builder.getScreenWidth();
        }

        public final DslList<String, StoresProxy> getStores() {
            List<String> storesList = this._builder.getStoresList();
            Intrinsics.checkNotNullExpressionValue(storesList, "getStoresList(...)");
            return new DslList<>(storesList);
        }

        public final long getTotalDiskSpace() {
            return this._builder.getTotalDiskSpace();
        }

        public final long getTotalDiskSpaceBytes() {
            return this._builder.getTotalDiskSpaceBytes();
        }

        public final long getTotalRamMemory() {
            return this._builder.getTotalRamMemory();
        }

        public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Web getWeb() {
            StaticDeviceInfoOuterClass.StaticDeviceInfo.Web web = this._builder.getWeb();
            Intrinsics.checkNotNullExpressionValue(web, "getWeb(...)");
            return web;
        }

        public final String getWebviewUa() {
            String webviewUa = this._builder.getWebviewUa();
            Intrinsics.checkNotNullExpressionValue(webviewUa, "getWebviewUa(...)");
            return webviewUa;
        }

        public final boolean hasAndroid() {
            return this._builder.hasAndroid();
        }

        public final boolean hasAppDebuggable() {
            return this._builder.hasAppDebuggable();
        }

        public final boolean hasBundleId() {
            return this._builder.hasBundleId();
        }

        public final boolean hasBundleVersion() {
            return this._builder.hasBundleVersion();
        }

        public final boolean hasCpuCount() {
            return this._builder.hasCpuCount();
        }

        public final boolean hasCpuModel() {
            return this._builder.hasCpuModel();
        }

        public final boolean hasDeviceMake() {
            return this._builder.hasDeviceMake();
        }

        public final boolean hasDeviceModel() {
            return this._builder.hasDeviceModel();
        }

        public final boolean hasGpuModel() {
            return this._builder.hasGpuModel();
        }

        public final boolean hasIos() {
            return this._builder.hasIos();
        }

        public final boolean hasMadeWithUnity() {
            return this._builder.hasMadeWithUnity();
        }

        public final boolean hasOsVersion() {
            return this._builder.hasOsVersion();
        }

        public final boolean hasRooted() {
            return this._builder.hasRooted();
        }

        public final boolean hasScreenDensity() {
            return this._builder.hasScreenDensity();
        }

        public final boolean hasScreenHeight() {
            return this._builder.hasScreenHeight();
        }

        public final boolean hasScreenSize() {
            return this._builder.hasScreenSize();
        }

        public final boolean hasScreenWidth() {
            return this._builder.hasScreenWidth();
        }

        public final boolean hasTotalDiskSpace() {
            return this._builder.hasTotalDiskSpace();
        }

        public final boolean hasTotalDiskSpaceBytes() {
            return this._builder.hasTotalDiskSpaceBytes();
        }

        public final boolean hasTotalRamMemory() {
            return this._builder.hasTotalRamMemory();
        }

        public final boolean hasWeb() {
            return this._builder.hasWeb();
        }

        public final boolean hasWebviewUa() {
            return this._builder.hasWebviewUa();
        }

        public final /* synthetic */ void plusAssignAllKeyboardLanguages(DslList<String, KeyboardLanguagesProxy> dslList, Iterable<String> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllKeyboardLanguages(dslList, values);
        }

        public final /* synthetic */ void plusAssignAllStores(DslList<String, StoresProxy> dslList, Iterable<String> values) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(values, "values");
            addAllStores(dslList, values);
        }

        public final /* synthetic */ void plusAssignKeyboardLanguages(DslList<String, KeyboardLanguagesProxy> dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addKeyboardLanguages(dslList, value);
        }

        public final /* synthetic */ void plusAssignStores(DslList<String, StoresProxy> dslList, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            addStores(dslList, value);
        }

        public final void setAndroid(StaticDeviceInfoOuterClass.StaticDeviceInfo.Android value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAndroid(value);
        }

        public final void setAppDebuggable(boolean z) {
            this._builder.setAppDebuggable(z);
        }

        public final void setBundleId(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBundleId(value);
        }

        public final void setBundleVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setBundleVersion(value);
        }

        public final void setCpuCount(long j) {
            this._builder.setCpuCount(j);
        }

        public final void setCpuModel(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setCpuModel(value);
        }

        public final void setDeviceMake(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceMake(value);
        }

        public final void setDeviceModel(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setDeviceModel(value);
        }

        public final void setGpuModel(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setGpuModel(value);
        }

        public final void setIos(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIos(value);
        }

        public final /* synthetic */ void setKeyboardLanguages(DslList dslList, int i, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setKeyboardLanguages(i, value);
        }

        public final void setMadeWithUnity(boolean z) {
            this._builder.setMadeWithUnity(z);
        }

        public final void setOsVersion(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setOsVersion(value);
        }

        public final void setRooted(boolean z) {
            this._builder.setRooted(z);
        }

        public final void setScreenDensity(int i) {
            this._builder.setScreenDensity(i);
        }

        public final void setScreenHeight(int i) {
            this._builder.setScreenHeight(i);
        }

        public final void setScreenSize(int i) {
            this._builder.setScreenSize(i);
        }

        public final void setScreenWidth(int i) {
            this._builder.setScreenWidth(i);
        }

        public final /* synthetic */ void setStores(DslList dslList, int i, String value) {
            Intrinsics.checkNotNullParameter(dslList, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setStores(i, value);
        }

        public final void setTotalDiskSpace(long j) {
            this._builder.setTotalDiskSpace(j);
        }

        public final void setTotalDiskSpaceBytes(long j) {
            this._builder.setTotalDiskSpaceBytes(j);
        }

        public final void setTotalRamMemory(long j) {
            this._builder.setTotalRamMemory(j);
        }

        public final void setWeb(StaticDeviceInfoOuterClass.StaticDeviceInfo.Web value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setWeb(value);
        }

        public final void setWebviewUa(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setWebviewUa(value);
        }
    }

    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IosKt {
        public static final IosKt INSTANCE = new IosKt();

        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001c\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0012\b\u0007\u0018\u0000 f2\u00020\u0001:\u0002fgB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0010J\u0006\u0010\u0019\u001a\u00020\u0012J\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0012J%\u0010'\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#2\u0006\u0010\b\u001a\u00020\u001aH\u0007¢\u0006\u0002\b(J&\u0010)\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#2\u0006\u0010\b\u001a\u00020\u001aH\u0087\n¢\u0006\u0002\b*J+\u0010+\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001a0-H\u0007¢\u0006\u0002\b.J,\u0010)\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u001a0-H\u0087\n¢\u0006\u0002\b/J.\u00100\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#2\u0006\u00101\u001a\u0002022\u0006\u0010\b\u001a\u00020\u001aH\u0087\u0002¢\u0006\u0002\b3J\u001d\u00104\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#H\u0007¢\u0006\u0002\b5J\u0006\u0010;\u001a\u00020\u0010J\u0006\u0010<\u001a\u00020\u0012J\u0006\u0010@\u001a\u00020\u0010J\u0006\u0010A\u001a\u00020\u0012J\u0006\u0010E\u001a\u00020\u0010J\u0006\u0010F\u001a\u00020\u0012J\u0006\u0010J\u001a\u00020\u0010J\u0006\u0010K\u001a\u00020\u0012J\u0006\u0010O\u001a\u00020\u0010J\u0006\u0010P\u001a\u00020\u0012J\u0006\u0010T\u001a\u00020\u0010J\u0006\u0010U\u001a\u00020\u0012J\u0006\u0010_\u001a\u00020\u0010J\u0006\u0010`\u001a\u00020\u0012J\u0006\u0010d\u001a\u00020\u0010J\u0006\u0010e\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R$\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u001a8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001d\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020$0#8F¢\u0006\u0006\u001a\u0004\b%\u0010&R$\u00106\u001a\u0002022\u0006\u0010\b\u001a\u0002028G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R$\u0010=\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b>\u0010\u0015\"\u0004\b?\u0010\u0017R$\u0010B\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u001a8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bC\u0010\u001d\"\u0004\bD\u0010\u001fR$\u0010G\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u001a8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bH\u0010\u001d\"\u0004\bI\u0010\u001fR$\u0010L\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u001a8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bM\u0010\u001d\"\u0004\bN\u0010\u001fR$\u0010Q\u001a\u00020\u001a2\u0006\u0010\b\u001a\u00020\u001a8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bR\u0010\u001d\"\u0004\bS\u0010\u001fR$\u0010W\u001a\u00020V2\u0006\u0010\b\u001a\u00020V8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R$\u0010\\\u001a\u0002022\u0006\u0010\b\u001a\u0002028G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b]\u00108\"\u0004\b^\u0010:R$\u0010a\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\bb\u0010\u0015\"\u0004\bc\u0010\u0017¨\u0006h"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;", "<init>", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;)V", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios;", "value", "", "systemBootTime", "getSystemBootTime", "()J", "setSystemBootTime", "(J)V", "clearSystemBootTime", "", "hasSystemBootTime", "", "simulator", "getSimulator", "()Z", "setSimulator", "(Z)V", "clearSimulator", "hasSimulator", "", "builtSdkVersion", "getBuiltSdkVersion", "()Ljava/lang/String;", "setBuiltSdkVersion", "(Ljava/lang/String;)V", "clearBuiltSdkVersion", "hasBuiltSdkVersion", "skadnetworkId", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;", "getSkadnetworkId", "()Lcom/google/protobuf/kotlin/DslList;", "add", "addSkadnetworkId", "plusAssign", "plusAssignSkadnetworkId", "addAll", TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "addAllSkadnetworkId", "plusAssignAllSkadnetworkId", "set", FirebaseAnalytics.Param.INDEX, "", "setSkadnetworkId", "clear", "clearSkadnetworkId", "screenScale", "getScreenScale", "()I", "setScreenScale", "(I)V", "clearScreenScale", "hasScreenScale", "canMakePayments", "getCanMakePayments", "setCanMakePayments", "clearCanMakePayments", "hasCanMakePayments", "xcodeVersion", "getXcodeVersion", "setXcodeVersion", "clearXcodeVersion", "hasXcodeVersion", "xcodeBuildVersion", "getXcodeBuildVersion", "setXcodeBuildVersion", "clearXcodeBuildVersion", "hasXcodeBuildVersion", "xcodeSdkBuildVersion", "getXcodeSdkBuildVersion", "setXcodeSdkBuildVersion", "clearXcodeSdkBuildVersion", "hasXcodeSdkBuildVersion", "bundleVersionFull", "getBundleVersionFull", "setBundleVersionFull", "clearBundleVersionFull", "hasBundleVersionFull", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$UserInterfaceIdiom;", "userInterfaceIdiom", "getUserInterfaceIdiom", "()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$UserInterfaceIdiom;", "setUserInterfaceIdiom", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$UserInterfaceIdiom;)V", "userInterfaceIdiomValue", "getUserInterfaceIdiomValue", "setUserInterfaceIdiomValue", "clearUserInterfaceIdiom", "hasUserInterfaceIdiom", "adAttributionKitSupported", "getAdAttributionKitSupported", "setAdAttributionKitSupported", "clearAdAttributionKitSupported", "hasAdAttributionKitSupported", "Companion", "SkadnetworkIdProxy", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dsl {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder _builder;

            /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Ios$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$IosKt$Dsl$SkadnetworkIdProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "<init>", "()V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class SkadnetworkIdProxy extends DslProxy {
                private SkadnetworkIdProxy() {
                }
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder) {
                this._builder = builder;
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios _build() {
                StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios iosBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(iosBuild, "build(...)");
                return iosBuild;
            }

            public final /* synthetic */ void addAllSkadnetworkId(DslList dslList, Iterable values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                this._builder.addAllSkadnetworkId(values);
            }

            public final /* synthetic */ void addSkadnetworkId(DslList dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.addSkadnetworkId(value);
            }

            public final void clearAdAttributionKitSupported() {
                this._builder.clearAdAttributionKitSupported();
            }

            public final void clearBuiltSdkVersion() {
                this._builder.clearBuiltSdkVersion();
            }

            public final void clearBundleVersionFull() {
                this._builder.clearBundleVersionFull();
            }

            public final void clearCanMakePayments() {
                this._builder.clearCanMakePayments();
            }

            public final void clearScreenScale() {
                this._builder.clearScreenScale();
            }

            public final void clearSimulator() {
                this._builder.clearSimulator();
            }

            public final /* synthetic */ void clearSkadnetworkId(DslList dslList) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                this._builder.clearSkadnetworkId();
            }

            public final void clearSystemBootTime() {
                this._builder.clearSystemBootTime();
            }

            public final void clearUserInterfaceIdiom() {
                this._builder.clearUserInterfaceIdiom();
            }

            public final void clearXcodeBuildVersion() {
                this._builder.clearXcodeBuildVersion();
            }

            public final void clearXcodeSdkBuildVersion() {
                this._builder.clearXcodeSdkBuildVersion();
            }

            public final void clearXcodeVersion() {
                this._builder.clearXcodeVersion();
            }

            public final boolean getAdAttributionKitSupported() {
                return this._builder.getAdAttributionKitSupported();
            }

            public final String getBuiltSdkVersion() {
                String builtSdkVersion = this._builder.getBuiltSdkVersion();
                Intrinsics.checkNotNullExpressionValue(builtSdkVersion, "getBuiltSdkVersion(...)");
                return builtSdkVersion;
            }

            public final String getBundleVersionFull() {
                String bundleVersionFull = this._builder.getBundleVersionFull();
                Intrinsics.checkNotNullExpressionValue(bundleVersionFull, "getBundleVersionFull(...)");
                return bundleVersionFull;
            }

            public final boolean getCanMakePayments() {
                return this._builder.getCanMakePayments();
            }

            public final int getScreenScale() {
                return this._builder.getScreenScale();
            }

            public final boolean getSimulator() {
                return this._builder.getSimulator();
            }

            public final DslList<String, SkadnetworkIdProxy> getSkadnetworkId() {
                List<String> skadnetworkIdList = this._builder.getSkadnetworkIdList();
                Intrinsics.checkNotNullExpressionValue(skadnetworkIdList, "getSkadnetworkIdList(...)");
                return new DslList<>(skadnetworkIdList);
            }

            public final long getSystemBootTime() {
                return this._builder.getSystemBootTime();
            }

            public final StaticDeviceInfoOuterClass.StaticDeviceInfo.UserInterfaceIdiom getUserInterfaceIdiom() {
                StaticDeviceInfoOuterClass.StaticDeviceInfo.UserInterfaceIdiom userInterfaceIdiom = this._builder.getUserInterfaceIdiom();
                Intrinsics.checkNotNullExpressionValue(userInterfaceIdiom, "getUserInterfaceIdiom(...)");
                return userInterfaceIdiom;
            }

            public final int getUserInterfaceIdiomValue() {
                return this._builder.getUserInterfaceIdiomValue();
            }

            public final String getXcodeBuildVersion() {
                String xcodeBuildVersion = this._builder.getXcodeBuildVersion();
                Intrinsics.checkNotNullExpressionValue(xcodeBuildVersion, "getXcodeBuildVersion(...)");
                return xcodeBuildVersion;
            }

            public final String getXcodeSdkBuildVersion() {
                String xcodeSdkBuildVersion = this._builder.getXcodeSdkBuildVersion();
                Intrinsics.checkNotNullExpressionValue(xcodeSdkBuildVersion, "getXcodeSdkBuildVersion(...)");
                return xcodeSdkBuildVersion;
            }

            public final String getXcodeVersion() {
                String xcodeVersion = this._builder.getXcodeVersion();
                Intrinsics.checkNotNullExpressionValue(xcodeVersion, "getXcodeVersion(...)");
                return xcodeVersion;
            }

            public final boolean hasAdAttributionKitSupported() {
                return this._builder.hasAdAttributionKitSupported();
            }

            public final boolean hasBuiltSdkVersion() {
                return this._builder.hasBuiltSdkVersion();
            }

            public final boolean hasBundleVersionFull() {
                return this._builder.hasBundleVersionFull();
            }

            public final boolean hasCanMakePayments() {
                return this._builder.hasCanMakePayments();
            }

            public final boolean hasScreenScale() {
                return this._builder.hasScreenScale();
            }

            public final boolean hasSimulator() {
                return this._builder.hasSimulator();
            }

            public final boolean hasSystemBootTime() {
                return this._builder.hasSystemBootTime();
            }

            public final boolean hasUserInterfaceIdiom() {
                return this._builder.hasUserInterfaceIdiom();
            }

            public final boolean hasXcodeBuildVersion() {
                return this._builder.hasXcodeBuildVersion();
            }

            public final boolean hasXcodeSdkBuildVersion() {
                return this._builder.hasXcodeSdkBuildVersion();
            }

            public final boolean hasXcodeVersion() {
                return this._builder.hasXcodeVersion();
            }

            public final /* synthetic */ void plusAssignAllSkadnetworkId(DslList<String, SkadnetworkIdProxy> dslList, Iterable<String> values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                addAllSkadnetworkId(dslList, values);
            }

            public final /* synthetic */ void plusAssignSkadnetworkId(DslList<String, SkadnetworkIdProxy> dslList, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                addSkadnetworkId(dslList, value);
            }

            public final void setAdAttributionKitSupported(boolean z) {
                this._builder.setAdAttributionKitSupported(z);
            }

            public final void setBuiltSdkVersion(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBuiltSdkVersion(value);
            }

            public final void setBundleVersionFull(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBundleVersionFull(value);
            }

            public final void setCanMakePayments(boolean z) {
                this._builder.setCanMakePayments(z);
            }

            public final void setScreenScale(int i) {
                this._builder.setScreenScale(i);
            }

            public final void setSimulator(boolean z) {
                this._builder.setSimulator(z);
            }

            public final /* synthetic */ void setSkadnetworkId(DslList dslList, int i, String value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setSkadnetworkId(i, value);
            }

            public final void setSystemBootTime(long j) {
                this._builder.setSystemBootTime(j);
            }

            public final void setUserInterfaceIdiom(StaticDeviceInfoOuterClass.StaticDeviceInfo.UserInterfaceIdiom value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setUserInterfaceIdiom(value);
            }

            public final void setUserInterfaceIdiomValue(int i) {
                this._builder.setUserInterfaceIdiomValue(i);
            }

            public final void setXcodeBuildVersion(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setXcodeBuildVersion(value);
            }

            public final void setXcodeSdkBuildVersion(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setXcodeSdkBuildVersion(value);
            }

            public final void setXcodeVersion(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setXcodeVersion(value);
            }
        }

        private IosKt() {
        }
    }

    /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$WebKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class WebKt {
        public static final WebKt INSTANCE = new WebKt();

        /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0012J\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0010J\u0006\u0010#\u001a\u00020\u0012J\u0006\u0010'\u001a\u00020\u0010J\u0006\u0010(\u001a\u00020\u0012J\u0006\u0010,\u001a\u00020\u0010J\u0006\u0010-\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0013\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\f\"\u0004\b\u0015\u0010\u000eR$\u0010\u0018\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\f\"\u0004\b\u001a\u0010\u000eR$\u0010\u001d\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u00128G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R$\u0010$\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010\f\"\u0004\b&\u0010\u000eR$\u0010)\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b*\u0010\f\"\u0004\b+\u0010\u000e¨\u0006/"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$WebKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web$Builder;", "<init>", "(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web$Builder;)V", "_build", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web;", "value", "", "browser", "getBrowser", "()Ljava/lang/String;", "setBrowser", "(Ljava/lang/String;)V", "clearBrowser", "", "hasBrowser", "", "browserVersion", "getBrowserVersion", "setBrowserVersion", "clearBrowserVersion", "hasBrowserVersion", "userAgentDataPlatform", "getUserAgentDataPlatform", "setUserAgentDataPlatform", "clearUserAgentDataPlatform", "hasUserAgentDataPlatform", "userAgentDataMobile", "getUserAgentDataMobile", "()Z", "setUserAgentDataMobile", "(Z)V", "clearUserAgentDataMobile", "hasUserAgentDataMobile", "webglVendor", "getWebglVendor", "setWebglVendor", "clearWebglVendor", "hasWebglVendor", "webglRenderer", "getWebglRenderer", "setWebglRenderer", "clearWebglRenderer", "hasWebglRenderer", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dsl {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final StaticDeviceInfoOuterClass.StaticDeviceInfo.Web.Builder _builder;

            /* JADX INFO: compiled from: StaticDeviceInfoKt.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/StaticDeviceInfoKt$WebKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/StaticDeviceInfoKt$WebKt$Dsl;", "builder", "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Web$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(StaticDeviceInfoOuterClass.StaticDeviceInfo.Web.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            private Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Web.Builder builder) {
                this._builder = builder;
            }

            public /* synthetic */ Dsl(StaticDeviceInfoOuterClass.StaticDeviceInfo.Web.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ StaticDeviceInfoOuterClass.StaticDeviceInfo.Web _build() {
                StaticDeviceInfoOuterClass.StaticDeviceInfo.Web webBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(webBuild, "build(...)");
                return webBuild;
            }

            public final void clearBrowser() {
                this._builder.clearBrowser();
            }

            public final void clearBrowserVersion() {
                this._builder.clearBrowserVersion();
            }

            public final void clearUserAgentDataMobile() {
                this._builder.clearUserAgentDataMobile();
            }

            public final void clearUserAgentDataPlatform() {
                this._builder.clearUserAgentDataPlatform();
            }

            public final void clearWebglRenderer() {
                this._builder.clearWebglRenderer();
            }

            public final void clearWebglVendor() {
                this._builder.clearWebglVendor();
            }

            public final String getBrowser() {
                String browser = this._builder.getBrowser();
                Intrinsics.checkNotNullExpressionValue(browser, "getBrowser(...)");
                return browser;
            }

            public final String getBrowserVersion() {
                String browserVersion = this._builder.getBrowserVersion();
                Intrinsics.checkNotNullExpressionValue(browserVersion, "getBrowserVersion(...)");
                return browserVersion;
            }

            public final boolean getUserAgentDataMobile() {
                return this._builder.getUserAgentDataMobile();
            }

            public final String getUserAgentDataPlatform() {
                String userAgentDataPlatform = this._builder.getUserAgentDataPlatform();
                Intrinsics.checkNotNullExpressionValue(userAgentDataPlatform, "getUserAgentDataPlatform(...)");
                return userAgentDataPlatform;
            }

            public final String getWebglRenderer() {
                String webglRenderer = this._builder.getWebglRenderer();
                Intrinsics.checkNotNullExpressionValue(webglRenderer, "getWebglRenderer(...)");
                return webglRenderer;
            }

            public final String getWebglVendor() {
                String webglVendor = this._builder.getWebglVendor();
                Intrinsics.checkNotNullExpressionValue(webglVendor, "getWebglVendor(...)");
                return webglVendor;
            }

            public final boolean hasBrowser() {
                return this._builder.hasBrowser();
            }

            public final boolean hasBrowserVersion() {
                return this._builder.hasBrowserVersion();
            }

            public final boolean hasUserAgentDataMobile() {
                return this._builder.hasUserAgentDataMobile();
            }

            public final boolean hasUserAgentDataPlatform() {
                return this._builder.hasUserAgentDataPlatform();
            }

            public final boolean hasWebglRenderer() {
                return this._builder.hasWebglRenderer();
            }

            public final boolean hasWebglVendor() {
                return this._builder.hasWebglVendor();
            }

            public final void setBrowser(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBrowser(value);
            }

            public final void setBrowserVersion(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setBrowserVersion(value);
            }

            public final void setUserAgentDataMobile(boolean z) {
                this._builder.setUserAgentDataMobile(z);
            }

            public final void setUserAgentDataPlatform(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setUserAgentDataPlatform(value);
            }

            public final void setWebglRenderer(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setWebglRenderer(value);
            }

            public final void setWebglVendor(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setWebglVendor(value);
            }
        }

        private WebKt() {
        }
    }

    private StaticDeviceInfoKt() {
    }

    /* JADX INFO: renamed from: -initializeandroid, reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Android m2996initializeandroid(Function1<? super AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AndroidKt.Dsl.Companion companion = AndroidKt.Dsl.INSTANCE;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.Builder builderNewBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AndroidKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: renamed from: -initializeios, reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios m2997initializeios(Function1<? super IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        IosKt.Dsl.Companion companion = IosKt.Dsl.INSTANCE;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.Builder builderNewBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.Ios.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        IosKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: renamed from: -initializeweb, reason: not valid java name */
    public final StaticDeviceInfoOuterClass.StaticDeviceInfo.Web m2998initializeweb(Function1<? super WebKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        WebKt.Dsl.Companion companion = WebKt.Dsl.INSTANCE;
        StaticDeviceInfoOuterClass.StaticDeviceInfo.Web.Builder builderNewBuilder = StaticDeviceInfoOuterClass.StaticDeviceInfo.Web.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        WebKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
