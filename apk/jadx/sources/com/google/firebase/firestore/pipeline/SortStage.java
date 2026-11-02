package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.pipeline.evaluation.EvaluationContext;
import com.google.firestore.v1.Value;
import com.ironsource.C3635i2;
import com.ironsource.C3908x1;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001+B#\b\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\f\u001a\u00020\rH\u0010¢\u0006\u0002\b\u000eJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0010¢\u0006\u0002\b\u0010J\u001b\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0010¢\u0006\u0002\b\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010 \u001a\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eH\u0010¢\u0006\u0002\b#J%\u0010$\u001a\u0012\u0012\u0004\u0012\u00020&0%j\b\u0012\u0004\u0012\u00020&`'2\u0006\u0010 \u001a\u00020!H\u0000¢\u0006\u0002\b(J\r\u0010)\u001a\u00020\u0000H\u0000¢\u0006\u0002\b*R\u001b\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006,"}, d2 = {"Lcom/google/firebase/firestore/pipeline/SortStage;", "Lcom/google/firebase/firestore/pipeline/Stage;", "orders", "", "Lcom/google/firebase/firestore/pipeline/Ordering;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "([Lcom/google/firebase/firestore/pipeline/Ordering;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "getOrders", "()[Lcom/google/firebase/firestore/pipeline/Ordering;", "[Lcom/google/firebase/firestore/pipeline/Ordering;", "canonicalId", "", "canonicalId$com_google_firebase_firebase_firestore", C3908x1.o, "self$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "equals", "", C3635i2.d, "", "hashCode", "", "evaluate", "", "Lcom/google/firebase/firestore/model/MutableDocument;", "context", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;", "inputs", "evaluate$com_google_firebase_firebase_firestore", "comparator", "Ljava/util/Comparator;", "Lcom/google/firebase/firestore/model/Document;", "Lkotlin/Comparator;", "comparator$com_google_firebase_firebase_firestore", "withStableOrdering", "withStableOrdering$com_google_firebase_firebase_firestore", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SortStage extends Stage<SortStage> {
    private final Ordering[] orders;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final SortStage BY_DOCUMENT_ID = new SortStage(new Ordering[]{Field.DOCUMENT_ID.ascending()}, 0 == true ? 1 : 0, 2, 0 == true ? 1 : 0);

    /* JADX INFO: compiled from: stage.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/firestore/pipeline/SortStage$Companion;", "", "<init>", "()V", "BY_DOCUMENT_ID", "Lcom/google/firebase/firestore/pipeline/SortStage;", "getBY_DOCUMENT_ID$com_google_firebase_firebase_firestore", "()Lcom/google/firebase/firestore/pipeline/SortStage;", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SortStage getBY_DOCUMENT_ID$com_google_firebase_firebase_firestore() {
            return SortStage.BY_DOCUMENT_ID;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortStage(Ordering[] orders, InternalOptions options) {
        super("sort", options, null);
        Intrinsics.checkNotNullParameter(orders, "orders");
        Intrinsics.checkNotNullParameter(options, "options");
        this.orders = orders;
    }

    public /* synthetic */ SortStage(Ordering[] orderingArr, InternalOptions internalOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(orderingArr, (i & 2) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Value args$lambda$1(UserDataReader userDataReader, Ordering it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.toProto$com_google_firebase_firebase_firestore(userDataReader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence canonicalId$lambda$0(Ordering it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.canonicalId$com_google_firebase_firebase_firestore();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(final UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.map(ArraysKt.asSequence(this.orders), new Function1() { // from class: com.google.firebase.firestore.pipeline.SortStage$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SortStage.args$lambda$1(userDataReader, (Ordering) obj);
            }
        });
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        return getName() + '(' + ArraysKt.joinToString$default(this.orders, FacebookConstants.PLACEMENT_IDS_SEPARATOR, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.google.firebase.firestore.pipeline.SortStage$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SortStage.canonicalId$lambda$0((Ordering) obj);
            }
        }, 30, (Object) null) + ')';
    }

    public final Comparator<Document> comparator$com_google_firebase_firebase_firestore(EvaluationContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return StageKt.comparatorFromOrderings(context, this.orders);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SortStage)) {
            return false;
        }
        SortStage sortStage = (SortStage) other;
        return Arrays.equals(this.orders, sortStage.orders) && Intrinsics.areEqual(getOptions(), sortStage.getOptions());
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public List<MutableDocument> evaluate$com_google_firebase_firebase_firestore(EvaluationContext context, List<MutableDocument> inputs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inputs, "inputs");
        return CollectionsKt.sortedWith(inputs, comparator$com_google_firebase_firebase_firestore(context));
    }

    public final Ordering[] getOrders() {
        return this.orders;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.orders) * 31) + getOptions().hashCode();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public SortStage self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new SortStage(this.orders, options);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    /* JADX WARN: Code duplicated, block: B:18:0x0051 A[RETURN] */
    public final SortStage withStableOrdering$com_google_firebase_firebase_firestore() {
        Ordering[] orderingArr = this.orders;
        int length = orderingArr.length;
        int i = 0;
        while (i < length) {
            Expression expr = orderingArr[i].getExpr();
            Field field = expr instanceof Field ? (Field) expr : null;
            if (Intrinsics.areEqual(field != null ? field.getAlias() : null, DocumentKey.KEY_FIELD_NAME)) {
                if (i < 0) {
                    return new SortStage((Ordering[]) CollectionsKt.plus((Collection<? extends Ordering>) ArraysKt.asList(this.orders), Field.DOCUMENT_ID.ascending()).toArray(new Ordering[0]), getOptions());
                }
                return this;
            }
            i++;
        }
        i = -1;
        if (i < 0) {
            return new SortStage((Ordering[]) CollectionsKt.plus((Collection<? extends Ordering>) ArraysKt.asList(this.orders), Field.DOCUMENT_ID.ascending()).toArray(new Ordering[0]), getOptions());
        }
        return this;
    }
}
