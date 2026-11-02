package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.Values;
import com.google.firestore.v1.Value;
import com.ironsource.C3908x1;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u001b\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0010¢\u0006\u0002\b\u000bJ\r\u0010\f\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\rJ\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0010¢\u0006\u0002\b\u0013R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/google/firebase/firestore/pipeline/SubcollectionSource;", "Lcom/google/firebase/firestore/pipeline/Stage;", "path", "", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Ljava/lang/String;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "getPath$com_google_firebase_firebase_firestore", "()Ljava/lang/String;", C3908x1.o, "self$com_google_firebase_firebase_firestore", "canonicalId", "canonicalId$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SubcollectionSource extends Stage<SubcollectionSource> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String path;

    /* JADX INFO: compiled from: stage.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/firestore/pipeline/SubcollectionSource$Companion;", "", "<init>", "()V", "of", "Lcom/google/firebase/firestore/pipeline/SubcollectionSource;", "path", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @JvmStatic
        public final SubcollectionSource of(String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            return new SubcollectionSource(path, null, 2, 0 == true ? 1 : 0);
        }
    }

    private SubcollectionSource(String str, InternalOptions internalOptions) {
        super("subcollection", internalOptions, null);
        this.path = str;
    }

    /* synthetic */ SubcollectionSource(String str, InternalOptions internalOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    @JvmStatic
    public static final SubcollectionSource of(String str) {
        return INSTANCE.of(str);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.sequenceOf(Values.encodeValue(this.path));
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        return getName() + '(' + this.path + ')';
    }

    /* JADX INFO: renamed from: getPath$com_google_firebase_firebase_firestore, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public SubcollectionSource self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new SubcollectionSource(this.path, options);
    }
}
