package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firestore.v1.Value;
import com.ironsource.C3908x1;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.NotImplementedError;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0019B)\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH\u0010¢\u0006\u0002\b\fJ\u001f\u0010\r\u001a\u00020\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u000e\"\u00020\u000f¢\u0006\u0002\u0010\u0010J\r\u0010\u0011\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\u0012J\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0010¢\u0006\u0002\b\u0018R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/google/firebase/firestore/pipeline/RawStage;", "Lcom/google/firebase/firestore/pipeline/Stage;", "name", "", TJAdUnitConstants.String.ARGUMENTS, "", "Lcom/google/firebase/firestore/pipeline/GenericArg;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", C3908x1.o, "self$com_google_firebase_firebase_firestore", "withArguments", "", "", "([Ljava/lang/Object;)Lcom/google/firebase/firestore/pipeline/RawStage;", "canonicalId", "canonicalId$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RawStage extends Stage<RawStage> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final List<GenericArg> arguments;

    /* JADX INFO: compiled from: stage.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007¨\u0006\b"}, d2 = {"Lcom/google/firebase/firestore/pipeline/RawStage$Companion;", "", "<init>", "()V", "ofName", "Lcom/google/firebase/firestore/pipeline/RawStage;", "name", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final RawStage ofName(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new RawStage(name, CollectionsKt.emptyList(), InternalOptions.EMPTY, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private RawStage(String str, List<? extends GenericArg> list, InternalOptions internalOptions) {
        super(str, internalOptions, null);
        this.arguments = list;
    }

    /* synthetic */ RawStage(String str, List list, InternalOptions internalOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, (i & 4) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    public /* synthetic */ RawStage(String str, List list, InternalOptions internalOptions, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, internalOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Value args$lambda$0(UserDataReader userDataReader, GenericArg it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.toProto(userDataReader);
    }

    @JvmStatic
    public static final RawStage ofName(String str) {
        return INSTANCE.ofName(str);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(final UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.map(CollectionsKt.asSequence(this.arguments), new Function1() { // from class: com.google.firebase.firestore.pipeline.RawStage$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RawStage.args$lambda$0(userDataReader, (GenericArg) obj);
            }
        });
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        throw new NotImplementedError("An operation is not implemented: Not yet implemented");
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public RawStage self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new RawStage(getName(), this.arguments, options);
    }

    public final RawStage withArguments(Object... arguments) {
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        String name$com_google_firebase_firebase_firestore = getName();
        GenericArg.Companion companion = GenericArg.INSTANCE;
        ArrayList arrayList = new ArrayList(arguments.length);
        for (Object obj : arguments) {
            arrayList.add(companion.from(obj));
        }
        return new RawStage(name$com_google_firebase_firebase_firestore, arrayList, getOptions());
    }
}
