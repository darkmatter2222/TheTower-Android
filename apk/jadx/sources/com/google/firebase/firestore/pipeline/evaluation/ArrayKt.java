package com.google.firebase.firestore.pipeline.evaluation;

import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.ArrayValue;
import com.google.firestore.v1.Value;
import com.google.protobuf.ByteString;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: Array.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u001e\u0010-\u001a\u00020\u00072\f\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u00022\u0006\u00100\u001a\u000201H\u0002\u001a\u001e\u00102\u001a\u00020\u00072\f\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u00022\u0006\u00100\u001a\u000203H\u0002\u001a\u001c\u00108\u001a\u0002092\u0012\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0\u00020\u0002H\u0000\u001a\u001e\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020/2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020/0\u0002H\u0002\u001a\u001e\u0010>\u001a\u00020\u00072\u0006\u0010<\u001a\u00020/2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020/0\u0002H\u0002\"w\u0010\u0000\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f\"w\u0010\r\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f\"w\u0010\u000f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\f\"w\u0010\u0011\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f\"w\u0010\u0013\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\f\"w\u0010\u0015\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\f\"w\u0010\u0017\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\f\"w\u0010\u0019\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\f\"w\u0010\u001b\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\f\"w\u0010\u001d\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\f\"w\u0010\u001f\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\f\"w\u0010!\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\f\"w\u0010#\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\f\"w\u0010%\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\f\"w\u0010'\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\f\"w\u0010)\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\f\"w\u0010+\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\f\"w\u00104\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\f\"w\u00106\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\f\"w\u0010?\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010\f\"w\u0010A\u001ae\u00128\u00126\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0002¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t\u0012#\u0012!\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00070\u0001j\u0002`\b0\u0001j\u0002`\nX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bB\u0010\f¨\u0006C"}, d2 = {"evaluateArray", "Lkotlin/Function1;", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", "name", "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "params", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateFunction;", "getEvaluateArray", "()Lkotlin/jvm/functions/Function1;", "evaluateEqAny", "getEvaluateEqAny", "evaluateNotEqAny", "getEvaluateNotEqAny", "evaluateArrayContains", "getEvaluateArrayContains", "evaluateArrayContainsAny", "getEvaluateArrayContainsAny", "evaluateArrayContainsAll", "getEvaluateArrayContainsAll", "evaluateArrayLength", "getEvaluateArrayLength", "evaluateArrayReverse", "getEvaluateArrayReverse", "evaluateArrayFirst", "getEvaluateArrayFirst", "evaluateArrayLast", "getEvaluateArrayLast", "evaluateArrayFirstN", "getEvaluateArrayFirstN", "evaluateArrayLastN", "getEvaluateArrayLastN", "evaluateArrayMinimum", "getEvaluateArrayMinimum", "evaluateArrayMaximum", "getEvaluateArrayMaximum", "evaluateArrayMinimumN", "getEvaluateArrayMinimumN", "evaluateArrayMaximumN", "getEvaluateArrayMaximumN", "evaluateJoin", "getEvaluateJoin", "joinStrings", "array", "Lcom/google/firestore/v1/Value;", "delimiter", "", "joinBytes", "Lcom/google/protobuf/ByteString;", "evaluateArrayGet", "getEvaluateArrayGet", "evaluateArrayConcat", "getEvaluateArrayConcat", "arrayConcatImpl", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResultValue;", "arrays", "equalAny", "value", "list", "notEqualAny", "evaluateArrayIndexOf", "getEvaluateArrayIndexOf", "evaluateArrayIndexOfAll", "getEvaluateArrayIndexOfAll", "com.google.firebase-firebase-firestore"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class ArrayKt {
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArray;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayConcat;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayContains;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayContainsAll;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayContainsAny;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayFirst;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayFirstN;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayGet;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayIndexOf;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayIndexOfAll;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayLast;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayLastN;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayLength;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayMaximum;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayMaximumN;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayMinimum;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayMinimumN;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateArrayReverse;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateEqAny;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateJoin;
    private static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> evaluateNotEqAny;

    /* JADX INFO: compiled from: Array.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Values.Enterprise.CompareResult.values().length];
            try {
                iArr[Values.Enterprise.CompareResult.LESS_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Values.Enterprise.CompareResult.GREATER_THAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Value.ValueTypeCase.values().length];
            try {
                iArr2[Value.ValueTypeCase.STRING_VALUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Value.ValueTypeCase.BYTES_VALUE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Value.ValueTypeCase.NULL_VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        final EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        evaluateArray = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$variadicNullableValueFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                final EvaluateResult.Companion companion2 = companion;
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$variadicNullableValueFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        EvaluateResult list;
                        Intrinsics.checkNotNullParameter(input, "input");
                        List list2 = params;
                        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            arrayList.add((EvaluateResult) ((Function1) it.next()).invoke(input));
                        }
                        try {
                            ArrayList arrayList2 = arrayList;
                            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
                            Iterator it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                Value value = ((EvaluateResult) it2.next()).getValue();
                                if (value == null) {
                                    list = EvaluateResultError.INSTANCE;
                                    return list;
                                }
                                arrayList3.add(value);
                            }
                            list = companion2.list(arrayList3);
                            return list;
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateEqAny = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value value = evaluateResult.getValue();
                            Value value2 = evaluateResult2.getValue();
                            Value.ValueTypeCase valueTypeCase = value2 != null ? value2.getValueTypeCase() : null;
                            int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == -1 || i == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            List<Value> valuesList = value2.getArrayValue().getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                            return value == null ? EvaluateResult.INSTANCE.getFALSE() : ArrayKt.equalAny(value, valuesList);
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateNotEqAny = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryValueArrayFunction$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value value = evaluateResult.getValue();
                            Value value2 = evaluateResult2.getValue();
                            Value.ValueTypeCase valueTypeCase = value2 != null ? value2.getValueTypeCase() : null;
                            int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == -1 || i == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            List<Value> valuesList = value2.getArrayValue().getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                            return value == null ? EvaluateResult.INSTANCE.getFALSE() : ArrayKt.notEqualAny(value, valuesList);
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateArrayContains = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayValueFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 2) {
                    throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                final Function1<? super MutableDocument, ? extends EvaluateResult> function2 = params.get(1);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayValueFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        EvaluateResult evaluateResult = (EvaluateResult) function1.invoke(input);
                        if (evaluateResult.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        EvaluateResult evaluateResult2 = (EvaluateResult) function2.invoke(input);
                        if (evaluateResult2.getIsError()) {
                            return EvaluateResultError.INSTANCE;
                        }
                        try {
                            Value value = evaluateResult.getValue();
                            Value value2 = evaluateResult2.getValue();
                            Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == -1 || i == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            List<Value> valuesList = value.getArrayValue().getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                            return value2 == null ? EvaluateResult.INSTANCE.getFALSE() : ArrayKt.equalAny(value2, valuesList);
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateArrayContainsAny = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() == 2) {
                    return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$1.1
                        @Override // p005kotlin.jvm.functions.Function1
                        public final EvaluateResult invoke(MutableDocument input) {
                            List<Value> valuesList;
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
                            List<Value> valuesList2 = null;
                            Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase == null ? -1 : UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == -1 || i == 1) {
                                valuesList = null;
                            } else {
                                if (i != 2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                valuesList = value.getArrayValue().getValuesList();
                            }
                            Value.ValueTypeCase valueTypeCase2 = value2 != null ? value2.getValueTypeCase() : null;
                            int i2 = valueTypeCase2 == null ? -1 : UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i2 != -1 && i2 != 1) {
                                if (i2 != 2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                valuesList2 = value2.getArrayValue().getValuesList();
                            }
                            if (valuesList == null || valuesList2 == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            for (Value value3 : valuesList) {
                                Iterator<Value> it = valuesList2.iterator();
                                while (it.hasNext()) {
                                    boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value3, it.next());
                                    if (zEquals$com_google_firebase_firebase_firestore) {
                                        return EvaluateResult.INSTANCE.getTRUE();
                                    }
                                    if (zEquals$com_google_firebase_firebase_firestore) {
                                        throw new NoWhenBranchMatchedException();
                                    }
                                }
                            }
                            return EvaluateResult.INSTANCE.getFALSE();
                        }
                    };
                }
                throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
            }
        };
        evaluateArrayContainsAll = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(final List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() == 2) {
                    return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$binaryArrayArrayFunction$2.1
                        @Override // p005kotlin.jvm.functions.Function1
                        public final EvaluateResult invoke(MutableDocument input) {
                            List<Value> valuesList;
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
                            List<Value> valuesList2 = null;
                            Value.ValueTypeCase valueTypeCase = value != null ? value.getValueTypeCase() : null;
                            int i = valueTypeCase == null ? -1 : UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == -1 || i == 1) {
                                valuesList = null;
                            } else {
                                if (i != 2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                valuesList = value.getArrayValue().getValuesList();
                            }
                            Value.ValueTypeCase valueTypeCase2 = value2 != null ? value2.getValueTypeCase() : null;
                            int i2 = valueTypeCase2 == null ? -1 : UtilsKt$binaryFunction$7.AnonymousClass1.WhenMappings.$EnumSwitchMapping$0[valueTypeCase2.ordinal()];
                            if (i2 != -1 && i2 != 1) {
                                if (i2 != 2) {
                                    return EvaluateResultError.INSTANCE;
                                }
                                valuesList2 = value2.getArrayValue().getValuesList();
                            }
                            if (valuesList == null || valuesList2 == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            for (Value value3 : valuesList2) {
                                Iterator<Value> it = valuesList.iterator();
                                while (it.hasNext()) {
                                    boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(it.next(), value3);
                                    if (!zEquals$com_google_firebase_firebase_firestore) {
                                        if (zEquals$com_google_firebase_firebase_firestore) {
                                            throw new NoWhenBranchMatchedException();
                                        }
                                    }
                                }
                                return EvaluateResult.INSTANCE.getFALSE();
                            }
                            return EvaluateResult.INSTANCE.getTRUE();
                        }
                    };
                }
                throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(params.size()));
            }
        };
        evaluateArrayLength = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$1.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            Value value = ((EvaluateResult) function1.invoke(input)).getValue();
                            if (value == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value.ValueTypeCase valueTypeCase = value.getValueTypeCase();
                            int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            List<Value> valuesList = value.getArrayValue().getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                            return EvaluateResult.INSTANCE.m1471long(valuesList.size());
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateArrayReverse = (Function1) new Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<? super MutableDocument, ? extends EvaluateResult>>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$2
            @Override // p005kotlin.jvm.functions.Function1
            public final Function1<MutableDocument, EvaluateResult> invoke(List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>> params) {
                Intrinsics.checkNotNullParameter(params, "params");
                if (params.size() != 1) {
                    throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(params.size()));
                }
                final Function1<? super MutableDocument, ? extends EvaluateResult> function1 = params.get(0);
                return new Function1<MutableDocument, EvaluateResult>() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$special$$inlined$unaryArrayFunction$2.1
                    @Override // p005kotlin.jvm.functions.Function1
                    public final EvaluateResult invoke(MutableDocument input) {
                        Intrinsics.checkNotNullParameter(input, "input");
                        try {
                            Value value = ((EvaluateResult) function1.invoke(input)).getValue();
                            if (value == null) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            Value.ValueTypeCase valueTypeCase = value.getValueTypeCase();
                            int i = valueTypeCase == null ? -1 : UtilsKt.WhenMappings.$EnumSwitchMapping$0[valueTypeCase.ordinal()];
                            if (i == 1) {
                                return EvaluateResult.INSTANCE.getNULL();
                            }
                            if (i != 2) {
                                return EvaluateResultError.INSTANCE;
                            }
                            List<Value> valuesList = value.getArrayValue().getValuesList();
                            Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                            return EvaluateResult.INSTANCE.value(Values.encodeValue(CollectionsKt.reversed(valuesList)));
                        } catch (Exception unused) {
                            return EvaluateResultError.INSTANCE;
                        }
                    }
                };
            }
        };
        evaluateArrayFirst = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda4
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayFirst$lambda$8((List) obj);
            }
        };
        evaluateArrayLast = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda8
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayLast$lambda$10((List) obj);
            }
        };
        evaluateArrayFirstN = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda9
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayFirstN$lambda$12((List) obj);
            }
        };
        evaluateArrayLastN = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda10
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayLastN$lambda$14((List) obj);
            }
        };
        evaluateArrayMinimum = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda12
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMinimum$lambda$16((List) obj);
            }
        };
        evaluateArrayMaximum = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda13
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMaximum$lambda$18((List) obj);
            }
        };
        evaluateArrayMinimumN = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda14
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMinimumN$lambda$22((List) obj);
            }
        };
        evaluateArrayMaximumN = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda15
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMaximumN$lambda$26((List) obj);
            }
        };
        evaluateJoin = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda16
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateJoin$lambda$28((List) obj);
            }
        };
        evaluateArrayGet = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda17
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayGet$lambda$32((List) obj);
            }
        };
        evaluateArrayConcat = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda5
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayConcat$lambda$34((List) obj);
            }
        };
        evaluateArrayIndexOf = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda6
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayIndexOf$lambda$36((List) obj);
            }
        };
        evaluateArrayIndexOfAll = new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda7
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayIndexOfAll$lambda$38((List) obj);
            }
        };
    }

    public static final EvaluateResultValue arrayConcatImpl(List<? extends List<Value>> arrays) {
        Intrinsics.checkNotNullParameter(arrays, "arrays");
        return EvaluateResult.INSTANCE.value(Values.encodeValue(CollectionsKt.flatten(arrays)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult equalAny(Value value, List<Value> list) {
        Iterator<Value> it = list.iterator();
        while (it.hasNext()) {
            boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value, it.next());
            if (zEquals$com_google_firebase_firebase_firestore) {
                return EvaluateResult.INSTANCE.getTRUE();
            }
            if (zEquals$com_google_firebase_firebase_firestore) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return EvaluateResult.INSTANCE.getFALSE();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayConcat$lambda$34(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda21
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayConcat$lambda$34$lambda$33(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayConcat$lambda$34$lambda$33(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() < 2) {
            throw Assert.fail("Function should have at least 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            EvaluateResult evaluateResult = (EvaluateResult) ((Function1) it.next()).invoke(input);
            if (evaluateResult instanceof EvaluateResultValue) {
                EvaluateResultValue evaluateResultValue = (EvaluateResultValue) evaluateResult;
                Value value = evaluateResultValue.getValue();
                if (value == null || !value.hasArrayValue()) {
                    Value value2 = evaluateResultValue.getValue();
                    if (value2 == null || !value2.hasNullValue()) {
                        return EvaluateResultError.INSTANCE;
                    }
                } else {
                    List<Value> valuesList = evaluateResultValue.getValue().getArrayValue().getValuesList();
                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                    arrayList.add(valuesList);
                }
            } else if (!Intrinsics.areEqual(evaluateResult, EvaluateResultUnset.INSTANCE)) {
                if (Intrinsics.areEqual(evaluateResult, EvaluateResultError.INSTANCE)) {
                    return EvaluateResultError.INSTANCE;
                }
                throw new NoWhenBranchMatchedException();
            }
            z = true;
        }
        return z ? EvaluateResult.INSTANCE.getNULL() : arrayConcatImpl(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayFirst$lambda$8(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda26
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayFirst$lambda$8$lambda$7(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayFirst$lambda$8$lambda$7(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 1) {
            throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (evaluateResult.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        if (evaluateResult.getIsUnset()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value = evaluateResult.getValue();
        Intrinsics.checkNotNull(value);
        if (value.hasNullValue()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        if (valuesList.isEmpty()) {
            return EvaluateResultUnset.INSTANCE;
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        Intrinsics.checkNotNull(valuesList);
        Object objFirst = CollectionsKt.first((List<? extends Object>) valuesList);
        Intrinsics.checkNotNullExpressionValue(objFirst, "first(...)");
        return companion.value((Value) objFirst);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayFirstN$lambda$12(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda23
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayFirstN$lambda$12$lambda$11(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayFirstN$lambda$12$lambda$11(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (evaluateResult.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        if (evaluateResult.getIsUnset()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value = evaluateResult.getValue();
        Intrinsics.checkNotNull(value);
        if (value.hasNullValue()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        if (evaluateResult2.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value2 = evaluateResult2.getValue();
        if (value2 == null || !value2.hasIntegerValue()) {
            return EvaluateResultError.INSTANCE;
        }
        int integerValue = (int) value2.getIntegerValue();
        if (integerValue < 0) {
            return EvaluateResultError.INSTANCE;
        }
        return EvaluateResult.INSTANCE.list(valuesList.subList(0, RangesKt.coerceAtMost(integerValue, valuesList.size())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayGet$lambda$32(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda20
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayGet$lambda$32$lambda$31(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayGet$lambda$32$lambda$31(List list, MutableDocument input) {
        Value value;
        ArrayValue arrayValue;
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        Value value2 = evaluateResult.getValue();
        List<Value> valuesList = (value2 == null || !value2.hasArrayValue() || (value = evaluateResult.getValue()) == null || (arrayValue = value.getArrayValue()) == null) ? null : arrayValue.getValuesList();
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        Value value3 = evaluateResult2.getValue();
        if (value3 == null || !value3.hasIntegerValue()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value4 = evaluateResult2.getValue();
        Long lValueOf = value4 != null ? Long.valueOf(value4.getIntegerValue()) : null;
        if (valuesList == null) {
            return EvaluateResultUnset.INSTANCE;
        }
        Intrinsics.checkNotNull(lValueOf);
        long jLongValue = lValueOf.longValue();
        if (jLongValue >= valuesList.size() || jLongValue < (-valuesList.size())) {
            return EvaluateResultUnset.INSTANCE;
        }
        if (jLongValue < 0) {
            jLongValue += (long) valuesList.size();
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        Value value5 = valuesList.get((int) jLongValue);
        Intrinsics.checkNotNullExpressionValue(value5, "get(...)");
        return companion.value(value5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayIndexOf$lambda$36(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayIndexOf$lambda$36$lambda$35(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayIndexOf$lambda$36$lambda$35(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 3) {
            throw Assert.fail("Function should have exactly 3 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        EvaluateResult evaluateResult3 = (EvaluateResult) ((Function1) list.get(2)).invoke(input);
        if (evaluateResult.getIsError() || evaluateResult2.getIsError() || evaluateResult3.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value = evaluateResult3.getValue();
        if (value == null || !value.hasStringValue()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value2 = evaluateResult3.getValue();
        String stringValue = value2 != null ? value2.getStringValue() : null;
        Value value3 = evaluateResult.getValue();
        if (value3 == null || Values.isNullValue(value3)) {
            return EvaluateResult.INSTANCE.value(Values.NULL_VALUE);
        }
        if (!value3.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value4 = evaluateResult2.getValue();
        if (value4 == null) {
            return EvaluateResult.INSTANCE.value(Values.NULL_VALUE);
        }
        List<Value> valuesList = value3.getArrayValue().getValuesList();
        int i = -1;
        if (Intrinsics.areEqual(stringValue, "last")) {
            int size = valuesList.size() - 1;
            if (size >= 0) {
                while (true) {
                    int i2 = size - 1;
                    if (Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(valuesList.get(size), value4)) {
                        i = size;
                        break;
                    }
                    if (i2 < 0) {
                        break;
                    }
                    size = i2;
                }
            }
        } else {
            if (!Intrinsics.areEqual(stringValue, "first")) {
                return EvaluateResultError.INSTANCE;
            }
            int size2 = valuesList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                if (Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(valuesList.get(i3), value4)) {
                    i = i3;
                    break;
                }
            }
        }
        return EvaluateResult.INSTANCE.value(Values.encodeValue(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayIndexOfAll$lambda$38(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda28
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayIndexOfAll$lambda$38$lambda$37(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayIndexOfAll$lambda$38$lambda$37(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        if (evaluateResult.getIsError() || evaluateResult2.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value = evaluateResult.getValue();
        if (value == null || Values.isNullValue(value)) {
            return EvaluateResult.INSTANCE.value(Values.NULL_VALUE);
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value2 = evaluateResult2.getValue();
        if (value2 == null) {
            return EvaluateResult.INSTANCE.value(Values.NULL_VALUE);
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        ArrayList arrayList = new ArrayList();
        int size = valuesList.size();
        for (int i = 0; i < size; i++) {
            if (Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(valuesList.get(i), value2)) {
                arrayList.add(Values.encodeValue(i));
            }
        }
        return EvaluateResult.INSTANCE.list(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayLast$lambda$10(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda22
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayLast$lambda$10$lambda$9(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayLast$lambda$10$lambda$9(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 1) {
            throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (evaluateResult.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        if (evaluateResult.getIsUnset()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value = evaluateResult.getValue();
        Intrinsics.checkNotNull(value);
        if (value.hasNullValue()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        if (valuesList.isEmpty()) {
            return EvaluateResultUnset.INSTANCE;
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        Intrinsics.checkNotNull(valuesList);
        Object objLast = CollectionsKt.last((List<? extends Object>) valuesList);
        Intrinsics.checkNotNullExpressionValue(objLast, "last(...)");
        return companion.value((Value) objLast);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayLastN$lambda$14(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda2
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayLastN$lambda$14$lambda$13(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayLastN$lambda$14$lambda$13(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (evaluateResult.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        if (evaluateResult.getIsUnset()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value = evaluateResult.getValue();
        Intrinsics.checkNotNull(value);
        if (value.hasNullValue()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        if (evaluateResult2.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value2 = evaluateResult2.getValue();
        if (value2 == null || !value2.hasIntegerValue()) {
            return EvaluateResultError.INSTANCE;
        }
        int integerValue = (int) value2.getIntegerValue();
        if (integerValue < 0) {
            return EvaluateResultError.INSTANCE;
        }
        return EvaluateResult.INSTANCE.list(valuesList.subList(valuesList.size() - RangesKt.coerceAtMost(integerValue, valuesList.size()), valuesList.size()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayMaximum$lambda$18(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda11
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMaximum$lambda$18$lambda$17(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayMaximum$lambda$18$lambda$17(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 1) {
            throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (evaluateResult.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        if (evaluateResult.getIsUnset()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value = evaluateResult.getValue();
        Intrinsics.checkNotNull(value);
        if (value.hasNullValue()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        if (valuesList.isEmpty()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value2 = valuesList.get(0);
        int size = valuesList.size();
        for (int i = 1; i < size; i++) {
            if (Values.Enterprise.INSTANCE.strictCompare$com_google_firebase_firebase_firestore(valuesList.get(i), value2) == Values.Enterprise.CompareResult.GREATER_THAN) {
                value2 = valuesList.get(i);
            }
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        Intrinsics.checkNotNull(value2);
        return companion.value(value2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayMaximumN$lambda$26(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda29
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMaximumN$lambda$26$lambda$25(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayMaximumN$lambda$26$lambda$25(List list, MutableDocument input) {
        Value value;
        ArrayValue arrayValue;
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        Value value2 = evaluateResult.getValue();
        List<Value> valuesList = (value2 == null || !value2.hasArrayValue() || (value = evaluateResult.getValue()) == null || (arrayValue = value.getArrayValue()) == null) ? null : arrayValue.getValuesList();
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        Value value3 = evaluateResult2.getValue();
        if (value3 == null || !value3.hasIntegerValue()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value4 = evaluateResult2.getValue();
        Integer numValueOf = value4 != null ? Integer.valueOf((int) value4.getIntegerValue()) : null;
        if (valuesList == null) {
            return EvaluateResultUnset.INSTANCE;
        }
        Intrinsics.checkNotNull(numValueOf);
        if (numValueOf.intValue() < 0) {
            return EvaluateResultError.INSTANCE;
        }
        final Function2 function2 = new Function2() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda24
            @Override // p005kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(ArrayKt.evaluateArrayMaximumN$lambda$26$lambda$25$lambda$23((Value) obj, (Value) obj2));
            }
        };
        List listSortedWith = CollectionsKt.sortedWith(valuesList, new Comparator() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda25
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ArrayKt.evaluateArrayMaximumN$lambda$26$lambda$25$lambda$24(function2, obj, obj2);
            }
        });
        return EvaluateResult.INSTANCE.list(listSortedWith.subList(0, RangesKt.coerceAtMost(numValueOf.intValue(), listSortedWith.size())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int evaluateArrayMaximumN$lambda$26$lambda$25$lambda$23(Value value, Value value2) {
        int i = WhenMappings.$EnumSwitchMapping$0[Values.Enterprise.INSTANCE.strictCompare$com_google_firebase_firebase_firestore(value, value2).ordinal()];
        if (i != 1) {
            return i != 2 ? 0 : -1;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int evaluateArrayMaximumN$lambda$26$lambda$25$lambda$24(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayMinimum$lambda$16(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda27
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMinimum$lambda$16$lambda$15(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayMinimum$lambda$16$lambda$15(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 1) {
            throw Assert.fail("Function should have exactly 1 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (evaluateResult.getIsError()) {
            return EvaluateResultError.INSTANCE;
        }
        if (evaluateResult.getIsUnset()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value = evaluateResult.getValue();
        Intrinsics.checkNotNull(value);
        if (value.hasNullValue()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        if (!value.hasArrayValue()) {
            return EvaluateResultError.INSTANCE;
        }
        List<Value> valuesList = value.getArrayValue().getValuesList();
        if (valuesList.isEmpty()) {
            return EvaluateResult.INSTANCE.getNULL();
        }
        Value value2 = valuesList.get(0);
        int size = valuesList.size();
        for (int i = 1; i < size; i++) {
            if (Values.Enterprise.INSTANCE.strictCompare$com_google_firebase_firebase_firestore(valuesList.get(i), value2) == Values.Enterprise.CompareResult.LESS_THAN) {
                value2 = valuesList.get(i);
            }
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        Intrinsics.checkNotNull(value2);
        return companion.value(value2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateArrayMinimumN$lambda$22(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateArrayMinimumN$lambda$22$lambda$21(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateArrayMinimumN$lambda$22$lambda$21(List list, MutableDocument input) {
        Value value;
        ArrayValue arrayValue;
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        Value value2 = evaluateResult.getValue();
        List<Value> valuesList = (value2 == null || !value2.hasArrayValue() || (value = evaluateResult.getValue()) == null || (arrayValue = value.getArrayValue()) == null) ? null : arrayValue.getValuesList();
        EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
        Value value3 = evaluateResult2.getValue();
        if (value3 == null || !value3.hasIntegerValue()) {
            return EvaluateResultError.INSTANCE;
        }
        Value value4 = evaluateResult2.getValue();
        Integer numValueOf = value4 != null ? Integer.valueOf((int) value4.getIntegerValue()) : null;
        if (valuesList == null) {
            return EvaluateResultUnset.INSTANCE;
        }
        Intrinsics.checkNotNull(numValueOf);
        if (numValueOf.intValue() < 0) {
            return EvaluateResultError.INSTANCE;
        }
        final Function2 function2 = new Function2() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda18
            @Override // p005kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(ArrayKt.evaluateArrayMinimumN$lambda$22$lambda$21$lambda$19((Value) obj, (Value) obj2));
            }
        };
        List listSortedWith = CollectionsKt.sortedWith(valuesList, new Comparator() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda19
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ArrayKt.evaluateArrayMinimumN$lambda$22$lambda$21$lambda$20(function2, obj, obj2);
            }
        });
        return EvaluateResult.INSTANCE.list(listSortedWith.subList(0, RangesKt.coerceAtMost(numValueOf.intValue(), listSortedWith.size())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int evaluateArrayMinimumN$lambda$22$lambda$21$lambda$19(Value value, Value value2) {
        int i = WhenMappings.$EnumSwitchMapping$0[Values.Enterprise.INSTANCE.strictCompare$com_google_firebase_firebase_firestore(value, value2).ordinal()];
        if (i != 1) {
            return i != 2 ? 0 : 1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int evaluateArrayMinimumN$lambda$22$lambda$21$lambda$20(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function1 evaluateJoin$lambda$28(final List params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.evaluation.ArrayKt$$ExternalSyntheticLambda3
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ArrayKt.evaluateJoin$lambda$28$lambda$27(params, (MutableDocument) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult evaluateJoin$lambda$28$lambda$27(List list, MutableDocument input) {
        Intrinsics.checkNotNullParameter(input, "input");
        if (list.size() != 2) {
            throw Assert.fail("Function should have exactly 2 params, but %d were given.", Integer.valueOf(list.size()));
        }
        boolean z = false;
        EvaluateResult evaluateResult = (EvaluateResult) ((Function1) list.get(0)).invoke(input);
        if (!(evaluateResult instanceof EvaluateResultError) && !(evaluateResult instanceof EvaluateResultUnset)) {
            if (Intrinsics.areEqual(evaluateResult, EvaluateResult.INSTANCE.getNULL())) {
                z = true;
            } else {
                Value value = evaluateResult.getValue();
                if ((value != null ? value.getValueTypeCase() : null) != Value.ValueTypeCase.ARRAY_VALUE) {
                    return EvaluateResultError.INSTANCE;
                }
            }
            EvaluateResult evaluateResult2 = (EvaluateResult) ((Function1) list.get(1)).invoke(input);
            if (!(evaluateResult2 instanceof EvaluateResultError) && !(evaluateResult2 instanceof EvaluateResultUnset)) {
                if (Intrinsics.areEqual(evaluateResult2, EvaluateResult.INSTANCE.getNULL())) {
                    return EvaluateResult.INSTANCE.getNULL();
                }
                Value value2 = evaluateResult2.getValue();
                Value.ValueTypeCase valueTypeCase = value2 != null ? value2.getValueTypeCase() : null;
                int i = valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$1[valueTypeCase.ordinal()];
                if (i == 1) {
                    if (z) {
                        return EvaluateResult.INSTANCE.getNULL();
                    }
                    Value value3 = evaluateResult.getValue();
                    ArrayValue arrayValue = value3 != null ? value3.getArrayValue() : null;
                    Intrinsics.checkNotNull(arrayValue);
                    List<Value> valuesList = arrayValue.getValuesList();
                    Intrinsics.checkNotNullExpressionValue(valuesList, "getValuesList(...)");
                    Value value4 = evaluateResult2.getValue();
                    String stringValue = value4 != null ? value4.getStringValue() : null;
                    Intrinsics.checkNotNull(stringValue);
                    return joinStrings(valuesList, stringValue);
                }
                if (i != 2) {
                    return EvaluateResultError.INSTANCE;
                }
                if (z) {
                    return EvaluateResult.INSTANCE.getNULL();
                }
                Value value5 = evaluateResult.getValue();
                ArrayValue arrayValue2 = value5 != null ? value5.getArrayValue() : null;
                Intrinsics.checkNotNull(arrayValue2);
                List<Value> valuesList2 = arrayValue2.getValuesList();
                Intrinsics.checkNotNullExpressionValue(valuesList2, "getValuesList(...)");
                Value value6 = evaluateResult2.getValue();
                ByteString bytesValue = value6 != null ? value6.getBytesValue() : null;
                Intrinsics.checkNotNull(bytesValue);
                return joinBytes(valuesList2, bytesValue);
            }
            return EvaluateResultError.INSTANCE;
        }
        return EvaluateResultError.INSTANCE;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArray() {
        return evaluateArray;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayConcat() {
        return evaluateArrayConcat;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayContains() {
        return evaluateArrayContains;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayContainsAll() {
        return evaluateArrayContainsAll;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayContainsAny() {
        return evaluateArrayContainsAny;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayFirst() {
        return evaluateArrayFirst;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayFirstN() {
        return evaluateArrayFirstN;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayGet() {
        return evaluateArrayGet;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayIndexOf() {
        return evaluateArrayIndexOf;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayIndexOfAll() {
        return evaluateArrayIndexOfAll;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayLast() {
        return evaluateArrayLast;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayLastN() {
        return evaluateArrayLastN;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayLength() {
        return evaluateArrayLength;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayMaximum() {
        return evaluateArrayMaximum;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayMaximumN() {
        return evaluateArrayMaximumN;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayMinimum() {
        return evaluateArrayMinimum;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayMinimumN() {
        return evaluateArrayMinimumN;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateArrayReverse() {
        return evaluateArrayReverse;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateEqAny() {
        return evaluateEqAny;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateJoin() {
        return evaluateJoin;
    }

    public static final Function1<List<? extends Function1<? super MutableDocument, ? extends EvaluateResult>>, Function1<MutableDocument, EvaluateResult>> getEvaluateNotEqAny() {
        return evaluateNotEqAny;
    }

    private static final EvaluateResult joinBytes(List<Value> list, ByteString byteString) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            Value.ValueTypeCase valueTypeCase = list.get(i).getValueTypeCase();
            int i2 = valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$1[valueTypeCase.ordinal()];
            if (i2 == 2) {
                if (!z) {
                    for (Byte b : byteString) {
                        Intrinsics.checkNotNull(b);
                        arrayList.add(b);
                    }
                }
                ByteString bytesValue = list.get(i).getBytesValue();
                Intrinsics.checkNotNullExpressionValue(bytesValue, "getBytesValue(...)");
                for (Byte b2 : bytesValue) {
                    Intrinsics.checkNotNull(b2);
                    arrayList.add(b2);
                }
                z = false;
            } else if (i2 != 3) {
                return EvaluateResultError.INSTANCE;
            }
        }
        return EvaluateResult.INSTANCE.value(Values.encodeValue(CollectionsKt.toByteArray(arrayList)));
    }

    private static final EvaluateResult joinStrings(List<Value> list, String str) {
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            Value value = list.get(i);
            Value.ValueTypeCase valueTypeCase = value.getValueTypeCase();
            int i2 = valueTypeCase == null ? -1 : WhenMappings.$EnumSwitchMapping$1[valueTypeCase.ordinal()];
            if (i2 == 1) {
                if (!z) {
                    sb.append(str);
                }
                sb.append(value.getStringValue());
                z = false;
            } else if (i2 != 3) {
                return EvaluateResultError.INSTANCE;
            }
        }
        EvaluateResult.Companion companion = EvaluateResult.INSTANCE;
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return companion.string(string);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EvaluateResult notEqualAny(Value value, List<Value> list) {
        Iterator<Value> it = list.iterator();
        while (it.hasNext()) {
            boolean zEquals$com_google_firebase_firebase_firestore = Values.Enterprise.INSTANCE.equals$com_google_firebase_firebase_firestore(value, it.next());
            if (zEquals$com_google_firebase_firebase_firestore) {
                return EvaluateResult.INSTANCE.getFALSE();
            }
            if (zEquals$com_google_firebase_firebase_firestore) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return EvaluateResult.INSTANCE.getTRUE();
    }
}
