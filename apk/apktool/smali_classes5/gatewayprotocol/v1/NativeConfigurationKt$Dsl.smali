.class public final Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;
.super Ljava/lang/Object;
.source "NativeConfigurationKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;,
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;,
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$MonitoringIdsProxy;,
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;,
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableViewControllersProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u001c\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0008\u0007\u0018\u0000 \u00c2\u00012\u00020\u0001:\n\u00c2\u0001\u00c3\u0001\u00c4\u0001\u00c5\u0001\u00c6\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0012J\u0006\u0010#\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\u0012J\u0006\u0010(\u001a\u00020\u0010J\u0006\u0010)\u001a\u00020\u0012J\u0006\u00100\u001a\u00020\u0010J\u0006\u00101\u001a\u00020\u0012J\u0006\u00108\u001a\u00020\u0010J\u0006\u00109\u001a\u00020\u0012J\u0006\u0010?\u001a\u00020\u0010J\u0006\u0010C\u001a\u00020\u0010J%\u0010J\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E2\u0006\u0010\u0008\u001a\u00020FH\u0007\u00a2\u0006\u0002\u0008KJ&\u0010L\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E2\u0006\u0010\u0008\u001a\u00020FH\u0087\n\u00a2\u0006\u0002\u0008MJ+\u0010N\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020F0PH\u0007\u00a2\u0006\u0002\u0008QJ,\u0010L\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020F0PH\u0087\n\u00a2\u0006\u0002\u0008RJ.\u0010S\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E2\u0006\u0010T\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020FH\u0087\u0002\u00a2\u0006\u0002\u0008VJ\u001d\u0010W\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0EH\u0007\u00a2\u0006\u0002\u0008XJ\u0006\u0010_\u001a\u00020\u0010J\u0006\u0010`\u001a\u00020\u0012J%\u0010J\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0E2\u0006\u0010\u0008\u001a\u00020bH\u0007\u00a2\u0006\u0002\u0008eJ&\u0010L\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0E2\u0006\u0010\u0008\u001a\u00020bH\u0087\n\u00a2\u0006\u0002\u0008fJ+\u0010N\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020b0PH\u0007\u00a2\u0006\u0002\u0008gJ,\u0010L\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020b0PH\u0087\n\u00a2\u0006\u0002\u0008hJ.\u0010S\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0E2\u0006\u0010T\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020bH\u0087\u0002\u00a2\u0006\u0002\u0008iJ\u001d\u0010W\u001a\u00020\u0010*\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0EH\u0007\u00a2\u0006\u0002\u0008jJ\u0006\u0010n\u001a\u00020\u0010J\u0006\u0010o\u001a\u00020\u0012J\u0006\u0010{\u001a\u00020\u0010J\u0006\u0010\u007f\u001a\u00020\u0010J\u0007\u0010\u0080\u0001\u001a\u00020\u0012J\u0007\u0010\u0087\u0001\u001a\u00020\u0010J\u0007\u0010\u0088\u0001\u001a\u00020\u0012J\u0007\u0010\u008c\u0001\u001a\u00020\u0010J\u0007\u0010\u0090\u0001\u001a\u00020\u0010J\u0007\u0010\u0094\u0001\u001a\u00020\u0010J\'\u0010J\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010E2\u0006\u0010\u0008\u001a\u00020bH\u0007\u00a2\u0006\u0003\u0008\u0098\u0001J(\u0010L\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010E2\u0006\u0010\u0008\u001a\u00020bH\u0087\n\u00a2\u0006\u0003\u0008\u0099\u0001J-\u0010N\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020b0PH\u0007\u00a2\u0006\u0003\u0008\u009a\u0001J.\u0010L\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020b0PH\u0087\n\u00a2\u0006\u0003\u0008\u009b\u0001J0\u0010S\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010E2\u0006\u0010T\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020bH\u0087\u0002\u00a2\u0006\u0003\u0008\u009c\u0001J\u001f\u0010W\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010EH\u0007\u00a2\u0006\u0003\u0008\u009d\u0001J\'\u0010J\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010E2\u0006\u0010\u0008\u001a\u00020UH\u0007\u00a2\u0006\u0003\u0008\u00a1\u0001J(\u0010L\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010E2\u0006\u0010\u0008\u001a\u00020UH\u0087\n\u00a2\u0006\u0003\u0008\u00a2\u0001J-\u0010N\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020U0PH\u0007\u00a2\u0006\u0003\u0008\u00a3\u0001J.\u0010L\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010E2\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020U0PH\u0087\n\u00a2\u0006\u0003\u0008\u00a4\u0001J0\u0010S\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010E2\u0006\u0010T\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020UH\u0087\u0002\u00a2\u0006\u0003\u0008\u00a5\u0001J\u001f\u0010W\u001a\u00020\u0010*\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010EH\u0007\u00a2\u0006\u0003\u0008\u00a6\u0001J\u0007\u0010\u00ac\u0001\u001a\u00020\u0010J\u0007\u0010\u00ad\u0001\u001a\u00020\u0012J\u0007\u0010\u00b4\u0001\u001a\u00020\u0010J\u0007\u0010\u00b5\u0001\u001a\u00020\u0012J\u0007\u0010\u00b9\u0001\u001a\u00020\u0010J\u0007\u0010\u00ba\u0001\u001a\u00020\u0012J\u0007\u0010\u00c0\u0001\u001a\u00020\u0010J\u0007\u0010\u00c1\u0001\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0016\"\u0004\u0008\u001d\u0010\u0018R$\u0010 \u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u0016\"\u0004\u0008\"\u0010\u0018R$\u0010%\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\u0016\"\u0004\u0008\'\u0010\u0018R$\u0010+\u001a\u00020*2\u0006\u0010\u0008\u001a\u00020*8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00103\u001a\u0002022\u0006\u0010\u0008\u001a\u0002028G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R$\u0010:\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R$\u0010@\u001a\u00020\u00122\u0006\u0010\u0008\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u0010<\"\u0004\u0008B\u0010>R\u001d\u0010D\u001a\u000e\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u00020G0E8F\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR$\u0010Z\u001a\u00020Y2\u0006\u0010\u0008\u001a\u00020Y8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R\u001d\u0010a\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0E8F\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010IR$\u0010k\u001a\u00020Y2\u0006\u0010\u0008\u001a\u00020Y8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008l\u0010\\\"\u0004\u0008m\u0010^R$\u0010q\u001a\u00020p2\u0006\u0010\u0008\u001a\u00020p8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008r\u0010s\"\u0004\u0008t\u0010uR$\u0010v\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020U8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR$\u0010|\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008}\u0010\u0016\"\u0004\u0008~\u0010\u0018R+\u0010\u0082\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0008\u001a\u00030\u0081\u00018G@GX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\'\u0010\u0089\u0001\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020U8G@GX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008a\u0001\u0010x\"\u0005\u0008\u008b\u0001\u0010zR\'\u0010\u008d\u0001\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020U8G@GX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008e\u0001\u0010x\"\u0005\u0008\u008f\u0001\u0010zR\'\u0010\u0091\u0001\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020U8G@GX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0092\u0001\u0010x\"\u0005\u0008\u0093\u0001\u0010zR \u0010\u0095\u0001\u001a\u000f\u0012\u0004\u0012\u00020b\u0012\u0005\u0012\u00030\u0096\u00010E8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0097\u0001\u0010IR \u0010\u009e\u0001\u001a\u000f\u0012\u0004\u0012\u00020U\u0012\u0005\u0012\u00030\u009f\u00010E8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0001\u0010IR)\u0010\u00a7\u0001\u001a\u00020F2\u0006\u0010\u0008\u001a\u00020F8G@GX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00a8\u0001\u0010\u00a9\u0001\"\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R+\u0010\u00af\u0001\u001a\u00030\u00ae\u00012\u0007\u0010\u0008\u001a\u00030\u00ae\u00018G@GX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001\"\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\'\u0010\u00b6\u0001\u001a\u00020U2\u0006\u0010\u0008\u001a\u00020U8G@GX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00b7\u0001\u0010x\"\u0005\u0008\u00b8\u0001\u0010zR)\u0010\u00bb\u0001\u001a\u00020b2\u0006\u0010\u0008\u001a\u00020b8G@GX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\"\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\u00a8\u0006\u00c7\u0001"
    }
    d2 = {
        "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "value",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "diagnosticEvents",
        "getDiagnosticEvents",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;",
        "setDiagnosticEvents",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V",
        "clearDiagnosticEvents",
        "",
        "hasDiagnosticEvents",
        "",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "initPolicy",
        "getInitPolicy",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "setInitPolicy",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V",
        "clearInitPolicy",
        "hasInitPolicy",
        "adPolicy",
        "getAdPolicy",
        "setAdPolicy",
        "clearAdPolicy",
        "hasAdPolicy",
        "operativeEventPolicy",
        "getOperativeEventPolicy",
        "setOperativeEventPolicy",
        "clearOperativeEventPolicy",
        "hasOperativeEventPolicy",
        "otherPolicy",
        "getOtherPolicy",
        "setOtherPolicy",
        "clearOtherPolicy",
        "hasOtherPolicy",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "adOperations",
        "getAdOperations",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;",
        "setAdOperations",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V",
        "clearAdOperations",
        "hasAdOperations",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "featureFlags",
        "getFeatureFlags",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;",
        "setFeatureFlags",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V",
        "clearFeatureFlags",
        "hasFeatureFlags",
        "enableIapEvent",
        "getEnableIapEvent",
        "()Z",
        "setEnableIapEvent",
        "(Z)V",
        "clearEnableIapEvent",
        "enableOm",
        "getEnableOm",
        "setEnableOm",
        "clearEnableOm",
        "additionalStorePackages",
        "Lcom/google/protobuf/kotlin/DslList;",
        "",
        "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
        "getAdditionalStorePackages",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "add",
        "addAdditionalStorePackages",
        "plusAssign",
        "plusAssignAdditionalStorePackages",
        "addAll",
        "values",
        "",
        "addAllAdditionalStorePackages",
        "plusAssignAllAdditionalStorePackages",
        "set",
        "index",
        "",
        "setAdditionalStorePackages",
        "clear",
        "clearAdditionalStorePackages",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;",
        "cachedAssetsConfiguration",
        "getCachedAssetsConfiguration",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;",
        "setCachedAssetsConfiguration",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V",
        "clearCachedAssetsConfiguration",
        "hasCachedAssetsConfiguration",
        "observableAndroidActivities",
        "Lcom/google/protobuf/ByteString;",
        "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;",
        "getObservableAndroidActivities",
        "addObservableAndroidActivities",
        "plusAssignObservableAndroidActivities",
        "addAllObservableAndroidActivities",
        "plusAssignAllObservableAndroidActivities",
        "setObservableAndroidActivities",
        "clearObservableAndroidActivities",
        "cachedWebviewFilesConfiguration",
        "getCachedWebviewFilesConfiguration",
        "setCachedWebviewFilesConfiguration",
        "clearCachedWebviewFilesConfiguration",
        "hasCachedWebviewFilesConfiguration",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;",
        "defaultShowCompletionState",
        "getDefaultShowCompletionState",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;",
        "setDefaultShowCompletionState",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V",
        "defaultShowCompletionStateValue",
        "getDefaultShowCompletionStateValue",
        "()I",
        "setDefaultShowCompletionStateValue",
        "(I)V",
        "clearDefaultShowCompletionState",
        "downloadPolicy",
        "getDownloadPolicy",
        "setDownloadPolicy",
        "clearDownloadPolicy",
        "hasDownloadPolicy",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;",
        "debugSettings",
        "getDebugSettings",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;",
        "setDebugSettings",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V",
        "clearDebugSettings",
        "hasDebugSettings",
        "maxExtrasSizeKb",
        "getMaxExtrasSizeKb",
        "setMaxExtrasSizeKb",
        "clearMaxExtrasSizeKb",
        "maxReceiptSizeMb",
        "getMaxReceiptSizeMb",
        "setMaxReceiptSizeMb",
        "clearMaxReceiptSizeMb",
        "overwriteIntentFlagActivity",
        "getOverwriteIntentFlagActivity",
        "setOverwriteIntentFlagActivity",
        "clearOverwriteIntentFlagActivity",
        "observableViewControllers",
        "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableViewControllersProxy;",
        "getObservableViewControllers",
        "addObservableViewControllers",
        "plusAssignObservableViewControllers",
        "addAllObservableViewControllers",
        "plusAssignAllObservableViewControllers",
        "setObservableViewControllers",
        "clearObservableViewControllers",
        "monitoringIds",
        "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$MonitoringIdsProxy;",
        "getMonitoringIds",
        "addMonitoringIds",
        "plusAssignMonitoringIds",
        "addAllMonitoringIds",
        "plusAssignAllMonitoringIds",
        "setMonitoringIds",
        "clearMonitoringIds",
        "levelPlayAppKey",
        "getLevelPlayAppKey",
        "()Ljava/lang/String;",
        "setLevelPlayAppKey",
        "(Ljava/lang/String;)V",
        "clearLevelPlayAppKey",
        "hasLevelPlayAppKey",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;",
        "accelerometerCollection",
        "getAccelerometerCollection",
        "()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;",
        "setAccelerometerCollection",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V",
        "clearAccelerometerCollection",
        "hasAccelerometerCollection",
        "optimisticInitDelayMs",
        "getOptimisticInitDelayMs",
        "setOptimisticInitDelayMs",
        "clearOptimisticInitDelayMs",
        "hasOptimisticInitDelayMs",
        "dataLibraryWasmModule",
        "getDataLibraryWasmModule",
        "()Lcom/google/protobuf/ByteString;",
        "setDataLibraryWasmModule",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearDataLibraryWasmModule",
        "hasDataLibraryWasmModule",
        "Companion",
        "AdditionalStorePackagesProxy",
        "ObservableAndroidActivitiesProxy",
        "ObservableViewControllersProxy",
        "MonitoringIdsProxy",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 2

    .line 33
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    return-object v0
.end method

.method public final synthetic addAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAdditionalStorePackages(Ljava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addAllAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAllAdditionalStorePackages(Ljava/lang/Iterable;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addAllMonitoringIds(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 933
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAllMonitoringIds(Ljava/lang/Iterable;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addAllObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAllObservableAndroidActivities(Ljava/lang/Iterable;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addAllObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAllObservableViewControllers(Ljava/lang/Iterable;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addMonitoringIds(Lcom/google/protobuf/kotlin/DslList;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addMonitoringIds(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addObservableAndroidActivities(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic addObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addObservableViewControllers(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearAccelerometerCollection()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAccelerometerCollection()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearAdOperations()V
    .locals 1

    .line 237
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearAdPolicy()V
    .locals 1

    .line 129
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic clearAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAdditionalStorePackages()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearCachedAssetsConfiguration()V
    .locals 1

    .line 457
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearCachedWebviewFilesConfiguration()V
    .locals 1

    .line 593
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearDataLibraryWasmModule()V
    .locals 1

    .line 1120
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDataLibraryWasmModule()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearDebugSettings()V
    .locals 1

    .line 697
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDebugSettings()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearDefaultShowCompletionState()V
    .locals 1

    .line 636
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearDiagnosticEvents()V
    .locals 1

    .line 57
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearDownloadPolicy()V
    .locals 1

    .line 661
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearEnableIapEvent()V
    .locals 1

    .line 309
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearEnableIapEvent()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearEnableOm()V
    .locals 1

    .line 334
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearEnableOm()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearFeatureFlags()V
    .locals 1

    .line 273
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearInitPolicy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearLevelPlayAppKey()V
    .locals 1

    .line 996
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearLevelPlayAppKey()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearMaxExtrasSizeKb()V
    .locals 1

    .line 733
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearMaxExtrasSizeKb()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearMaxReceiptSizeMb()V
    .locals 1

    .line 758
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearMaxReceiptSizeMb()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic clearMonitoringIds(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearMonitoringIds()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic clearObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearObservableAndroidActivities()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic clearObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 877
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearObservableViewControllers()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearOperativeEventPolicy()V
    .locals 1

    .line 165
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearOptimisticInitDelayMs()V
    .locals 1

    .line 1076
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearOptimisticInitDelayMs()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearOtherPolicy()V
    .locals 1

    .line 201
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final clearOverwriteIntentFlagActivity()V
    .locals 1

    .line 783
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearOverwriteIntentFlagActivity()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final getAccelerometerCollection()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 2

    .line 1021
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAccelerometerCollection()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    move-result-object v0

    const-string v1, "getAccelerometerCollection(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .locals 2

    .line 224
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    move-result-object v0

    const-string v1, "getAdOperations(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2

    .line 116
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    const-string v1, "getAdPolicy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdditionalStorePackages()Lcom/google/protobuf/kotlin/DslList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 354
    iget-object v1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAdditionalStorePackagesList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAdditionalStorePackagesList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 2

    .line 444
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    move-result-object v0

    const-string v1, "getCachedAssetsConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 2

    .line 580
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    move-result-object v0

    const-string v1, "getCachedWebviewFilesConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDataLibraryWasmModule()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1104
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDataLibraryWasmModule()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getDataLibraryWasmModule(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDebugSettings()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;
    .locals 2

    .line 684
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDebugSettings()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    move-result-object v0

    const-string v1, "getDebugSettings(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;
    .locals 2

    .line 616
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;

    move-result-object v0

    const-string v1, "getDefaultShowCompletionState(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDefaultShowCompletionStateValue()I
    .locals 1

    .line 623
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDefaultShowCompletionStateValue()I

    move-result v0

    return v0
.end method

.method public final getDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .locals 2

    .line 44
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v0

    const-string v1, "getDiagnosticEvents(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2

    .line 648
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    const-string v1, "getDownloadPolicy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEnableIapEvent()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getEnableIapEvent()Z

    move-result v0

    return v0
.end method

.method public final getEnableOm()Z
    .locals 1

    .line 321
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getEnableOm()Z

    move-result v0

    return v0
.end method

.method public final getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 2

    .line 260
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    move-result-object v0

    const-string v1, "getFeatureFlags(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2

    .line 80
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    const-string v1, "getInitPolicy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLevelPlayAppKey()Ljava/lang/String;
    .locals 2

    .line 982
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getLevelPlayAppKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLevelPlayAppKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMaxExtrasSizeKb()I
    .locals 1

    .line 720
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getMaxExtrasSizeKb()I

    move-result v0

    return v0
.end method

.method public final getMaxReceiptSizeMb()I
    .locals 1

    .line 745
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getMaxReceiptSizeMb()I

    move-result v0

    return v0
.end method

.method public final synthetic getMonitoringIds()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 894
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 895
    iget-object v1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getMonitoringIdsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getMonitoringIdsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getObservableAndroidActivities()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 487
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 488
    iget-object v1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getObservableAndroidActivitiesList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getObservableAndroidActivitiesList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic getObservableViewControllers()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 801
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 802
    iget-object v1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getObservableViewControllersList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getObservableViewControllersList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2

    .line 152
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    const-string v1, "getOperativeEventPolicy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOptimisticInitDelayMs()I
    .locals 1

    .line 1061
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getOptimisticInitDelayMs()I

    move-result v0

    return v0
.end method

.method public final getOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2

    .line 188
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    const-string v1, "getOtherPolicy(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOverwriteIntentFlagActivity()I
    .locals 1

    .line 770
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getOverwriteIntentFlagActivity()I

    move-result v0

    return v0
.end method

.method public final hasAccelerometerCollection()Z
    .locals 1

    .line 1047
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasAccelerometerCollection()Z

    move-result v0

    return v0
.end method

.method public final hasAdOperations()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasAdOperations()Z

    move-result v0

    return v0
.end method

.method public final hasAdPolicy()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasAdPolicy()Z

    move-result v0

    return v0
.end method

.method public final hasCachedAssetsConfiguration()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasCachedAssetsConfiguration()Z

    move-result v0

    return v0
.end method

.method public final hasCachedWebviewFilesConfiguration()Z
    .locals 1

    .line 604
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasCachedWebviewFilesConfiguration()Z

    move-result v0

    return v0
.end method

.method public final hasDataLibraryWasmModule()Z
    .locals 1

    .line 1134
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasDataLibraryWasmModule()Z

    move-result v0

    return v0
.end method

.method public final hasDebugSettings()Z
    .locals 1

    .line 708
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasDebugSettings()Z

    move-result v0

    return v0
.end method

.method public final hasDiagnosticEvents()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasDiagnosticEvents()Z

    move-result v0

    return v0
.end method

.method public final hasDownloadPolicy()Z
    .locals 1

    .line 672
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasDownloadPolicy()Z

    move-result v0

    return v0
.end method

.method public final hasFeatureFlags()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasFeatureFlags()Z

    move-result v0

    return v0
.end method

.method public final hasInitPolicy()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasInitPolicy()Z

    move-result v0

    return v0
.end method

.method public final hasLevelPlayAppKey()Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasLevelPlayAppKey()Z

    move-result v0

    return v0
.end method

.method public final hasOperativeEventPolicy()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasOperativeEventPolicy()Z

    move-result v0

    return v0
.end method

.method public final hasOptimisticInitDelayMs()Z
    .locals 1

    .line 1089
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasOptimisticInitDelayMs()Z

    move-result v0

    return v0
.end method

.method public final hasOtherPolicy()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasOtherPolicy()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic plusAssignAllAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAllAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllMonitoringIds(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/Integer;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$MonitoringIdsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAllMonitoringIds(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAllObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignAllObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableViewControllersProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAllObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignMonitoringIds(Lcom/google/protobuf/kotlin/DslList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/Integer;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$MonitoringIdsProxy;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addMonitoringIds(Lcom/google/protobuf/kotlin/DslList;I)V

    return-void
.end method

.method public final synthetic plusAssignObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final synthetic plusAssignObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableViewControllersProxy;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public final setAccelerometerCollection(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAccelerometerCollection(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic setAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAdditionalStorePackages(ILjava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setDataLibraryWasmModule(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDataLibraryWasmModule(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setDebugSettings(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDebugSettings(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setDefaultShowCompletionState(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDefaultShowCompletionState(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setDefaultShowCompletionStateValue(I)V
    .locals 1

    .line 626
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDefaultShowCompletionStateValue(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setEnableIapEvent(Z)V
    .locals 1

    .line 299
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setEnableIapEvent(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setEnableOm(Z)V
    .locals 1

    .line 324
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setEnableOm(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setLevelPlayAppKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setLevelPlayAppKey(Ljava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setMaxExtrasSizeKb(I)V
    .locals 1

    .line 723
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setMaxExtrasSizeKb(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setMaxReceiptSizeMb(I)V
    .locals 1

    .line 748
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setMaxReceiptSizeMb(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic setMonitoringIds(Lcom/google/protobuf/kotlin/DslList;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setMonitoringIds(II)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic setObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setObservableAndroidActivities(ILcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final synthetic setObservableViewControllers(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setObservableViewControllers(ILcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setOptimisticInitDelayMs(I)V
    .locals 1

    .line 1064
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setOptimisticInitDelayMs(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public final setOverwriteIntentFlagActivity(I)V
    .locals 1

    .line 773
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setOverwriteIntentFlagActivity(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method
