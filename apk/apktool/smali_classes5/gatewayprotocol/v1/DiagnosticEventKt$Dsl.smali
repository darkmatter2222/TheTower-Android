.class public final Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;
.super Ljava/lang/Object;
.source "DiagnosticEventKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DiagnosticEventKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;,
        Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$IntTagsProxy;,
        Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$StringTagsProxy;,
        Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$TagsProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u001c\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u009e\u00012\u00020\u0001:\u0008\u009e\u0001\u009f\u0001\u00a0\u0001\u00a1\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u0016J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010&\u001a\u00020\u0016J\u0006\u0010\'\u001a\u00020\u001fJ\u0006\u0010.\u001a\u00020\u0016J\u0006\u0010/\u001a\u00020\u001fJ3\u00105\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u000202012\u0006\u00106\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u00087J4\u00108\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u000202012\u0006\u00106\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u0017H\u0087\n\u00a2\u0006\u0002\u00089J+\u0010:\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u000202012\u0006\u00106\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0008;J7\u0010<\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u000202012\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170>H\u0007\u00a2\u0006\u0002\u0008?J#\u0010@\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020201H\u0007\u00a2\u0006\u0002\u0008AJ3\u00105\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020C012\u0006\u00106\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u000fH\u0007\u00a2\u0006\u0002\u0008EJ4\u00108\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020C012\u0006\u00106\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u000fH\u0087\n\u00a2\u0006\u0002\u0008FJ+\u0010:\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020C012\u0006\u00106\u001a\u00020\u0017H\u0007\u00a2\u0006\u0002\u0008GJ7\u0010<\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020C012\u0012\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f0>H\u0007\u00a2\u0006\u0002\u0008HJ#\u0010@\u001a\u00020\u0016*\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020C01H\u0007\u00a2\u0006\u0002\u0008IJ\u0006\u0010M\u001a\u00020\u0016J\u0006\u0010T\u001a\u00020\u0016J\u0006\u0010U\u001a\u00020\u001fJ\u0006\u0010Y\u001a\u00020\u0016J\u0006\u0010Z\u001a\u00020\u001fJ\u0006\u0010d\u001a\u00020\u0016J\u0006\u0010e\u001a\u00020\u001fJ\u0006\u0010k\u001a\u00020\u0016J\u0006\u0010l\u001a\u00020\u001fJ\u0006\u0010p\u001a\u00020\u0016J\u0006\u0010q\u001a\u00020\u001fJ\u0006\u0010{\u001a\u00020\u0016J\u0006\u0010|\u001a\u00020\u001fJ\u0007\u0010\u0080\u0001\u001a\u00020\u0016J\u0007\u0010\u0081\u0001\u001a\u00020\u001fJ\u0007\u0010\u0085\u0001\u001a\u00020\u0016J\u0007\u0010\u0086\u0001\u001a\u00020\u001fJ\u0007\u0010\u008a\u0001\u001a\u00020\u0016J\u0007\u0010\u008b\u0001\u001a\u00020\u001fJ+\u0010\u0092\u0001\u001a\u00020\u0016*\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u00012\u0007\u0010\u0008\u001a\u00030\u008e\u0001H\u0007\u00a2\u0006\u0003\u0008\u0093\u0001J,\u0010\u0094\u0001\u001a\u00020\u0016*\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u00012\u0007\u0010\u0008\u001a\u00030\u008e\u0001H\u0087\n\u00a2\u0006\u0003\u0008\u0095\u0001J3\u0010\u0096\u0001\u001a\u00020\u0016*\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u00012\u000f\u0010\u0097\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u0098\u0001H\u0007\u00a2\u0006\u0003\u0008\u0099\u0001J4\u0010\u0094\u0001\u001a\u00020\u0016*\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u00012\u000f\u0010\u0097\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u0098\u0001H\u0087\n\u00a2\u0006\u0003\u0008\u009a\u0001J4\u00108\u001a\u00020\u0016*\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u00012\u0007\u0010\u009b\u0001\u001a\u00020\u000f2\u0007\u0010\u0008\u001a\u00030\u008e\u0001H\u0087\u0002\u00a2\u0006\u0003\u0008\u009c\u0001J!\u0010@\u001a\u00020\u0016*\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u0001H\u0007\u00a2\u0006\u0003\u0008\u009d\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010!\u001a\u00020 2\u0006\u0010\u0008\u001a\u00020 8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010)\u001a\u00020(2\u0006\u0010\u0008\u001a\u00020(8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R#\u00100\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u000202018G\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R#\u0010B\u001a\u0014\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020C018G\u00a2\u0006\u0006\u001a\u0004\u0008D\u00104R$\u0010J\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010\u0012\"\u0004\u0008L\u0010\u0014R$\u0010O\u001a\u00020N2\u0006\u0010\u0008\u001a\u00020N8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR$\u0010V\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008W\u0010\u001a\"\u0004\u0008X\u0010\u001cR$\u0010\\\u001a\u00020[2\u0006\u0010\u0008\u001a\u00020[8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R$\u0010a\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008b\u0010\u0012\"\u0004\u0008c\u0010\u0014R$\u0010f\u001a\u00020\u001f2\u0006\u0010\u0008\u001a\u00020\u001f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR$\u0010m\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008n\u0010\u0012\"\u0004\u0008o\u0010\u0014R$\u0010s\u001a\u00020r2\u0006\u0010\u0008\u001a\u00020r8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR$\u0010x\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008y\u0010\u0012\"\u0004\u0008z\u0010\u0014R$\u0010}\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008~\u0010\u001a\"\u0004\u0008\u007f\u0010\u001cR\'\u0010\u0082\u0001\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0083\u0001\u0010\u001a\"\u0005\u0008\u0084\u0001\u0010\u001cR\'\u0010\u0087\u0001\u001a\u00020N2\u0006\u0010\u0008\u001a\u00020N8G@GX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0088\u0001\u0010Q\"\u0005\u0008\u0089\u0001\u0010SR#\u0010\u008c\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0005\u0012\u00030\u008f\u00010\u008d\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u00a8\u0006\u00a2\u0001"
    }
    d2 = {
        "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "value",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
        "eventType",
        "getEventType",
        "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
        "setEventType",
        "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V",
        "",
        "eventTypeValue",
        "getEventTypeValue",
        "()I",
        "setEventTypeValue",
        "(I)V",
        "clearEventType",
        "",
        "",
        "customEventType",
        "getCustomEventType",
        "()Ljava/lang/String;",
        "setCustomEventType",
        "(Ljava/lang/String;)V",
        "clearCustomEventType",
        "hasCustomEventType",
        "",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
        "timestamps",
        "getTimestamps",
        "()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
        "setTimestamps",
        "(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V",
        "clearTimestamps",
        "hasTimestamps",
        "",
        "timeValue",
        "getTimeValue",
        "()D",
        "setTimeValue",
        "(D)V",
        "clearTimeValue",
        "hasTimeValue",
        "stringTags",
        "Lcom/google/protobuf/kotlin/DslMap;",
        "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$StringTagsProxy;",
        "getStringTagsMap",
        "()Lcom/google/protobuf/kotlin/DslMap;",
        "put",
        "key",
        "putStringTags",
        "set",
        "setStringTags",
        "remove",
        "removeStringTags",
        "putAll",
        "map",
        "",
        "putAllStringTags",
        "clear",
        "clearStringTags",
        "intTags",
        "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$IntTagsProxy;",
        "getIntTagsMap",
        "putIntTags",
        "setIntTags",
        "removeIntTags",
        "putAllIntTags",
        "clearIntTags",
        "eventId",
        "getEventId",
        "setEventId",
        "clearEventId",
        "Lcom/google/protobuf/ByteString;",
        "impressionOpportunityId",
        "getImpressionOpportunityId",
        "()Lcom/google/protobuf/ByteString;",
        "setImpressionOpportunityId",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearImpressionOpportunityId",
        "hasImpressionOpportunityId",
        "placementId",
        "getPlacementId",
        "setPlacementId",
        "clearPlacementId",
        "hasPlacementId",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
        "adType",
        "getAdType",
        "()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;",
        "setAdType",
        "(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)V",
        "adTypeValue",
        "getAdTypeValue",
        "setAdTypeValue",
        "clearAdType",
        "hasAdType",
        "isHeaderBidding",
        "getIsHeaderBidding",
        "()Z",
        "setIsHeaderBidding",
        "(Z)V",
        "clearIsHeaderBidding",
        "hasIsHeaderBidding",
        "headerBiddingTokenNumber",
        "getHeaderBiddingTokenNumber",
        "setHeaderBiddingTokenNumber",
        "clearHeaderBiddingTokenNumber",
        "hasHeaderBiddingTokenNumber",
        "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        "adFormat",
        "getAdFormat",
        "()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        "setAdFormat",
        "(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V",
        "adFormatValue",
        "getAdFormatValue",
        "setAdFormatValue",
        "clearAdFormat",
        "hasAdFormat",
        "reason",
        "getReason",
        "setReason",
        "clearReason",
        "hasReason",
        "reasonDebug",
        "getReasonDebug",
        "setReasonDebug",
        "clearReasonDebug",
        "hasReasonDebug",
        "errorToken",
        "getErrorToken",
        "setErrorToken",
        "clearErrorToken",
        "hasErrorToken",
        "tags",
        "Lcom/google/protobuf/kotlin/DslList;",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
        "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$TagsProxy;",
        "getTags",
        "()Lcom/google/protobuf/kotlin/DslList;",
        "add",
        "addTags",
        "plusAssign",
        "plusAssignTags",
        "addAll",
        "values",
        "",
        "addAllTags",
        "plusAssignAllTags",
        "index",
        "setTags",
        "clearTags",
        "Companion",
        "StringTagsProxy",
        "IntTagsProxy",
        "TagsProxy",
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
.field public static final Companion:Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->Companion:Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;-><init>(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    return-object v0
.end method

.method public final synthetic addAllTags(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "values"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->addAllTags(Ljava/lang/Iterable;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic addTags(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->addTags(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearAdFormat()V
    .locals 1

    .line 566
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearAdFormat()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearAdType()V
    .locals 1

    .line 451
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearCustomEventType()V
    .locals 1

    .line 90
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearCustomEventType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearErrorToken()V
    .locals 1

    .line 674
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearErrorToken()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearEventId()V
    .locals 1

    .line 347
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearEventId()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearEventType()V
    .locals 1

    .line 63
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearEventType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearHeaderBiddingTokenNumber()V
    .locals 1

    .line 523
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearHeaderBiddingTokenNumber()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearImpressionOpportunityId()V
    .locals 1

    .line 372
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearImpressionOpportunityId()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic clearIntTags(Lcom/google/protobuf/kotlin/DslMap;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearIntTags()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearIsHeaderBidding()V
    .locals 1

    .line 487
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearIsHeaderBidding()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearPlacementId()V
    .locals 1

    .line 408
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearPlacementId()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearReason()V
    .locals 1

    .line 602
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearReason()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearReasonDebug()V
    .locals 1

    .line 638
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearReasonDebug()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic clearStringTags(Lcom/google/protobuf/kotlin/DslMap;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearStringTags()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic clearTags(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearTags()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearTimeValue()V
    .locals 1

    .line 163
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearTimeValue()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final clearTimestamps()V
    .locals 1

    .line 127
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->clearTimestamps()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 2

    .line 546
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    const-string v1, "getAdFormat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdFormatValue()I
    .locals 1

    .line 553
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public final getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;
    .locals 2

    .line 431
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getAdType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;

    move-result-object v0

    const-string v1, "getAdType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAdTypeValue()I
    .locals 1

    .line 438
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getAdTypeValue()I

    move-result v0

    return v0
.end method

.method public final getCustomEventType()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getCustomEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCustomEventType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorToken()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 661
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getErrorToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEventId()I
    .locals 1

    .line 333
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getEventId()I

    move-result v0

    return v0
.end method

.method public final getEventType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;
    .locals 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getEventType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object v0

    const-string v1, "getEventType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEventTypeValue()I
    .locals 1

    .line 50
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public final getHeaderBiddingTokenNumber()I
    .locals 1

    .line 510
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getHeaderBiddingTokenNumber()I

    move-result v0

    return v0
.end method

.method public final getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 359
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getImpressionOpportunityId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getIntTagsMap()Lcom/google/protobuf/kotlin/DslMap;
    .locals 3

    .line 274
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 275
    iget-object v1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getIntTagsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getIntTagsMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIsHeaderBidding()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getIsHeaderBidding()Z

    move-result v0

    return v0
.end method

.method public final getPlacementId()Ljava/lang/String;
    .locals 2

    .line 395
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getReason()Ljava/lang/String;
    .locals 2

    .line 589
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getReason(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getReasonDebug()Ljava/lang/String;
    .locals 2

    .line 625
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getReasonDebug()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getReasonDebug(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic getStringTagsMap()Lcom/google/protobuf/kotlin/DslMap;
    .locals 3

    .line 193
    new-instance v0, Lcom/google/protobuf/kotlin/DslMap;

    .line 194
    iget-object v1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getStringTagsMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getStringTagsMap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final synthetic getTags()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 703
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 704
    iget-object v1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getTagsList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getTagsList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getTimeValue()D
    .locals 2

    .line 150
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getTimeValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestamps()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 2

    .line 114
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->getTimestamps()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    const-string v1, "getTimestamps(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAdFormat()Z
    .locals 1

    .line 577
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasAdFormat()Z

    move-result v0

    return v0
.end method

.method public final hasAdType()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasAdType()Z

    move-result v0

    return v0
.end method

.method public final hasCustomEventType()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasCustomEventType()Z

    move-result v0

    return v0
.end method

.method public final hasErrorToken()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasErrorToken()Z

    move-result v0

    return v0
.end method

.method public final hasHeaderBiddingTokenNumber()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasHeaderBiddingTokenNumber()Z

    move-result v0

    return v0
.end method

.method public final hasImpressionOpportunityId()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasImpressionOpportunityId()Z

    move-result v0

    return v0
.end method

.method public final hasIsHeaderBidding()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasIsHeaderBidding()Z

    move-result v0

    return v0
.end method

.method public final hasPlacementId()Z
    .locals 1

    .line 419
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasPlacementId()Z

    move-result v0

    return v0
.end method

.method public final hasReason()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasReason()Z

    move-result v0

    return v0
.end method

.method public final hasReasonDebug()Z
    .locals 1

    .line 649
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasReasonDebug()Z

    move-result v0

    return v0
.end method

.method public final hasTimeValue()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasTimeValue()Z

    move-result v0

    return v0
.end method

.method public final hasTimestamps()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->hasTimestamps()Z

    move-result v0

    return v0
.end method

.method public final synthetic plusAssignAllTags(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
            "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$TagsProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->addAllTags(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    return-void
.end method

.method public final synthetic plusAssignTags(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
            "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$TagsProxy;",
            ">;",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->addTags(Lcom/google/protobuf/kotlin/DslList;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;)V

    return-void
.end method

.method public final synthetic putAllIntTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->putAllIntTags(Ljava/util/Map;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic putAllStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/util/Map;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->putAllStringTags(Ljava/util/Map;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final putIntTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$IntTagsProxy;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->putIntTags(Ljava/lang/String;I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final putStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$StringTagsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->putStringTags(Ljava/lang/String;Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic removeIntTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->removeIntTags(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic removeStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->removeStringTags(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setAdFormatValue(I)V
    .locals 1

    .line 556
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setAdFormatValue(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setAdType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setAdType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticAdType;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setAdTypeValue(I)V
    .locals 1

    .line 441
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setAdTypeValue(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setCustomEventType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setCustomEventType(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setErrorToken(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setErrorToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setEventId(I)V
    .locals 1

    .line 336
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setEventId(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setEventType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setEventType(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setEventTypeValue(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setEventTypeValue(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setHeaderBiddingTokenNumber(I)V
    .locals 1

    .line 513
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setHeaderBiddingTokenNumber(I)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic setIntTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$IntTagsProxy;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1, p2, p3}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->putIntTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;I)V

    return-void
.end method

.method public final setIsHeaderBidding(Z)V
    .locals 1

    .line 477
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setIsHeaderBidding(Z)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setPlacementId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setReason(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setReason(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setReasonDebug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setReasonDebug(Ljava/lang/String;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final synthetic setStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/DiagnosticEventKt$Dsl$StringTagsProxy;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->putStringTags(Lcom/google/protobuf/kotlin/DslMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic setTags(Lcom/google/protobuf/kotlin/DslList;ILgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setTags(ILgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticTag;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setTimeValue(D)V
    .locals 1

    .line 153
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setTimeValue(D)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method

.method public final setTimestamps(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/DiagnosticEventKt$Dsl;->_builder:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;->setTimestamps(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;

    return-void
.end method
