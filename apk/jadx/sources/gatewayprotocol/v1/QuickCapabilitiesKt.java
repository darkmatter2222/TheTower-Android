package gatewayprotocol.v1;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.protobuf.kotlin.DslList;
import com.google.protobuf.kotlin.DslProxy;
import com.tapjoy.TJAdUnitConstants;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000bJ*\u0010\f\u001a\u00020\r2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t0\u0007¢\u0006\u0002\b\nH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0013"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt;", "", "<init>", "()V", "android", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "block", "Lkotlin/Function1;", "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializeandroid", "ios", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;", "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;", "-initializeios", "Dsl", "AndroidKt", "IosKt", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QuickCapabilitiesKt {
    public static final QuickCapabilitiesKt INSTANCE = new QuickCapabilitiesKt();

    /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AndroidKt {
        public static final AndroidKt INSTANCE = new AndroidKt();

        /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
        @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u001c\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001f B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J%\u0010\u000e\u001a\u00020\u000f*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u0010\u001a\u00020\nH\u0007¢\u0006\u0002\b\u0011J&\u0010\u0012\u001a\u00020\u000f*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u0010\u001a\u00020\nH\u0087\n¢\u0006\u0002\b\u0013J+\u0010\u0014\u001a\u00020\u000f*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0016H\u0007¢\u0006\u0002\b\u0017J,\u0010\u0012\u001a\u00020\u000f*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0016H\u0087\n¢\u0006\u0002\b\u0018J.\u0010\u0019\u001a\u00020\u000f*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0010\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001cJ\u001d\u0010\u001d\u001a\u00020\u000f*\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tH\u0007¢\u0006\u0002\b\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t8F¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006!"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;", "<init>", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;)V", "_build", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "capabilities", "Lcom/google/protobuf/kotlin/DslList;", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;", "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$CapabilitiesProxy;", "getCapabilities", "()Lcom/google/protobuf/kotlin/DslList;", "add", "", "value", "addCapabilities", "plusAssign", "plusAssignCapabilities", "addAll", TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "addAllCapabilities", "plusAssignAllCapabilities", "set", FirebaseAnalytics.Param.INDEX, "", "setCapabilities", "clear", "clearCapabilities", "Companion", "CapabilitiesProxy", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dsl {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final InitializationRequestOuterClass.QuickCapabilities.Android.Builder _builder;

            /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$CapabilitiesProxy;", "Lcom/google/protobuf/kotlin/DslProxy;", "<init>", "()V", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class CapabilitiesProxy extends DslProxy {
                private CapabilitiesProxy() {
                }
            }

            /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;", "builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.QuickCapabilities.Android.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            private Dsl(InitializationRequestOuterClass.QuickCapabilities.Android.Builder builder) {
                this._builder = builder;
            }

            public /* synthetic */ Dsl(InitializationRequestOuterClass.QuickCapabilities.Android.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ InitializationRequestOuterClass.QuickCapabilities.Android _build() {
                InitializationRequestOuterClass.QuickCapabilities.Android androidBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(androidBuild, "build(...)");
                return androidBuild;
            }

            public final /* synthetic */ void addAllCapabilities(DslList dslList, Iterable values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                this._builder.addAllCapabilities(values);
            }

            public final /* synthetic */ void addCapabilities(DslList dslList, InitializationRequestOuterClass.QuickCapabilities.Android.Capability value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.addCapabilities(value);
            }

            public final /* synthetic */ void clearCapabilities(DslList dslList) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                this._builder.clearCapabilities();
            }

            public final /* synthetic */ DslList getCapabilities() {
                List<InitializationRequestOuterClass.QuickCapabilities.Android.Capability> capabilitiesList = this._builder.getCapabilitiesList();
                Intrinsics.checkNotNullExpressionValue(capabilitiesList, "getCapabilitiesList(...)");
                return new DslList(capabilitiesList);
            }

            public final /* synthetic */ void plusAssignAllCapabilities(DslList<InitializationRequestOuterClass.QuickCapabilities.Android.Capability, CapabilitiesProxy> dslList, Iterable<? extends InitializationRequestOuterClass.QuickCapabilities.Android.Capability> values) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                addAllCapabilities(dslList, values);
            }

            public final /* synthetic */ void plusAssignCapabilities(DslList<InitializationRequestOuterClass.QuickCapabilities.Android.Capability, CapabilitiesProxy> dslList, InitializationRequestOuterClass.QuickCapabilities.Android.Capability value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                addCapabilities(dslList, value);
            }

            public final /* synthetic */ void setCapabilities(DslList dslList, int i, InitializationRequestOuterClass.QuickCapabilities.Android.Capability value) {
                Intrinsics.checkNotNullParameter(dslList, "<this>");
                Intrinsics.checkNotNullParameter(value, "value");
                this._builder.setCapabilities(i, value);
            }
        }

        private AndroidKt() {
        }
    }

    /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u00138G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u001c8G¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;", "<init>", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)V", "_build", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;", "value", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "android", "getAndroid", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;", "setAndroid", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V", "clearAndroid", "", "hasAndroid", "", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;", "ios", "getIos", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;", "setIos", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V", "clearIos", "hasIos", "platformSpecificCase", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;", "getPlatformSpecificCase", "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;", "clearPlatformSpecific", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final InitializationRequestOuterClass.QuickCapabilities.Builder _builder;

        /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;", "builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.QuickCapabilities.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        private Dsl(InitializationRequestOuterClass.QuickCapabilities.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(InitializationRequestOuterClass.QuickCapabilities.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ InitializationRequestOuterClass.QuickCapabilities _build() {
            InitializationRequestOuterClass.QuickCapabilities quickCapabilitiesBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(quickCapabilitiesBuild, "build(...)");
            return quickCapabilitiesBuild;
        }

        public final void clearAndroid() {
            this._builder.clearAndroid();
        }

        public final void clearIos() {
            this._builder.clearIos();
        }

        public final void clearPlatformSpecific() {
            this._builder.clearPlatformSpecific();
        }

        public final InitializationRequestOuterClass.QuickCapabilities.Android getAndroid() {
            InitializationRequestOuterClass.QuickCapabilities.Android android2 = this._builder.getAndroid();
            Intrinsics.checkNotNullExpressionValue(android2, "getAndroid(...)");
            return android2;
        }

        public final InitializationRequestOuterClass.QuickCapabilities.Ios getIos() {
            InitializationRequestOuterClass.QuickCapabilities.Ios ios = this._builder.getIos();
            Intrinsics.checkNotNullExpressionValue(ios, "getIos(...)");
            return ios;
        }

        public final InitializationRequestOuterClass.QuickCapabilities.PlatformSpecificCase getPlatformSpecificCase() {
            InitializationRequestOuterClass.QuickCapabilities.PlatformSpecificCase platformSpecificCase = this._builder.getPlatformSpecificCase();
            Intrinsics.checkNotNullExpressionValue(platformSpecificCase, "getPlatformSpecificCase(...)");
            return platformSpecificCase;
        }

        public final boolean hasAndroid() {
            return this._builder.hasAndroid();
        }

        public final boolean hasIos() {
            return this._builder.hasIos();
        }

        public final void setAndroid(InitializationRequestOuterClass.QuickCapabilities.Android value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setAndroid(value);
        }

        public final void setIos(InitializationRequestOuterClass.QuickCapabilities.Ios value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setIos(value);
        }
    }

    /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IosKt {
        public static final IosKt INSTANCE = new IosKt();

        /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;", "<init>", "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)V", "_build", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Dsl {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private final InitializationRequestOuterClass.QuickCapabilities.Ios.Builder _builder;

            /* JADX INFO: compiled from: QuickCapabilitiesKt.kt */
            @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;", "builder", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final /* synthetic */ Dsl _create(InitializationRequestOuterClass.QuickCapabilities.Ios.Builder builder) {
                    Intrinsics.checkNotNullParameter(builder, "builder");
                    return new Dsl(builder, null);
                }
            }

            private Dsl(InitializationRequestOuterClass.QuickCapabilities.Ios.Builder builder) {
                this._builder = builder;
            }

            public /* synthetic */ Dsl(InitializationRequestOuterClass.QuickCapabilities.Ios.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
                this(builder);
            }

            public final /* synthetic */ InitializationRequestOuterClass.QuickCapabilities.Ios _build() {
                InitializationRequestOuterClass.QuickCapabilities.Ios iosBuild = this._builder.build();
                Intrinsics.checkNotNullExpressionValue(iosBuild, "build(...)");
                return iosBuild;
            }
        }

        private IosKt() {
        }
    }

    private QuickCapabilitiesKt() {
    }

    /* JADX INFO: renamed from: -initializeandroid, reason: not valid java name */
    public final InitializationRequestOuterClass.QuickCapabilities.Android m2986initializeandroid(Function1<? super AndroidKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AndroidKt.Dsl.Companion companion = AndroidKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Android.Builder builderNewBuilder = InitializationRequestOuterClass.QuickCapabilities.Android.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        AndroidKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }

    /* JADX INFO: renamed from: -initializeios, reason: not valid java name */
    public final InitializationRequestOuterClass.QuickCapabilities.Ios m2987initializeios(Function1<? super IosKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        IosKt.Dsl.Companion companion = IosKt.Dsl.INSTANCE;
        InitializationRequestOuterClass.QuickCapabilities.Ios.Builder builderNewBuilder = InitializationRequestOuterClass.QuickCapabilities.Ios.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        IosKt.Dsl dsl_create = companion._create(builderNewBuilder);
        block.invoke(dsl_create);
        return dsl_create._build();
    }
}
