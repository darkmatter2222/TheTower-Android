package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.Values;
import com.google.firestore.v1.Value;
import com.ironsource.C3635i2;
import com.ironsource.C3908x1;
import com.ironsource.G5;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.collections.ArraysKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.SpreadBuilder;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001dB#\b\u0000\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0010¢\u0006\u0002\b\rJ\r\u0010\u000e\u001a\u00020\u000fH\u0010¢\u0006\u0002\b\u0010J\u001b\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0010¢\u0006\u0002\b\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016R\u001e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n¨\u0006\u001e"}, d2 = {"Lcom/google/firebase/firestore/pipeline/DefineStage;", "Lcom/google/firebase/firestore/pipeline/Stage;", "aliasedExpressions", "", "Lcom/google/firebase/firestore/pipeline/AliasedExpression;", "options", "Lcom/google/firebase/firestore/pipeline/InternalOptions;", "<init>", "([Lcom/google/firebase/firestore/pipeline/AliasedExpression;Lcom/google/firebase/firestore/pipeline/InternalOptions;)V", "getAliasedExpressions$com_google_firebase_firebase_firestore", "()[Lcom/google/firebase/firestore/pipeline/AliasedExpression;", "[Lcom/google/firebase/firestore/pipeline/AliasedExpression;", C3908x1.o, "self$com_google_firebase_firebase_firestore", "canonicalId", "", "canonicalId$com_google_firebase_firebase_firestore", "args", "Lkotlin/sequences/Sequence;", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "args$com_google_firebase_firebase_firestore", "equals", "", C3635i2.d, "", "hashCode", "", "Companion", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DefineStage extends Stage<DefineStage> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final AliasedExpression[] aliasedExpressions;

    /* JADX INFO: compiled from: stage.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\t\"\u00020\u0007H\u0007¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/google/firebase/firestore/pipeline/DefineStage$Companion;", "", "<init>", "()V", "withVariables", "Lcom/google/firebase/firestore/pipeline/DefineStage;", "aliasedExpression", "Lcom/google/firebase/firestore/pipeline/AliasedExpression;", "additionalExpressions", "", "(Lcom/google/firebase/firestore/pipeline/AliasedExpression;[Lcom/google/firebase/firestore/pipeline/AliasedExpression;)Lcom/google/firebase/firestore/pipeline/DefineStage;", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @JvmStatic
        public final DefineStage withVariables(AliasedExpression aliasedExpression, AliasedExpression... additionalExpressions) {
            Intrinsics.checkNotNullParameter(aliasedExpression, "aliasedExpression");
            Intrinsics.checkNotNullParameter(additionalExpressions, "additionalExpressions");
            SpreadBuilder spreadBuilder = new SpreadBuilder(2);
            spreadBuilder.add(aliasedExpression);
            spreadBuilder.addSpread(additionalExpressions);
            return new DefineStage((AliasedExpression[]) spreadBuilder.toArray(new AliasedExpression[spreadBuilder.size()]), null, 2, 0 == true ? 1 : 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefineStage(AliasedExpression[] aliasedExpressions, InternalOptions options) {
        super("let", options, null);
        Intrinsics.checkNotNullParameter(aliasedExpressions, "aliasedExpressions");
        Intrinsics.checkNotNullParameter(options, "options");
        this.aliasedExpressions = aliasedExpressions;
    }

    public /* synthetic */ DefineStage(AliasedExpression[] aliasedExpressionArr, InternalOptions internalOptions, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(aliasedExpressionArr, (i & 2) != 0 ? InternalOptions.EMPTY : internalOptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence canonicalId$lambda$0(AliasedExpression it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getAlias() + G5.U + it.getExpr().canonicalId$com_google_firebase_firebase_firestore();
    }

    @JvmStatic
    public static final DefineStage withVariables(AliasedExpression aliasedExpression, AliasedExpression... aliasedExpressionArr) {
        return INSTANCE.withVariables(aliasedExpression, aliasedExpressionArr);
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public Sequence<Value> args$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        return SequencesKt.sequenceOf(Values.encodeValue((Map<String, Value>) StageKt.associateWithoutDuplications(this.aliasedExpressions, userDataReader)));
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public String canonicalId$com_google_firebase_firebase_firestore() {
        return getName() + '(' + ArraysKt.joinToString$default(this.aliasedExpressions, FacebookConstants.PLACEMENT_IDS_SEPARATOR, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.google.firebase.firestore.pipeline.DefineStage$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DefineStage.canonicalId$lambda$0((AliasedExpression) obj);
            }
        }, 30, (Object) null) + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DefineStage)) {
            return false;
        }
        DefineStage defineStage = (DefineStage) other;
        return Arrays.equals(this.aliasedExpressions, defineStage.aliasedExpressions) && Intrinsics.areEqual(getOptions(), defineStage.getOptions());
    }

    /* JADX INFO: renamed from: getAliasedExpressions$com_google_firebase_firebase_firestore, reason: from getter */
    public final AliasedExpression[] getAliasedExpressions() {
        return this.aliasedExpressions;
    }

    public int hashCode() {
        return (Arrays.hashCode(this.aliasedExpressions) * 31) + getOptions().hashCode();
    }

    @Override // com.google.firebase.firestore.pipeline.Stage
    public DefineStage self$com_google_firebase_firebase_firestore(InternalOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        return new DefineStage(this.aliasedExpressions, options);
    }
}
