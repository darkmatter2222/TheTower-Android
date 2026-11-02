.class public final Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;
.super Ljava/lang/Object;
.source "Timestamp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimestamp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n+ 2 Utils.kt\ncom/google/firebase/firestore/pipeline/evaluation/UtilsKt\n*L\n1#1,235:1\n566#2:236\n602#2:237\n544#2,8:238\n610#2:246\n591#2:247\n566#2:248\n602#2:249\n544#2,8:250\n610#2:258\n591#2:259\n150#2:260\n149#2:261\n214#2:262\n44#2,6:263\n224#2:269\n153#2:270\n150#2:271\n149#2:272\n214#2:273\n44#2,6:274\n224#2:280\n153#2:281\n150#2:282\n149#2:283\n214#2:284\n44#2,6:285\n224#2:291\n153#2:292\n133#2:293\n132#2:294\n214#2:295\n44#2,6:296\n224#2:302\n136#2:303\n133#2:304\n132#2:305\n214#2:306\n44#2,6:307\n224#2:313\n136#2:314\n133#2:315\n132#2:316\n214#2:317\n44#2,6:318\n224#2:324\n136#2:325\n*S KotlinDebug\n*F\n+ 1 Timestamp.kt\ncom/google/firebase/firestore/pipeline/evaluation/TimestampKt\n*L\n111#1:236\n111#1:237\n111#1:238,8\n111#1:246\n111#1:247\n136#1:248\n136#1:249\n136#1:250,8\n136#1:258\n136#1:259\n163#1:260\n163#1:261\n163#1:262\n163#1:263,6\n163#1:269\n163#1:270\n180#1:271\n180#1:272\n180#1:273\n180#1:274,6\n180#1:280\n180#1:281\n194#1:282\n194#1:283\n194#1:284\n194#1:285,6\n194#1:291\n194#1:292\n215#1:293\n215#1:294\n215#1:295\n215#1:296,6\n215#1:302\n215#1:303\n223#1:304\n223#1:305\n223#1:306\n223#1:307,6\n223#1:313\n223#1:314\n231#1:315\n231#1:316\n231#1:317\n231#1:318,6\n231#1:324\n231#1:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u001a \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a \u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u001a\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0003\u001a\u000e\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0001\u001a\u000e\u00103\u001a\u00020\u00192\u0006\u00104\u001a\u00020\u0001\u001a\u000e\u00105\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"w\u0010\u001a\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\"w\u0010\'\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010&\"w\u0010)\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010&\"w\u0010+\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010&\"w\u0010-\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010&\"w\u0010/\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010&\"w\u00106\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010&\"w\u00108\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010&\"w\u0010:\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010&\u00a8\u0006<"
    }
    d2 = {
        "L_NANOS_PER_SECOND",
        "",
        "I_NANOS_PER_SECOND",
        "",
        "L_MICROS_PER_SECOND",
        "I_MICROS_PER_SECOND",
        "L_MILLIS_PER_SECOND",
        "I_MILLIS_PER_SECOND",
        "TIMESTAMP_MIN_SECONDS",
        "TIMESTAMP_MAX_SECONDS",
        "TIMESTAMP_MIN_MILLISECONDS",
        "TIMESTAMP_MAX_MILLISECONDS",
        "TIMESTAMP_MIN_MICROSECONDS",
        "TIMESTAMP_MAX_MICROSECONDS",
        "plus",
        "Lcom/google/protobuf/Timestamp;",
        "t",
        "seconds",
        "nanos",
        "minus",
        "convertUnit",
        "Ljava/time/temporal/ChronoUnit;",
        "unit",
        "",
        "isTimestampInBounds",
        "",
        "evaluateTimestampAdd",
        "Lkotlin/Function1;",
        "",
        "Lcom/google/firebase/firestore/model/MutableDocument;",
        "Lkotlin/ParameterName;",
        "name",
        "input",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;",
        "params",
        "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;",
        "getEvaluateTimestampAdd",
        "()Lkotlin/jvm/functions/Function1;",
        "evaluateTimestampSub",
        "getEvaluateTimestampSub",
        "evaluateTimestampTrunc",
        "getEvaluateTimestampTrunc",
        "evaluateTimestampToUnixMicros",
        "getEvaluateTimestampToUnixMicros",
        "evaluateTimestampToUnixMillis",
        "getEvaluateTimestampToUnixMillis",
        "evaluateTimestampToUnixSeconds",
        "getEvaluateTimestampToUnixSeconds",
        "isMicrosecondsInTimestampBounds",
        "microseconds",
        "isMillisecondsInTimestampBounds",
        "milliseconds",
        "isSecondsInTimestampBounds",
        "evaluateUnixMicrosToTimestamp",
        "getEvaluateUnixMicrosToTimestamp",
        "evaluateUnixMillisToTimestamp",
        "getEvaluateUnixMillisToTimestamp",
        "evaluateUnixSecondsToTimestamp",
        "getEvaluateUnixSecondsToTimestamp",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final I_MICROS_PER_SECOND:I = 0xf4240

.field private static final I_MILLIS_PER_SECOND:I = 0x3e8

.field private static final I_NANOS_PER_SECOND:I = 0x3b9aca00

.field private static final L_MICROS_PER_SECOND:J = 0xf4240L

.field private static final L_MILLIS_PER_SECOND:J = 0x3e8L

.field private static final L_NANOS_PER_SECOND:J = 0x3b9aca00L

.field private static final TIMESTAMP_MAX_MICROSECONDS:J = 0x384440ccc735fffL

.field private static final TIMESTAMP_MAX_MILLISECONDS:J = 0xe677d21fdbffL

.field private static final TIMESTAMP_MAX_SECONDS:J = 0x3afff4417fL

.field private static final TIMESTAMP_MIN_MICROSECONDS:J = -0xdcbffeff2bc000L

.field private static final TIMESTAMP_MIN_MILLISECONDS:J = -0x3883122cd800L

.field private static final TIMESTAMP_MIN_SECONDS:J = -0xe7791f700L

.field private static final evaluateTimestampAdd:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateTimestampSub:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateTimestampToUnixMicros:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateTimestampToUnixMillis:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateTimestampToUnixSeconds:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateTimestampTrunc:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateUnixMicrosToTimestamp:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateUnixMillisToTimestamp:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final evaluateUnixSecondsToTimestamp:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 238
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 111
    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampAdd:Lkotlin/jvm/functions/Function1;

    .line 250
    new-instance v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2;

    invoke-direct {v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$ternaryTimestampFunction$2;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 136
    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampSub:Lkotlin/jvm/functions/Function1;

    .line 161
    invoke-static {}, Lcom/google/firebase/firestore/pipeline/evaluation/UtilsKt;->getNotImplemented()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampTrunc:Lkotlin/jvm/functions/Function1;

    .line 260
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 263
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 163
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMicros:Lkotlin/jvm/functions/Function1;

    .line 271
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 274
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$2;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 180
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMillis:Lkotlin/jvm/functions/Function1;

    .line 282
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->TIMESTAMP_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 285
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryTimestampFunction$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 194
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixSeconds:Lkotlin/jvm/functions/Function1;

    .line 293
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 296
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$1;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 215
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMicrosToTimestamp:Lkotlin/jvm/functions/Function1;

    .line 304
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 307
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$2;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 223
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMillisToTimestamp:Lkotlin/jvm/functions/Function1;

    .line 315
    sget-object v0, Lcom/google/firestore/v1/Value$ValueTypeCase;->INTEGER_VALUE:Lcom/google/firestore/v1/Value$ValueTypeCase;

    .line 318
    new-instance v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$3;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt$special$$inlined$unaryLongFunction$3;-><init>(Lcom/google/firestore/v1/Value$ValueTypeCase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 231
    sput-object v1, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixSecondsToTimestamp:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static final convertUnit(Ljava/lang/String;)Ljava/time/temporal/ChronoUnit;
    .locals 3

    const-string v0, "unit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "millisecond"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 89
    :sswitch_1
    const-string v0, "hour"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object p0, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 89
    :sswitch_2
    const-string v0, "day"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object p0, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 89
    :sswitch_3
    const-string v0, "microsecond"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MICROS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 89
    :sswitch_4
    const-string v0, "second"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object p0, Ljava/time/temporal/ChronoUnit;->SECONDS:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 89
    :sswitch_5
    const-string v0, "minute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object p0, Ljava/time/temporal/ChronoUnit;->MINUTES:Ljava/time/temporal/ChronoUnit;

    return-object p0

    .line 96
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected timestamp unit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_5
        -0x3604bb8c -> :sswitch_4
        -0x15f49fc8 -> :sswitch_3
        0x1839c -> :sswitch_2
        0x30f5e4 -> :sswitch_1
        0x73c6d681 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getEvaluateTimestampAdd()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampAdd:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampSub()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampSub:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampToUnixMicros()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMicros:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampToUnixMillis()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixMillis:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampToUnixSeconds()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampToUnixSeconds:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateTimestampTrunc()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateTimestampTrunc:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateUnixMicrosToTimestamp()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMicrosToTimestamp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateUnixMillisToTimestamp()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixMillisToTimestamp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final getEvaluateUnixSecondsToTimestamp()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "+",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;",
            ">;>;"
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->evaluateUnixSecondsToTimestamp:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final isMicrosecondsInTimestampBounds(J)Z
    .locals 2

    const-wide v0, -0xdcbffeff2bc000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x384440ccc735fffL

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isMillisecondsInTimestampBounds(J)Z
    .locals 2

    const-wide v0, -0x3883122cd800L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xe677d21fdbffL

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isSecondsInTimestampBounds(J)Z
    .locals 2

    const-wide v0, -0xe7791f700L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x3afff4417fL

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTimestampInBounds(JI)Z
    .locals 4

    const-wide v0, -0xe7791f700L

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    const-wide v2, 0x3afff4417fL

    cmp-long p0, p0, v2

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    int-to-long p0, p2

    const-wide/32 v2, 0x3b9aca00

    cmp-long p0, p0, v2

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static final minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static final minus(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;
    .locals 4

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->minus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p3

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide p3

    const-wide/32 v2, 0x3b9aca00

    div-long v2, v0, v2

    invoke-static {p1, p2, v2, v3}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide p0

    invoke-static {p3, p4, p0, p1}, Lcom/google/common/math/LongMath;->checkedSubtract(JJ)J

    move-result-wide p0

    const p2, 0x3b9aca00

    int-to-long p2, p2

    .line 75
    rem-long/2addr v0, p2

    long-to-int p2, v0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method private static final plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public static final plus(Lcom/google/protobuf/Timestamp;JJ)Lcom/google/protobuf/Timestamp;
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/pipeline/evaluation/TimestampKt;->plus(Lcom/google/protobuf/Timestamp;J)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getNanos()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p3

    .line 61
    invoke-virtual {p0}, Lcom/google/protobuf/Timestamp;->getSeconds()J

    move-result-wide p3

    invoke-static {p3, p4, p1, p2}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide p0

    const-wide/32 p2, 0x3b9aca00

    div-long p2, v0, p2

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide p0

    const p2, 0x3b9aca00

    int-to-long p2, p2

    .line 62
    rem-long/2addr v0, p2

    long-to-int p2, v0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/model/Values;->timestamp(JI)Lcom/google/protobuf/Timestamp;

    move-result-object p0

    return-object p0
.end method
