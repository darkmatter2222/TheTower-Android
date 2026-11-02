package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.pipeline.evaluation.EvaluationContext;
import com.google.firestore.v1.Value;
import com.ironsource.C3635i2;
import com.ironsource.C3908x1;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\n\u001a\u00020\u000bH\u0010¢\u0006\u0002\b\fJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\u000eJ)\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0010¢\u0006\u0002\b\u0015J\u001b\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0010¢\u0006\u0002\b\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\b\u0010 \u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006!"}, d2 = {"Lcom/google/firebase/firestore/pipeline/LimitStage;", "Lcom/google/firebase/firestore/pipeline/Stage;", "limit", "", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(ILcom/google/firebase/firestore/pipeline/InternalOptions;)V", "getLimit", "()I", "canonicalId", "", "canonicalId$com_google_firebase_firebase_firestore", C3908x1.o, "self$com_google_firebase_firebase_firestore", "evaluate", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "context", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;", "inputs", "evaluate$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "equals", "", C3635i2.d, "", "hashCode", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class LimitStage extends Stage<LimitStage> {
    private final int limit;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LimitStage(int i, InternalOptions options) {
        super("limit", options, null);
        Intrinsics.checkNotNullParameter(options, "options");
        this.limit = i;
    }

    public /* synthetic */ LimitStage(int i, InternalOptions internalOptions, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.sequenceOf(Values.encodeValue(this.limit));
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        return getName() + '(' + this.limit + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LimitStage)) {
            return false;
        }
        LimitStage limitStage = (LimitStage) other;
        return this.limit == limitStage.limit && Intrinsics.areEqual(getOptions(), limitStage.getOptions());
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public List<MutableDocument> evaluate$com_google_firebase_firebase_firestore(EvaluationContext context, List<MutableDocument> inputs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        int i = this.limit;
        if (i > 0) {
            return CollectionsKt.take(inputs, i);
        }
        return i < 0 ? CollectionsKt.takeLast(inputs, i) : CollectionsKt.emptyList();
    }

    public final int getLimit() {
        return this.limit;
    }

    public int hashCode() {
        return (this.limit * 31) + getOptions().hashCode();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public LimitStage self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new LimitStage(this.limit, options);
    }
}
