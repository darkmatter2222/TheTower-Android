package com.google.firebase.firestore.pipeline.evaluation;

import android.icu.lang.UCharacter;
import com.google.common.base.CharMatcher;
import com.google.common.collect.ImmutableList;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.firebase.firestore.Blob;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.RegexUtils;
import com.google.firestore.v1.Value;
import com.google.protobuf.ByteString;
import com.google.re2j.Matcher;
import com.google.re2j.Pattern;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.fh;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0013\u001a\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002\u001a\u0010\u0010&\u001a\u00020'2\u0006\u0010\u0006\u001a\u00020'H\u0002\u001a\u0010\u0010(\u001a\u00020)2\u0006\u0010\u0006\u001a\u00020*H\u0002\u001a\u0017\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0002\u00100\u001a\u0010\u0010?\u001a\u00020'2\u0006\u0010@\u001a\u00020'H\u0002\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\f\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\f\"w\u0010\u001c\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\f\"w\u0010 \u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\f\"w\u0010\"\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\f\"w\u0010$\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\f\"w\u0010+\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\f\"w\u00101\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\f\"w\u00103\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\f\"w\u00105\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\f\"w\u00107\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b8\u0010\f\"w\u00109\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b:\u0010\f\"w\u0010;\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010\f\"w\u0010=\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010\f¨\u0006A"}, d2 = {"evaluateStrConcat", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", "name", "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateStrConcat", "()Lkotlin/jvm/functions/Function1;", "evaluateStrContains", "getEvaluateStrContains", "evaluateStartsWith", "getEvaluateStartsWith", "evaluateEndsWith", "getEvaluateEndsWith", "evaluateByteLength", "getEvaluateByteLength", "evaluateCharLength", "getEvaluateCharLength", "isUpperCaseImpl", "", "c", "", "toLowerCaseImpl", "evaluateToLowercase", "getEvaluateToLowercase", "isLowerCaseImpl", "toUpperCaseImpl", "evaluateToUppercase", "getEvaluateToUppercase", "evaluateReverse", "getEvaluateReverse", "evaluateStringReverse", "getEvaluateStringReverse", "stringReverse", "", "bytesReverse", "", "Lcom/google/protobuf/ByteString;", "evaluateSplit", "getEvaluateSplit", "getIntegerOrElse", "", "value", "(Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;)Ljava/lang/Long;", "evaluateSubstring", "getEvaluateSubstring", "evaluateTrim", "getEvaluateTrim", "evaluateRegexContains", "getEvaluateRegexContains", "evaluateRegexMatch", "getEvaluateRegexMatch", "evaluateRegexFind", "getEvaluateRegexFind", "evaluateRegexFindAll", "getEvaluateRegexFindAll", "evaluateLike", "getEvaluateLike", "likeToRegex", "like", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class Strings {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateByteLength;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateCharLength;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateEndsWith;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateLike;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexContains;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexFind;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexFindAll;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateRegexMatch;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateReverse;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateSplit;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStartsWith;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStrConcat;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStrContains;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateStringReverse;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateSubstring;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateToLowercase;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateToUppercase;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateTrim;

    /* JADX INFO: compiled from: Strings.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Value.ValueTypeCase.values().length];
            try {
                iArr[Value.ValueTypeCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Value.ValueTypeCase.BYTES_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Value.ValueTypeCase.ARRAY_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        final Value.ValueTypeCase valueTypeCase = Value.ValueTypeCase.STRING_VALUE;
        evaluateStrConcat = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$variadicStringFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final Value.ValueTypeCase valueTypeCase2 = valueTypeCase;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$variadicStringFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        ArrayList arrayList = new ArrayList(params.size());
                        Iterator it = params.iterator();
                        boolean z = false;
                        while (it.hasNext()) {
                            EvaluateResult evaluateResult = (EvaluateResult) ((Function1) it.next()).invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase3 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase3 == null ? -1 : UtilsKt.C34371.C00661.WhenMappings.$EnumSwitchMapping$0[valueTypeCase3.ordinal()];
                            if (i == -1 || i == 1) {
                                z = true;
                            } else {
                                if (valueTypeCase3 != valueTypeCase2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                Value value2 = evaluateResult.getValue();
                                Intrinsics.checkNotNull(value2);
                                arrayList.add(value2.getStringValue());
                            }
                        }
                        if (z) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                            StringBuilder sb = new StringBuilder();
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                sb.append((String) it2.next());
                            }
                            String string = sb.toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            return companion.string(string);
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase2 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase3 = Value.ValueTypeCase.STRING_VALUE;
        evaluateStrContains = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase4 = valueTypeCase2;
                final Value.ValueTypeCase valueTypeCase5 = valueTypeCase3;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) params.get(0)).invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = evaluateResult.getValue();
                        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) params.get(1)).invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase6 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase6 == null ? -1 : UtilsKt.C34331.C00611.WhenMappings.$EnumSwitchMapping$0[valueTypeCase6.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase6 != valueTypeCase4) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value.ValueTypeCase valueTypeCase7 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase7 == null ? -1 : UtilsKt.C34331.C00611.WhenMappings.$EnumSwitchMapping$0[valueTypeCase7.ordinal()];
                        if (i2 == -1 || i2 == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase7 != valueTypeCase5) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return EvaluateResult.INSTANCE.m1469boolean(StringsKt.contains$default((CharSequence) value.getStringValue(), (CharSequence) value2.getStringValue(), false, 2, (Object) null));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase4 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase5 = Value.ValueTypeCase.STRING_VALUE;
        evaluateStartsWith = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase6 = valueTypeCase4;
                final Value.ValueTypeCase valueTypeCase7 = valueTypeCase5;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) params.get(0)).invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = evaluateResult.getValue();
                        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) params.get(1)).invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase8 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase8 == null ? -1 : UtilsKt.C34331.C00611.WhenMappings.$EnumSwitchMapping$0[valueTypeCase8.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase8 != valueTypeCase6) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value.ValueTypeCase valueTypeCase9 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase9 == null ? -1 : UtilsKt.C34331.C00611.WhenMappings.$EnumSwitchMapping$0[valueTypeCase9.ordinal()];
                        if (i2 == -1 || i2 == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase9 != valueTypeCase7) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return EvaluateResult.INSTANCE.m1469boolean(StringsKt.startsWith$default(value.getStringValue(), value2.getStringValue(), false, 2, (Object) null));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase6 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase7 = Value.ValueTypeCase.STRING_VALUE;
        evaluateEndsWith = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$3
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Value.ValueTypeCase valueTypeCase8 = valueTypeCase6;
                final Value.ValueTypeCase valueTypeCase9 = valueTypeCase7;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryStringStringFunction$3.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) params.get(0)).invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = evaluateResult.getValue();
                        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) params.get(1)).invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase10 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase10 == null ? -1 : UtilsKt.C34331.C00611.WhenMappings.$EnumSwitchMapping$0[valueTypeCase10.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase10 != valueTypeCase8) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value.ValueTypeCase valueTypeCase11 = value2 != null ? value2.getValueTypeCase() : null;
                        int i2 = valueTypeCase11 == null ? -1 : UtilsKt.C34331.C00611.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                        if (i2 == -1 || i2 == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase11 != valueTypeCase9) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            return EvaluateResult.INSTANCE.m1469boolean(StringsKt.endsWith$default(value.getStringValue(), value2.getStringValue(), false, 2, (Object) null));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase8 = Value.ValueTypeCase.BYTES_VALUE;
        final Value.ValueTypeCase valueTypeCase9 = Value.ValueTypeCase.STRING_VALUE;
        evaluateByteLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase10 = valueTypeCase8;
                final Value.ValueTypeCase valueTypeCase11 = valueTypeCase9;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value = evaluateResult.getValue();
                        Value.ValueTypeCase valueTypeCase12 = value != null ? value.getValueTypeCase() : null;
                        int i = valueTypeCase12 == null ? -1 : UtilsKt.AnonymousClass2.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                        if (i == -1 || i == 1) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        if (valueTypeCase12 == valueTypeCase10) {
                            try {
                                return EvaluateResult.INSTANCE.m1471long(value.getBytesValue().size());
                            } catch (Exception unused) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        if (valueTypeCase12 != valueTypeCase11) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            String stringValue = value.getStringValue();
                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                            byte[] bytes = stringValue.getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                            return companion.m1471long(bytes.length);
                        } catch (Exception unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase10 = Value.ValueTypeCase.STRING_VALUE;
        evaluateCharLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryStringFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Value.ValueTypeCase valueTypeCase11 = valueTypeCase10;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryStringFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase12 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase12 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                            if (i != -1 && i != 1) {
                                if (valueTypeCase12 != valueTypeCase11) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                try {
                                    String stringValue = value.getStringValue();
                                    return EvaluateResult.INSTANCE.m1471long(stringValue.codePointCount(0, stringValue.length()));
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
        evaluateToLowercase = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase11 = value != null ? value.getValueTypeCase() : null;
                            int i = -1;
                            int i2 = valueTypeCase11 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                            if (i2 == -1 || i2 == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value value2 = evaluateResult.getValue();
                            Intrinsics.checkNotNull(value2);
                            Value.ValueTypeCase valueTypeCase12 = value2.getValueTypeCase();
                            if (valueTypeCase12 != null) {
                                i = Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                            }
                            if (i == 1) {
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                String stringValue = value2.getStringValue();
                                Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                String lowerCase = stringValue.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                return companion.string(lowerCase);
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            byte[] byteArray = value2.getBytesValue().toByteArray();
                            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                            int length = byteArray.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                byteArray[i3] = Strings.isUpperCaseImpl(byteArray[i3]) ? (byte) Strings.toLowerCaseImpl(byteArray[i3]) : byteArray[i3];
                            }
                            return EvaluateResult.INSTANCE.value(Values.encodeValue(byteArray));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateToUppercase = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase11 = value != null ? value.getValueTypeCase() : null;
                            int i = -1;
                            int i2 = valueTypeCase11 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                            if (i2 == -1 || i2 == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value value2 = evaluateResult.getValue();
                            Intrinsics.checkNotNull(value2);
                            Value.ValueTypeCase valueTypeCase12 = value2.getValueTypeCase();
                            if (valueTypeCase12 != null) {
                                i = Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                            }
                            if (i == 1) {
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                String stringValue = value2.getStringValue();
                                Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                String upperCase = stringValue.toUpperCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                return companion.string(upperCase);
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            byte[] byteArray = value2.getBytesValue().toByteArray();
                            Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                            int length = byteArray.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                byteArray[i3] = Strings.isLowerCaseImpl(byteArray[i3]) ? (byte) Strings.toUpperCaseImpl(byteArray[i3]) : byteArray[i3];
                            }
                            return EvaluateResult.INSTANCE.value(Values.encodeValue(byteArray));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateReverse = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$3
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$3.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase11 = value != null ? value.getValueTypeCase() : null;
                            int i = -1;
                            int i2 = valueTypeCase11 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                            if (i2 == -1 || i2 == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value value2 = evaluateResult.getValue();
                            Intrinsics.checkNotNull(value2);
                            Value.ValueTypeCase valueTypeCase12 = value2.getValueTypeCase();
                            if (valueTypeCase12 != null) {
                                i = Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                            }
                            if (i == 1) {
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                String stringValue = value2.getStringValue();
                                Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                return companion.string(Strings.stringReverse(stringValue));
                            }
                            if (i != 2) {
                                if (i != 3) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                List<Value> valuesList = value2.getArrayValue().getValuesList();
                                Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                                return companion2.value(Values.encodeValue(CollectionsKt.reversed(valuesList)));
                            }
                            EvaluateResult.Companion companion3 = EvaluateResult.INSTANCE;
                            ByteString bytesValue = value2.getBytesValue();
                            Intrinsics.checkNotNullExpressionValue(bytesValue, "getBytesValue(...)");
                            Blob blobFromBytes = Blob.fromBytes(Strings.bytesReverse(bytesValue));
                            Intrinsics.checkNotNullExpressionValue(blobFromBytes, "fromBytes(...)");
                            return companion3.value(Values.encodeValue(blobFromBytes));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateStringReverse = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$4
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$4.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase11 = value != null ? value.getValueTypeCase() : null;
                            int i = -1;
                            int i2 = valueTypeCase11 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                            if (i2 == -1 || i2 == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value value2 = evaluateResult.getValue();
                            Intrinsics.checkNotNull(value2);
                            Value.ValueTypeCase valueTypeCase12 = value2.getValueTypeCase();
                            if (valueTypeCase12 != null) {
                                i = Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                            }
                            if (i == 1) {
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                String stringValue = value2.getStringValue();
                                Intrinsics.checkNotNullExpressionValue(stringValue, "getStringValue(...)");
                                return companion.string(Strings.stringReverse(stringValue));
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                            ByteString bytesValue = value2.getBytesValue();
                            Intrinsics.checkNotNullExpressionValue(bytesValue, "getBytesValue(...)");
                            Blob blobFromBytes = Blob.fromBytes(Strings.bytesReverse(bytesValue));
                            Intrinsics.checkNotNullExpressionValue(blobFromBytes, "fromBytes(...)");
                            return companion2.value(Values.encodeValue(blobFromBytes));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateSplit = UtilsKt.getNotImplemented();
        evaluateSubstring = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$ternaryLazyFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 3) {
                    throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function3 = params.get(2);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$ternaryLazyFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(final MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        final Function1 function4 = function1;
                        final Function1 function5 = function2;
                        final Function1 function6 = function3;
                        try {
                            Function0<EvaluateResult> function0 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$.inlined.ternaryLazyFunction.1.1.1
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // p005kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function4.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function7 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$.inlined.ternaryLazyFunction.1.1.2
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // p005kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function5.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function8 = new Function0<EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$.inlined.ternaryLazyFunction.1.1.3
                                /* JADX WARN: Can't rename method to resolve collision */
                                @Override // p005kotlin.jvm.functions.Function0
                                public final EvaluateResult invoke() {
                                    return (EvaluateResult) function6.invoke(input);
                                }
                            };
                            Function0<EvaluateResult> function9 = function0;
                            Long integerOrElse = Strings.getIntegerOrElse(function7.invoke());
                            if (integerOrElse == null) {
                                return EvaluateResultError.INSTANCE;
                            }
                            long jLongValue = integerOrElse.longValue();
                            Long integerOrElse2 = Strings.getIntegerOrElse(function8.invoke());
                            if (integerOrElse2 == null) {
                                return EvaluateResultError.INSTANCE;
                            }
                            long jLongValue2 = integerOrElse2.longValue();
                            if (jLongValue2 < 0) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = function9.invoke().getValue();
                            Value.ValueTypeCase valueTypeCase11 = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase11 == null ? -1 : Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                            if (i != 1) {
                                if (i != 2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                ByteString bytesValue = value.getBytesValue();
                                int size = bytesValue.size();
                                int i2 = size - 1;
                                if (jLongValue < 0) {
                                    jLongValue = Math.max(0L, ((long) i2) + jLongValue + 1);
                                }
                                if (i2 < jLongValue) {
                                    return EvaluateResult.INSTANCE.value(Values.encodeValue(new byte[0]));
                                }
                                int iMin = Math.min(Integer.MAX_VALUE, Math.min(IntMath.saturatedAdd(Ints.saturatedCast(jLongValue), Ints.saturatedCast(jLongValue2)), size));
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                Blob blobFromByteString = Blob.fromByteString(bytesValue.substring((int) jLongValue, iMin));
                                Intrinsics.checkNotNullExpressionValue(blobFromByteString, "fromByteString(...)");
                                return companion.value(Values.encodeValue(blobFromByteString));
                            }
                            String stringValue = value.getStringValue();
                            if (jLongValue < 0) {
                                Intrinsics.checkNotNull(stringValue);
                                jLongValue = Math.max(0L, ((long) stringValue.codePointCount(0, stringValue.length())) + jLongValue);
                            }
                            Intrinsics.checkNotNull(stringValue);
                            if (jLongValue >= stringValue.codePointCount(0, stringValue.length())) {
                                return EvaluateResult.INSTANCE.string("");
                            }
                            StringBuilder sb = new StringBuilder();
                            int iOffsetByCodePoints = stringValue.offsetByCodePoints(0, (int) Math.min(jLongValue, 2147483647L));
                            for (long j = 0; j < jLongValue2; j++) {
                                if (iOffsetByCodePoints >= stringValue.length()) {
                                    EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                    String string = sb.toString();
                                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                    return companion2.string(string);
                                }
                                sb.append(Character.toChars(stringValue.codePointAt(iOffsetByCodePoints)));
                                iOffsetByCodePoints = stringValue.offsetByCodePoints(iOffsetByCodePoints, 1);
                            }
                            EvaluateResult.Companion companion3 = EvaluateResult.INSTANCE;
                            String string2 = sb.toString();
                            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                            return companion3.string(string2);
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateTrim = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$5
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$unaryValueFunction$5.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResultValue evaluateResultValueValue;
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                            if (evaluateResult.getIsError()) {
                                return EvaluateResultError.INSTANCE;
                            }
                            Value value = evaluateResult.getValue();
                            Value.ValueTypeCase valueTypeCase11 = value != null ? value.getValueTypeCase() : null;
                            int i = -1;
                            int i2 = valueTypeCase11 == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase11.ordinal()];
                            if (i2 == -1 || i2 == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value value2 = evaluateResult.getValue();
                            Intrinsics.checkNotNull(value2);
                            Value.ValueTypeCase valueTypeCase12 = value2.getValueTypeCase();
                            if (valueTypeCase12 != null) {
                                i = Strings.WhenMappings.$EnumSwitchMapping$0[valueTypeCase12.ordinal()];
                            }
                            if (i == 1) {
                                EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                                String strTrimFrom = CharMatcher.whitespace().trimFrom(value2.getStringValue());
                                Intrinsics.checkNotNullExpressionValue(strTrimFrom, "trimFrom(...)");
                                return companion.string(strTrimFrom);
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            ByteString bytesValue = value2.getBytesValue();
                            int i3 = 0;
                            while (i3 < bytesValue.size() && Character.isWhitespace(bytesValue.byteAt(i3))) {
                                i3++;
                            }
                            int size = bytesValue.size() - 1;
                            while (size >= i3 && Character.isWhitespace(bytesValue.byteAt(size))) {
                                size--;
                            }
                            if (i3 > size) {
                                EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                                byte[] byteArray = ByteString.EMPTY.toByteArray();
                                Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
                                evaluateResultValueValue = companion2.value(Values.encodeValue(byteArray));
                            } else {
                                EvaluateResult.Companion companion3 = EvaluateResult.INSTANCE;
                                byte[] byteArray2 = bytesValue.substring(i3, size + 1).toByteArray();
                                Intrinsics.checkNotNullExpressionValue(byteArray2, "toByteArray(...)");
                                evaluateResultValueValue = companion3.value(Values.encodeValue(byteArray2));
                            }
                            return evaluateResultValueValue;
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase11 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase12 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexContains = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                final Strings$evaluateRegexContains$3$1 strings$evaluateRegexContains$3$1 = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexContains$3$1
                    @Override // p005kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern patternCompile;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            patternCompile = Pattern.compile(patternString);
                        } catch (Exception unused) {
                            patternCompile = null;
                        }
                        return patternCompile == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m1469boolean(patternCompile.matcher(value).find());
                    }
                };
                final Value.ValueTypeCase valueTypeCase13 = valueTypeCase11;
                final Value.ValueTypeCase valueTypeCase14 = valueTypeCase12;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value value;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult.getValue();
                        Value value3 = null;
                        Value.ValueTypeCase valueTypeCase15 = value2 != null ? value2.getValueTypeCase() : null;
                        int i = valueTypeCase15 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase15.ordinal()];
                        if (i == -1 || i == 1) {
                            value = null;
                        } else {
                            if (valueTypeCase15 != valueTypeCase13) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value = evaluateResult.getValue();
                        }
                        Value value4 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase16 = value4 != null ? value4.getValueTypeCase() : null;
                        int i2 = valueTypeCase16 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase16.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase16 != valueTypeCase14) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value3 = evaluateResult2.getValue();
                        }
                        return (value == null || value3 == null) ? EvaluateResult.INSTANCE.getNULL() : (EvaluateResult) strings$evaluateRegexContains$3$1.invoke(value.getStringValue(), value3.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase13 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase14 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexMatch = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                final Strings$evaluateRegexMatch$3$1 strings$evaluateRegexMatch$3$1 = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexMatch$3$1
                    @Override // p005kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern patternCompile;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            patternCompile = Pattern.compile(patternString);
                        } catch (Exception unused) {
                            patternCompile = null;
                        }
                        return patternCompile == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m1469boolean(patternCompile.matches(value));
                    }
                };
                final Value.ValueTypeCase valueTypeCase15 = valueTypeCase13;
                final Value.ValueTypeCase valueTypeCase16 = valueTypeCase14;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value value;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult.getValue();
                        Value value3 = null;
                        Value.ValueTypeCase valueTypeCase17 = value2 != null ? value2.getValueTypeCase() : null;
                        int i = valueTypeCase17 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase17.ordinal()];
                        if (i == -1 || i == 1) {
                            value = null;
                        } else {
                            if (valueTypeCase17 != valueTypeCase15) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value = evaluateResult.getValue();
                        }
                        Value value4 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase18 = value4 != null ? value4.getValueTypeCase() : null;
                        int i2 = valueTypeCase18 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase18.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase18 != valueTypeCase16) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value3 = evaluateResult2.getValue();
                        }
                        return (value == null || value3 == null) ? EvaluateResult.INSTANCE.getNULL() : (EvaluateResult) strings$evaluateRegexMatch$3$1.invoke(value.getStringValue(), value3.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase15 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase16 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexFind = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$3
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                final Strings$evaluateRegexFind$3$1 strings$evaluateRegexFind$3$1 = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexFind$3$1
                    @Override // p005kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern patternCompile;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            patternCompile = Pattern.compile(patternString);
                        } catch (Exception unused) {
                            patternCompile = null;
                        }
                        if (patternCompile == null) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Matcher matcher = patternCompile.matcher(value);
                        if (!matcher.find()) {
                            return EvaluateResult.INSTANCE.getNULL();
                        }
                        try {
                            EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
                            RegexUtils.Companion companion2 = RegexUtils.INSTANCE;
                            Intrinsics.checkNotNull(matcher);
                            return companion.value(companion2.handleMatch(matcher));
                        } catch (IllegalArgumentException unused2) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
                final Value.ValueTypeCase valueTypeCase17 = valueTypeCase15;
                final Value.ValueTypeCase valueTypeCase18 = valueTypeCase16;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$3.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value value;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult.getValue();
                        Value value3 = null;
                        Value.ValueTypeCase valueTypeCase19 = value2 != null ? value2.getValueTypeCase() : null;
                        int i = valueTypeCase19 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase19.ordinal()];
                        if (i == -1 || i == 1) {
                            value = null;
                        } else {
                            if (valueTypeCase19 != valueTypeCase17) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value = evaluateResult.getValue();
                        }
                        Value value4 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase20 = value4 != null ? value4.getValueTypeCase() : null;
                        int i2 = valueTypeCase20 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase20.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase20 != valueTypeCase18) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value3 = evaluateResult2.getValue();
                        }
                        return (value == null || value3 == null) ? EvaluateResult.INSTANCE.getNULL() : (EvaluateResult) strings$evaluateRegexFind$3$1.invoke(value.getStringValue(), value3.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase17 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase18 = Value.ValueTypeCase.STRING_VALUE;
        evaluateRegexFindAll = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$4
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                final Strings$evaluateRegexFindAll$3$1 strings$evaluateRegexFindAll$3$1 = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateRegexFindAll$3$1
                    @Override // p005kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String patternString) {
                        Pattern patternCompile;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(patternString, "patternString");
                        try {
                            patternCompile = Pattern.compile(patternString);
                        } catch (Exception unused) {
                            patternCompile = null;
                        }
                        if (patternCompile == null) {
                            return EvaluateResultError.INSTANCE;
                        }
                        ImmutableList.Builder builder = ImmutableList.builder();
                        Matcher matcher = patternCompile.matcher(value);
                        while (matcher.find()) {
                            try {
                                RegexUtils.Companion companion = RegexUtils.INSTANCE;
                                Intrinsics.checkNotNull(matcher);
                                builder.add(companion.handleMatch(matcher));
                            } catch (IllegalArgumentException unused2) {
                                return EvaluateResultError.INSTANCE;
                            }
                        }
                        EvaluateResult.Companion companion2 = EvaluateResult.INSTANCE;
                        ImmutableList immutableListBuild = builder.build();
                        Intrinsics.checkNotNullExpressionValue(immutableListBuild, "build(...)");
                        return companion2.list(immutableListBuild);
                    }
                };
                final Value.ValueTypeCase valueTypeCase19 = valueTypeCase17;
                final Value.ValueTypeCase valueTypeCase20 = valueTypeCase18;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$4.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value value;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult.getValue();
                        Value value3 = null;
                        Value.ValueTypeCase valueTypeCase21 = value2 != null ? value2.getValueTypeCase() : null;
                        int i = valueTypeCase21 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase21.ordinal()];
                        if (i == -1 || i == 1) {
                            value = null;
                        } else {
                            if (valueTypeCase21 != valueTypeCase19) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value = evaluateResult.getValue();
                        }
                        Value value4 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase22 = value4 != null ? value4.getValueTypeCase() : null;
                        int i2 = valueTypeCase22 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase22.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase22 != valueTypeCase20) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value3 = evaluateResult2.getValue();
                        }
                        return (value == null || value3 == null) ? EvaluateResult.INSTANCE.getNULL() : (EvaluateResult) strings$evaluateRegexFindAll$3$1.invoke(value.getStringValue(), value3.getStringValue());
                    }
                };
            }
        };
        final Value.ValueTypeCase valueTypeCase19 = Value.ValueTypeCase.STRING_VALUE;
        final Value.ValueTypeCase valueTypeCase20 = Value.ValueTypeCase.STRING_VALUE;
        evaluateLike = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$5
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                final Strings$evaluateLike$3$1 strings$evaluateLike$3$1 = new Function2<String, String, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$evaluateLike$3$1
                    @Override // p005kotlin.jvm.functions.Function2
                    public final EvaluateResult invoke(String value, String like) {
                        Pattern patternCompile;
                        Intrinsics.checkNotNullParameter(value, "value");
                        Intrinsics.checkNotNullParameter(like, "like");
                        try {
                            patternCompile = Pattern.compile(Strings.likeToRegex(like));
                        } catch (Exception unused) {
                            patternCompile = null;
                        }
                        return patternCompile == null ? EvaluateResultError.INSTANCE : EvaluateResult.INSTANCE.m1469boolean(patternCompile.matches(value));
                    }
                };
                final Value.ValueTypeCase valueTypeCase21 = valueTypeCase19;
                final Value.ValueTypeCase valueTypeCase22 = valueTypeCase20;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.Strings$special$$inlined$binaryFunctionConstructorType$5.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Value value;
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        Value value2 = evaluateResult.getValue();
                        Value value3 = null;
                        Value.ValueTypeCase valueTypeCase23 = value2 != null ? value2.getValueTypeCase() : null;
                        int i = valueTypeCase23 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase23.ordinal()];
                        if (i == -1 || i == 1) {
                            value = null;
                        } else {
                            if (valueTypeCase23 != valueTypeCase21) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value = evaluateResult.getValue();
                        }
                        Value value4 = evaluateResult2.getValue();
                        Value.ValueTypeCase valueTypeCase24 = value4 != null ? value4.getValueTypeCase() : null;
                        int i2 = valueTypeCase24 == null ? -1 : UtilsKt.AnonymousClass1.C00601.WhenMappings.$EnumSwitchMapping$0[valueTypeCase24.ordinal()];
                        if (i2 != -1 && i2 != 1) {
                            if (valueTypeCase24 != valueTypeCase22) {
                                return EvaluateResultError.INSTANCE;
                            }
                            value3 = evaluateResult2.getValue();
                        }
                        return (value == null || value3 == null) ? EvaluateResult.INSTANCE.getNULL() : (EvaluateResult) strings$evaluateLike$3$1.invoke(value.getStringValue(), value3.getStringValue());
                    }
                };
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] bytesReverse(ByteString byteString) {
        byte[] byteArray = byteString.toByteArray();
        int length = byteArray.length / 2;
        for (int i = 0; i < length; i++) {
            byte b = byteArray[i];
            byteArray[i] = byteArray[(byteArray.length - i) - 1];
            byteArray[(byteArray.length - i) - 1] = b;
        }
        Intrinsics.checkNotNull(byteArray);
        return byteArray;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateByteLength() {
        return evaluateByteLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateCharLength() {
        return evaluateCharLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateEndsWith() {
        return evaluateEndsWith;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateLike() {
        return evaluateLike;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexContains() {
        return evaluateRegexContains;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexFind() {
        return evaluateRegexFind;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexFindAll() {
        return evaluateRegexFindAll;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateRegexMatch() {
        return evaluateRegexMatch;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateReverse() {
        return evaluateReverse;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateSplit() {
        return evaluateSplit;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStartsWith() {
        return evaluateStartsWith;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStrConcat() {
        return evaluateStrConcat;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStrContains() {
        return evaluateStrContains;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateStringReverse() {
        return evaluateStringReverse;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateSubstring() {
        return evaluateSubstring;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateToLowercase() {
        return evaluateToLowercase;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateToUppercase() {
        return evaluateToUppercase;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateTrim() {
        return evaluateTrim;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Long getIntegerOrElse(EvaluateResult evaluateResult) {
        Value value;
        if (!evaluateResult.getIsSuccess()) {
            return null;
        }
        Value value2 = evaluateResult.getValue();
        if ((value2 != null ? value2.getValueTypeCase() : null) == Value.ValueTypeCase.INTEGER_VALUE && (value = evaluateResult.getValue()) != null) {
            return Long.valueOf(value.getIntegerValue());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isLowerCaseImpl(int i) {
        return UCharacter.isLowerCase(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isUpperCaseImpl(int i) {
        return UCharacter.isUpperCase(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String likeToRegex(String str) throws Exception {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (z) {
                if (cCharAt == '\\') {
                    sb.append("\\");
                } else {
                    sb.append(cCharAt);
                }
                z = false;
            } else if (cCharAt == '$') {
                sb.append("\\$");
            } else if (cCharAt == '%') {
                sb.append(".*");
            } else if (cCharAt == '.') {
                sb.append("\\.");
            } else if (cCharAt != '?') {
                switch (cCharAt) {
                    case '(':
                        sb.append("\\(");
                        break;
                    case ')':
                        sb.append("\\)");
                        break;
                    case '*':
                        sb.append("\\*");
                        break;
                    case '+':
                        sb.append("\\+");
                        break;
                    default:
                        switch (cCharAt) {
                            case '[':
                                sb.append("\\[");
                                break;
                            case '\\':
                                Unit unit = Unit.INSTANCE;
                                z = true;
                                break;
                            case ']':
                                sb.append("\\]");
                                break;
                            case '^':
                                sb.append("\\^");
                                break;
                            case fh.p0 /* 95 */:
                                sb.append('.');
                                break;
                            default:
                                switch (cCharAt) {
                                    case '{':
                                        sb.append("\\{");
                                        break;
                                    case '|':
                                        sb.append("\\|");
                                        break;
                                    case '}':
                                        sb.append("\\}");
                                        break;
                                    default:
                                        sb.append(cCharAt);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            } else {
                sb.append("\\?");
            }
        }
        if (z) {
            throw new Exception("LIKE pattern ends in backslash");
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String stringReverse(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        while (length > 0) {
            length = str.offsetByCodePoints(length, -1);
            sb.append(Character.toChars(str.codePointAt(length)));
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toLowerCaseImpl(int i) {
        return UCharacter.toLowerCase(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toUpperCaseImpl(int i) {
        return UCharacter.toUpperCase(i);
    }
}
