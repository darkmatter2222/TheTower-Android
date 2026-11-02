package gatewayprotocol.v1;

import com.google.protobuf.ByteString;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModuleKt.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lgatewayprotocol/v1/ModuleKt;", "", "<init>", "()V", "Dsl", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ModuleKt {
    public static final ModuleKt INSTANCE = new ModuleKt();

    /* JADX INFO: compiled from: ModuleKt.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u00118G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, d2 = {"Lgatewayprotocol/v1/ModuleKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;", "<init>", "(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)V", "_build", "Lgatewayprotocol/v1/ModuleOuterClass$Module;", "value", "", "name", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "clearName", "", "Lcom/google/protobuf/ByteString;", "config", "getConfig", "()Lcom/google/protobuf/ByteString;", "setConfig", "(Lcom/google/protobuf/ByteString;)V", "clearConfig", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Dsl {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final ModuleOuterClass.Module.Builder _builder;

        /* JADX INFO: compiled from: ModuleKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0001¨\u0006\b"}, d2 = {"Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;", "", "<init>", "()V", "_create", "Lgatewayprotocol/v1/ModuleKt$Dsl;", "builder", "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final /* synthetic */ Dsl _create(ModuleOuterClass.Module.Builder builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new Dsl(builder, null);
            }
        }

        private Dsl(ModuleOuterClass.Module.Builder builder) {
            this._builder = builder;
        }

        public /* synthetic */ Dsl(ModuleOuterClass.Module.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        public final /* synthetic */ ModuleOuterClass.Module _build() {
            ModuleOuterClass.Module moduleBuild = this._builder.build();
            Intrinsics.checkNotNullExpressionValue(moduleBuild, "build(...)");
            return moduleBuild;
        }

        public final void clearConfig() {
            this._builder.clearConfig();
        }

        public final void clearName() {
            this._builder.clearName();
        }

        public final ByteString getConfig() {
            ByteString config = this._builder.getConfig();
            Intrinsics.checkNotNullExpressionValue(config, "getConfig(...)");
            return config;
        }

        public final String getName() {
            String name = this._builder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return name;
        }

        public final void setConfig(ByteString value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setConfig(value);
        }

        public final void setName(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this._builder.setName(value);
        }
    }

    private ModuleKt() {
    }
}
