package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.Pipeline;
import com.google.firebase.firestore.UserDataReader;
import com.google.firestore.v1.Value;
import com.ironsource.C3635i2;
import com.ironsource.C3908x1;
import p005kotlin.Metadata;
import p005kotlin.NotImplementedError;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\tJ\r\u0010\n\u001a\u00020\u000bH\u0010¢\u0006\u0002\b\fJ\u001b\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0010¢\u0006\u0002\b\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0002\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/google/firebase/firestore/pipeline/UnionStage;", "Lcom/google/firebase/firestore/pipeline/Stage;", C3635i2.d, "Lcom/google/firebase/firestore/Pipeline;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Lcom/google/firebase/firestore/Pipeline;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", C3908x1.o, "self$com_google_firebase_firebase_firestore", "canonicalId", "", "canonicalId$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "equals", "", "", "hashCode", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UnionStage extends Stage<UnionStage> {
    private final Pipeline other;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnionStage(Pipeline other, InternalOptions options) {
        super("union", options, null);
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(options, "options");
        this.other = other;
    }

    public /* synthetic */ UnionStage(Pipeline pipeline, InternalOptions internalOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(pipeline, (i & 2) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.sequenceOf(Value.newBuilder().setPipelineValue(this.other.toPipelineProto$com_google_firebase_firebase_firestore(userDataReader)).build());
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UnionStage)) {
            return false;
        }
        UnionStage unionStage = (UnionStage) other;
        return Intrinsics.areEqual(this.other, unionStage.other) && Intrinsics.areEqual(getOptions(), unionStage.getOptions());
    }

    public int hashCode() {
        return (this.other.hashCode() * 31) + getOptions().hashCode();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public UnionStage self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new UnionStage(this.other, options);
    }
}
