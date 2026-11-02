package com.google.firebase.firestore.pipeline.evaluation;

import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticBackport0;
import com.google.common.math.LongMath;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;
import com.google.protobuf.Timestamp;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.DurationKt;

/* JADX INFO: compiled from: Timestamp.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\u001a \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a \u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0001H\u0000\u001a\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007\u001a\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0003\u001a\u000e\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0001\u001a\u000e\u00103\u001a\u00020\u00192\u0006\u00104\u001a\u00020\u0001\u001a\u000e\u00105\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0001\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"w\u0010\u001a\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&\"w\u0010'\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010&\"w\u0010)\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010&\"w\u0010+\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010&\"w\u0010-\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010&\"w\u0010/\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010&\"w\u00106\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010&\"w\u00108\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b9\u0010&\"w\u0010:\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001c¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012#\u0012!\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020!0\u001bj\u0002`\"0\u001bj\u0002`$X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b;\u0010&¨\u0006<"}, d2 = {"L_NANOS_PER_SECOND", "", "I_NANOS_PER_SECOND", "", "L_MICROS_PER_SECOND", "I_MICROS_PER_SECOND", "L_MILLIS_PER_SECOND", "I_MILLIS_PER_SECOND", "TIMESTAMP_MIN_SECONDS", "TIMESTAMP_MAX_SECONDS", "TIMESTAMP_MIN_MILLISECONDS", "TIMESTAMP_MAX_MILLISECONDS", "TIMESTAMP_MIN_MICROSECONDS", "TIMESTAMP_MAX_MICROSECONDS", "plus", "Lcom/google/protobuf/Timestamp;", "t", "seconds", "nanos", "minus", "convertUnit", "Ljava/time/temporal/ChronoUnit;", "unit", "", "isTimestampInBounds", "", "evaluateTimestampAdd", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", "name", "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateTimestampAdd", "()Lkotlin/jvm/functions/Function1;", "evaluateTimestampSub", "getEvaluateTimestampSub", "evaluateTimestampTrunc", "getEvaluateTimestampTrunc", "evaluateTimestampToUnixMicros", "getEvaluateTimestampToUnixMicros", "evaluateTimestampToUnixMillis", "getEvaluateTimestampToUnixMillis", "evaluateTimestampToUnixSeconds", "getEvaluateTimestampToUnixSeconds", "isMicrosecondsInTimestampBounds", "microseconds", "isMillisecondsInTimestampBounds", "milliseconds", "isSecondsInTimestampBounds", "evaluateUnixMicrosToTimestamp", "getEvaluateUnixMicrosToTimestamp", "evaluateUnixMillisToTimestamp", "getEvaluateUnixMillisToTimestamp", "evaluateUnixSecondsToTimestamp", "getEvaluateUnixSecondsToTimestamp", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class TimestampKt {
    private static final int I_MICROS_PER_SECOND = 1000000;
    private static final int I_MILLIS_PER_SECOND = 1000;
    private static final int I_NANOS_PER_SECOND = 1000000000;
    private static final long L_MICROS_PER_SECOND = 1000000;
    private static final long L_MILLIS_PER_SECOND = 1000;
    private static final long L_NANOS_PER_SECOND = 1000000000;
    private static final long TIMESTAMP_MAX_MICROSECONDS = 253402300799999999L;
    private static final long TIMESTAMP_MAX_MILLISECONDS = 253402300799999L;
    private static final long TIMESTAMP_MAX_SECONDS = 253402300799L;
    private static final long TIMESTAMP_MIN_MICROSECONDS = -62135596800000000L;
    private static final long TIMESTAMP_MIN_MILLISECONDS = -62135596800000L;
    private static final long TIMESTAMP_MIN_SECONDS = -62135596800L;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampToUnixMicros;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampToUnixMillis;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampToUnixSeconds;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateUnixMicrosToTimestamp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateUnixMillisToTimestamp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateUnixSecondsToTimestamp;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampAdd = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$1
        @Override // p005kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 3) {
                throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function3 = params.get(2);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$1.1
                @Override // p005kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(final MutableDocument input) {
                    Timestamp timestampValue;
                    Intrinsics.checkNotNullParameter(input, "input");
                    final Function1 function4 = function1;
                    final Function1 function5 = function2;
                    final Function1 function6 = function3;
                    try {
                        Function0<EvaluateResult> function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.1.1.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // p005kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function4.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function7 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.1.1.2
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // p005kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function5.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function8 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.1.1.3
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // p005kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function6.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function9 = function7;
                        Function0<EvaluateResult> function10 = function0;
                        if (function10.invoke().getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = function10.invoke().getValue();
                        if (function9.invoke().getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = function9.invoke().getValue();
                        if (function8.invoke().getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value3 = function8.invoke().getValue();
                        Long lValueOf = null;
                        Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                        if (i == -1 || i == 1) {
                            timestampValue = null;
                        } else {
                            if (i != 3) {
                                return EvaluateResultError.INSTANCE;
                            }
                            timestampValue = value.getTimestampValue();
                        }
                        Value.ValueTypeCase valueTypeCase2 = value2 != null ? value2.getValueTypeCase() : null;
                        if ((valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()]) != 4) {
                            return EvaluateResultError.INSTANCE;
                        }
                        String stringValue = value2.getStringValue();
                        Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                        Value.ValueTypeCase valueTypeCase3 = value3 != null ? value3.getValueTypeCase() : null;
                        int i2 = valueTypeCase3 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (i2 != 5) {
                                return EvaluateResultError.INSTANCE;
                            }
                            lValueOf = Long.valueOf(value3.getIntegerValue());
                        }
                        if (timestampValue != null && lValueOf != null) {
                            Instant instantPlus = Instant.ofEpochSecond(timestampValue.getSeconds(), timestampValue.getNanos()).plus(lValueOf.longValue(), (TemporalUnit) TimestampKt.convertUnit(stringValue));
                            return !TimestampKt.isTimestampInBounds(instantPlus.getEpochSecond(), instantPlus.getNano()) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(instantPlus.getEpochSecond(), instantPlus.getNano());
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    } catch (Exception unused) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampSub = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$2
        @Override // p005kotlin.jvm.functions.Function1
        public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if (params.size() != 3) {
                throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
            }
            final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
            final Function1<? super MutableDocument, ? extends EvaluateResult> function3 = params.get(2);
            return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$ternaryTimestampFunction$2.1
                @Override // p005kotlin.jvm.functions.Function1
                public final EvaluateResult invoke(final MutableDocument input) {
                    Timestamp timestampValue;
                    Intrinsics.checkNotNullParameter(input, "input");
                    final Function1 function4 = function1;
                    final Function1 function5 = function2;
                    final Function1 function6 = function3;
                    try {
                        Function0<EvaluateResult> function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.2.1.1
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // p005kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function4.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function7 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.2.1.2
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // p005kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function5.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function8 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$.inlined.ternaryTimestampFunction.2.1.3
                            /* JADX WARN: Can't rename method to resolve collision */
                            @Override // p005kotlin.jvm.functions.Function0
                            public final EvaluateResult invoke() {
                                return (EvaluateResult) function6.invoke(input);
                            }
                        };
                        Function0<EvaluateResult> function9 = function7;
                        Function0<EvaluateResult> function10 = function0;
                        if (function10.invoke().getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = function10.invoke().getValue();
                        if (function9.invoke().getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = function9.invoke().getValue();
                        if (function8.invoke().getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value3 = function8.invoke().getValue();
                        Long lValueOf = null;
                        Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                        if (i == -1 || i == 1) {
                            timestampValue = null;
                        } else {
                            if (i != 3) {
                                return EvaluateResultError.INSTANCE;
                            }
                            timestampValue = value.getTimestampValue();
                        }
                        Value.ValueTypeCase valueTypeCase2 = value2 != null ? value2.getValueTypeCase() : null;
                        if ((valueTypeCase2 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()]) != 4) {
                            return EvaluateResultError.INSTANCE;
                        }
                        String stringValue = value2.getStringValue();
                        Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                        Value.ValueTypeCase valueTypeCase3 = value3 != null ? value3.getValueTypeCase() : null;
                        int i2 = valueTypeCase3 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (i2 != 5) {
                                return EvaluateResultError.INSTANCE;
                            }
                            lValueOf = Long.valueOf(value3.getIntegerValue());
                        }
                        if (timestampValue != null && lValueOf != null) {
                            Instant instantMinus = Instant.ofEpochSecond(timestampValue.getSeconds(), timestampValue.getNanos()).minus(lValueOf.longValue(), (TemporalUnit) TimestampKt.convertUnit(stringValue));
                            return !TimestampKt.isTimestampInBounds(instantMinus.getEpochSecond(), instantMinus.getNano()) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(instantMinus.getEpochSecond(), instantMinus.getNano());
                        }
                        return EvaluateResult.INSTANCE.getNULL();
                    } catch (Exception unused) {
                        return EvaluateResultError.INSTANCE;
                    }
                }
            };
        }
    };
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTimestampTrunc = UtilsKt.getNotImplemented();

    static {
        final Value.ValueTypeCase valueTypeCase = Value.ValueTypeCase.TIMESTAMP_VALUE;
        evaluateTimestampToUnixMicros = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase3 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase3 != valueTypeCase2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    Timestamp timestampValue = value.getTimestampValue();
                                    if (TimestampKt.isTimestampInBounds(timestampValue.getSeconds(), timestampValue.getNanos())) {
                                        return EvaluateResult.INSTANCE.m1472long(timestampValue.getSeconds() < -9223372036854L ? LongMath.checkedAdd(LongMath.checkedMultiply(timestampValue.getSeconds() + 1, 1000000L), (((long) timestampValue.getNanos()) / 1000) - 1000000) : LongMath.checkedAdd(LongMath.checkedMultiply(timestampValue.getSeconds(), 1000000L), ((long) timestampValue.getNanos()) / 1000));
                                    }
                                    return EvaluateResultError.INSTANCE;
                                } catch (Exception unused) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase2 = Value.ValueTypeCase.TIMESTAMP_VALUE;
        evaluateTimestampToUnixMillis = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase3 = valueTypeCase2;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase4 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase4 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase4.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase4 != valueTypeCase3) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    Timestamp timestampValue = value.getTimestampValue();
                                    if (TimestampKt.isTimestampInBounds(timestampValue.getSeconds(), timestampValue.getNanos())) {
                                        return EvaluateResult.INSTANCE.m1472long((timestampValue.getSeconds() >= 0 || timestampValue.getNanos() <= 0) ? LongMath.checkedAdd(LongMath.checkedMultiply(timestampValue.getSeconds(), 1000L), ((long) timestampValue.getNanos()) / 1000000) : LongMath.checkedAdd(LongMath.checkedMultiply(timestampValue.getSeconds() + 1, 1000L), (((long) timestampValue.getNanos()) / 1000000) - 1000));
                                    }
                                    return EvaluateResultError.INSTANCE;
                                } catch (Exception unused) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase3 = Value.ValueTypeCase.TIMESTAMP_VALUE;
        evaluateTimestampToUnixSeconds = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$3
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase4 = valueTypeCase3;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryTimestampFunction$3.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultError evaluateResultErrorM1472long;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase5 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase5 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase5.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase5 != valueTypeCase4) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    Timestamp timestampValue = value.getTimestampValue();
                                    if (TimestampKt.isTimestampInBounds(timestampValue.getSeconds(), timestampValue.getNanos())) {
                                        long nanos = timestampValue.getNanos();
                                        evaluateResultErrorM1472long = (0 > nanos || nanos >= 1000000000) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m1472long(timestampValue.getSeconds());
                                    } else {
                                        evaluateResultErrorM1472long = EvaluateResultError.INSTANCE;
                                    }
                                    return evaluateResultErrorM1472long;
                                } catch (Exception unused) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase4 = Value.ValueTypeCase.INTEGER_VALUE;
        evaluateUnixMicrosToTimestamp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase5 = valueTypeCase4;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase6 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase6 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase6.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase6 != valueTypeCase5) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    long integerValue = value.getIntegerValue();
                                    return !TimestampKt.isMicrosecondsInTimestampBounds(integerValue) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(Math.floorDiv(integerValue, 1000000L), TypefaceCompat$$ExternalSyntheticBackport0.m(integerValue, DurationKt.NANOS_IN_MILLIS) * 1000);
                                } catch (Exception unused) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase5 = Value.ValueTypeCase.INTEGER_VALUE;
        evaluateUnixMillisToTimestamp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase6 = valueTypeCase5;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase7 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase7 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase7.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase7 != valueTypeCase6) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    long integerValue = value.getIntegerValue();
                                    return !TimestampKt.isMillisecondsInTimestampBounds(integerValue) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(Math.floorDiv(integerValue, 1000L), TypefaceCompat$$ExternalSyntheticBackport0.m(integerValue, 1000) * DurationKt.NANOS_IN_MILLIS);
                                } catch (Exception unused) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase6 = Value.ValueTypeCase.INTEGER_VALUE;
        evaluateUnixSecondsToTimestamp = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$3
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase7 = valueTypeCase6;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.TimestampKt$special$$inlined$unaryLongFunction$3.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase8 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase8 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase8.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase8 != valueTypeCase7) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    long integerValue = value.getIntegerValue();
                                    return !TimestampKt.isSecondsInTimestampBounds(integerValue) ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.timestamp(integerValue, 0);
                                } catch (Exception unused) {
                                    return EvaluateResultError.INSTANCE;
                                }
                            }
                            return EvaluateResult.INSTANCE.getNULL();
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final ChronoUnit convertUnit(String unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        switch (unit.hashCode()) {
            case -1074026988:
                if (unit.equals("minute")) {
                    return ChronoUnit.MINUTES;
                }
                break;
            case -906279820:
                if (unit.equals("second")) {
                    return ChronoUnit.SECONDS;
                }
                break;
            case -368353224:
                if (unit.equals("microsecond")) {
                    return ChronoUnit.MICROS;
                }
                break;
            case 99228:
                if (unit.equals("day")) {
                    return ChronoUnit.DAYS;
                }
                break;
            case 3208676:
                if (unit.equals("hour")) {
                    return ChronoUnit.HOURS;
                }
                break;
            case 1942410881:
                if (unit.equals("millisecond")) {
                    return ChronoUnit.MILLIS;
                }
                break;
        }
        throw new IllegalArgumentException("Unexpected timestamp unit: " + unit);
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampAdd() {
        return evaluateTimestampAdd;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampSub() {
        return evaluateTimestampSub;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampToUnixMicros() {
        return evaluateTimestampToUnixMicros;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampToUnixMillis() {
        return evaluateTimestampToUnixMillis;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampToUnixSeconds() {
        return evaluateTimestampToUnixSeconds;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTimestampTrunc() {
        return evaluateTimestampTrunc;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateUnixMicrosToTimestamp() {
        return evaluateUnixMicrosToTimestamp;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateUnixMillisToTimestamp() {
        return evaluateUnixMillisToTimestamp;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateUnixSecondsToTimestamp() {
        return evaluateUnixSecondsToTimestamp;
    }

    public static final boolean isMicrosecondsInTimestampBounds(long j) {
        return j >= TIMESTAMP_MIN_MICROSECONDS && j <= TIMESTAMP_MAX_MICROSECONDS;
    }

    public static final boolean isMillisecondsInTimestampBounds(long j) {
        return j >= TIMESTAMP_MIN_MILLISECONDS && j <= 253402300799999L;
    }

    public static final boolean isSecondsInTimestampBounds(long j) {
        return j >= TIMESTAMP_MIN_SECONDS && j <= TIMESTAMP_MAX_SECONDS;
    }

    public static final boolean isTimestampInBounds(long j, int i) {
        return j >= TIMESTAMP_MIN_SECONDS && j <= TIMESTAMP_MAX_SECONDS && i >= 0 && ((long) i) < L_NANOS_PER_SECOND;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Timestamp minus(Timestamp timestamp, long j) {
        return j == 0 ? timestamp : Values.timestamp(LongMath.checkedSubtract(timestamp.getSeconds(), j), timestamp.getNanos());
    }

    public static final Timestamp minus(Timestamp t, long j, long j2) {
        Intrinsics.checkNotNullParameter(t, "t");
        if (j2 == 0) {
            return minus(t, j);
        }
        long nanos = ((long) t.getNanos()) - j2;
        return Values.timestamp(LongMath.checkedSubtract(t.getSeconds(), LongMath.checkedSubtract(j, nanos / L_NANOS_PER_SECOND)), (int) (nanos % ((long) 1000000000)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Timestamp plus(Timestamp timestamp, long j) {
        return j == 0 ? timestamp : Values.timestamp(LongMath.checkedAdd(timestamp.getSeconds(), j), timestamp.getNanos());
    }

    public static final Timestamp plus(Timestamp t, long j, long j2) {
        Intrinsics.checkNotNullParameter(t, "t");
        if (j2 == 0) {
            return plus(t, j);
        }
        long nanos = ((long) t.getNanos()) + j2;
        return Values.timestamp(LongMath.checkedAdd(LongMath.checkedAdd(t.getSeconds(), j), nanos / L_NANOS_PER_SECOND), (int) (nanos % ((long) 1000000000)));
    }
}
