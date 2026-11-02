package com.google.firebase.firestore.pipeline;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.google.firestore.v1.Pipeline;
import com.google.firestore.v1.Value;
import com.ironsource.C3635i2;
import com.ironsource.C3908x1;
import com.ironsource.C3927y2;
import com.tapjoy.TapjoyConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.NotImplementedError;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u0000 52\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00015Bo\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\u0019J\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0010¢\u0006\u0002\b\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\b\u0010$\u001a\u00020%H\u0016J\u0015\u0010&\u001a\u00020'2\u0006\u0010\u001d\u001a\u00020\u001eH\u0010¢\u0006\u0002\b(J'\u0010)\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u000e2\u0012\u0010+\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\t\"\u00020\u000e¢\u0006\u0002\u0010,J'\u0010-\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\n2\u0012\u0010/\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0002\u00100J\u000e\u00101\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u000e\u00102\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u00103\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u00104\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0012\u0010\f\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0013R\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015¨\u00066"}, d2 = {"Lcom/google/firebase/firestore/pipeline/SearchStage;", "Lcom/google/firebase/firestore/pipeline/Stage;", "query", "Lcom/google/firebase/firestore/pipeline/BooleanExpression;", RemoteConfigConstants.RequestFieldKey.LANGUAGE_CODE, "", "retrievalDepth", "", "sort", "", "Lcom/google/firebase/firestore/pipeline/Ordering;", TypedValues.CycleType.S_WAVE_OFFSET, "limit", "addFields", "Lcom/google/firebase/firestore/pipeline/Selectable;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Lcom/google/firebase/firestore/pipeline/BooleanExpression;Ljava/lang/String;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Ordering;Ljava/lang/Long;Ljava/lang/Long;[Lcom/google/firebase/firestore/pipeline/Selectable;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "Ljava/lang/Long;", "[Lcom/google/firebase/firestore/pipeline/Ordering;", "[Lcom/google/firebase/firestore/pipeline/Selectable;", C3908x1.o, "self$com_google_firebase_firebase_firestore", "canonicalId", "canonicalId$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "equals", "", C3635i2.d, "", "hashCode", "", "toProtoStage", "Lcom/google/firestore/v1/Pipeline$Stage;", "toProtoStage$com_google_firebase_firebase_firestore", "withAddFields", "field", "additionalFields", "(Lcom/google/firebase/firestore/pipeline/Selectable;[Lcom/google/firebase/firestore/pipeline/Selectable;)Lcom/google/firebase/firestore/pipeline/SearchStage;", "withSort", C3927y2.u, "additionalOrderings", "(Lcom/google/firebase/firestore/pipeline/Ordering;[Lcom/google/firebase/firestore/pipeline/Ordering;)Lcom/google/firebase/firestore/pipeline/SearchStage;", "withLimit", "withRetrievalDepth", "withOffset", "withLanguageCode", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SearchStage extends Stage<SearchStage> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Selectable[] addFields;
    private final String languageCode;
    private final Long limit;
    private final Long offset;
    private final BooleanExpression query;
    private final Long retrievalDepth;
    private final Ordering[] sort;

    /* JADX INFO: compiled from: stage.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcom/google/firebase/firestore/pipeline/SearchStage$Companion;", "", "<init>", "()V", "withQuery", "Lcom/google/firebase/firestore/pipeline/SearchStage;", "query", "Lcom/google/firebase/firestore/pipeline/BooleanExpression;", "rquery", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final SearchStage withQuery(BooleanExpression query) {
            Intrinsics.checkNotNullParameter(query, "query");
            return new SearchStage(query, null, null, null, null, null, null, null, 254, null);
        }

        @JvmStatic
        public final SearchStage withQuery(String rquery) {
            Intrinsics.checkNotNullParameter(rquery, "rquery");
            return withQuery(Expression.INSTANCE.documentMatches(rquery));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchStage(BooleanExpression query, String str, Long l, Ordering[] orderingArr, Long l2, Long l3, Selectable[] selectableArr, InternalOptions options) {
        super("search", options, null);
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(options, "options");
        this.query = query;
        this.languageCode = str;
        this.retrievalDepth = l;
        this.sort = orderingArr;
        this.offset = l2;
        this.limit = l3;
        this.addFields = selectableArr;
    }

    public /* synthetic */ SearchStage(BooleanExpression booleanExpression, String str, Long l, Ordering[] orderingArr, Long l2, Long l3, Selectable[] selectableArr, InternalOptions internalOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(booleanExpression, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : l, (i & 8) != 0 ? null : orderingArr, (i & 16) != 0 ? null : l2, (i & 32) != 0 ? null : l3, (i & 64) != 0 ? null : selectableArr, (i & 128) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    @JvmStatic
    public static final SearchStage withQuery(BooleanExpression booleanExpression) {
        return INSTANCE.withQuery(booleanExpression);
    }

    @JvmStatic
    public static final SearchStage withQuery(String str) {
        return INSTANCE.withQuery(str);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.emptySequence();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchStage)) {
            return false;
        }
        SearchStage searchStage = (SearchStage) other;
        return Intrinsics.areEqual(this.query, searchStage.query) && Intrinsics.areEqual(this.languageCode, searchStage.languageCode) && Intrinsics.areEqual(this.retrievalDepth, searchStage.retrievalDepth) && Arrays.equals(this.sort, searchStage.sort) && Intrinsics.areEqual(this.offset, searchStage.offset) && Intrinsics.areEqual(this.limit, searchStage.limit) && Arrays.equals(this.addFields, searchStage.addFields) && Intrinsics.areEqual(getOptions(), searchStage.getOptions());
    }

    public int hashCode() {
        int iHashCode = this.query.hashCode() * 31;
        String str = this.languageCode;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        Long l = this.retrievalDepth;
        int iHashCode3 = (iHashCode2 + (l != null ? l.hashCode() : 0)) * 31;
        Ordering[] orderingArr = this.sort;
        int iHashCode4 = (iHashCode3 + (orderingArr != null ? Arrays.hashCode(orderingArr) : 0)) * 31;
        Long l2 = this.offset;
        int iHashCode5 = (iHashCode4 + (l2 != null ? l2.hashCode() : 0)) * 31;
        Long l3 = this.limit;
        int iHashCode6 = (iHashCode5 + (l3 != null ? l3.hashCode() : 0)) * 31;
        Selectable[] selectableArr = this.addFields;
        return ((iHashCode6 + (selectableArr != null ? Arrays.hashCode(selectableArr) : 0)) * 31) + getOptions().hashCode();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public SearchStage self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new SearchStage(this.query, this.languageCode, this.retrievalDepth, this.sort, this.offset, this.limit, this.addFields, options);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Pipeline.Stage toProtoStage$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        InternalOptions internalOptionsWith$com_google_firebase_firebase_firestore = getOptions().with$com_google_firebase_firebase_firestore("query", this.query.toProto$com_google_firebase_firebase_firestore(userDataReader));
        String str = this.languageCode;
        if (str != null) {
            internalOptionsWith$com_google_firebase_firebase_firestore = internalOptionsWith$com_google_firebase_firebase_firestore.with$com_google_firebase_firebase_firestore(TapjoyConstants.TJC_DEVICE_LANGUAGE, Values.encodeValue(str));
        }
        Long l = this.retrievalDepth;
        if (l != null) {
            internalOptionsWith$com_google_firebase_firebase_firestore = internalOptionsWith$com_google_firebase_firebase_firestore.with$com_google_firebase_firebase_firestore("retrieval_depth", Values.encodeValue(l.longValue()));
        }
        Ordering[] orderingArr = this.sort;
        if (orderingArr != null) {
            ArrayList arrayList = new ArrayList(orderingArr.length);
            for (Ordering ordering : orderingArr) {
                arrayList.add(ordering.toProto$com_google_firebase_firebase_firestore(userDataReader));
            }
            internalOptionsWith$com_google_firebase_firebase_firestore = internalOptionsWith$com_google_firebase_firebase_firestore.with$com_google_firebase_firebase_firestore("sort", arrayList);
        }
        Long l2 = this.offset;
        if (l2 != null) {
            internalOptionsWith$com_google_firebase_firebase_firestore = internalOptionsWith$com_google_firebase_firebase_firestore.with$com_google_firebase_firebase_firestore(TypedValues.CycleType.S_WAVE_OFFSET, Values.encodeValue(l2.longValue()));
        }
        Long l3 = this.limit;
        if (l3 != null) {
            internalOptionsWith$com_google_firebase_firebase_firestore = internalOptionsWith$com_google_firebase_firebase_firestore.with$com_google_firebase_firebase_firestore("limit", Values.encodeValue(l3.longValue()));
        }
        Selectable[] selectableArr = this.addFields;
        if (selectableArr != null) {
            internalOptionsWith$com_google_firebase_firebase_firestore = internalOptionsWith$com_google_firebase_firebase_firestore.with$com_google_firebase_firebase_firestore("add_fields", Values.encodeValue((Map<String, Value>) StageKt.associateWithoutDuplications(selectableArr, userDataReader)));
        }
        return Stage.INSTANCE.toProtoStage$com_google_firebase_firebase_firestore(getName(), args$com_google_firebase_firebase_firestore(userDataReader), internalOptionsWith$com_google_firebase_firebase_firestore, userDataReader);
    }

    public final SearchStage withAddFields(Selectable field, Selectable... additionalFields) {
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(additionalFields, "additionalFields");
        return new SearchStage(this.query, this.languageCode, this.retrievalDepth, this.sort, this.offset, this.limit, (Selectable[]) CollectionsKt.plus((Collection) CollectionsKt.listOf(field), (Object[]) additionalFields).toArray(new Selectable[0]), getOptions());
    }

    public final SearchStage withLanguageCode(String languageCode) {
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        return new SearchStage(this.query, languageCode, this.retrievalDepth, this.sort, this.offset, this.limit, this.addFields, getOptions());
    }

    public final SearchStage withLimit(long limit) {
        return new SearchStage(this.query, this.languageCode, this.retrievalDepth, this.sort, this.offset, Long.valueOf(limit), this.addFields, getOptions());
    }

    public final SearchStage withOffset(long offset) {
        return new SearchStage(this.query, this.languageCode, this.retrievalDepth, this.sort, Long.valueOf(offset), this.limit, this.addFields, getOptions());
    }

    public final SearchStage withRetrievalDepth(long retrievalDepth) {
        return new SearchStage(this.query, this.languageCode, Long.valueOf(retrievalDepth), this.sort, this.offset, this.limit, this.addFields, getOptions());
    }

    public final SearchStage withSort(Ordering order, Ordering... additionalOrderings) {
        Intrinsics.checkNotNullParameter(order, "order");
        Intrinsics.checkNotNullParameter(additionalOrderings, "additionalOrderings");
        return new SearchStage(this.query, this.languageCode, this.retrievalDepth, (Ordering[]) CollectionsKt.plus((Collection) CollectionsKt.listOf(order), (Object[]) additionalOrderings).toArray(new Ordering[0]), this.offset, this.limit, this.addFields, getOptions());
    }
}
