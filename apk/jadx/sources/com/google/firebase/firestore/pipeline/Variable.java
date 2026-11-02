package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.EvaluationContext;
import com.google.firestore.v1.Value;
import com.ironsource.C3635i2;
import p005kotlin.Metadata;
import p005kotlin.NotImplementedError;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: expressions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0010¢\u0006\u0002\b\fJ4\u0010\r\u001a!\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0002\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000ej\u0002`\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0010¢\u0006\u0002\b\u0016J\r\u0010\u0017\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001f"}, d2 = {"Lcom/google/firebase/firestore/pipeline/Variable;", "Lcom/google/firebase/firestore/pipeline/Expression;", "name", "", "<init>", "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "toProto", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "toProto$com_google_firebase_firebase_firestore", "evaluateFunction", "Lkotlin/Function1;", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "context", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;", "evaluateFunction$com_google_firebase_firebase_firestore", "canonicalId", "canonicalId$com_google_firebase_firebase_firestore", "equals", "", C3635i2.d, "", "hashCode", "", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class Variable extends Expression {
    private final String name;

    public Variable(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.name = name;
    }

    @Override // com.google.firebase.firestore.pipeline.Expression
    public String canonicalId$com_google_firebase_firebase_firestore() {
        return "var(" + this.name + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof Variable) {
            return Intrinsics.areEqual(this.name, ((Variable) other).name);
        }
        return false;
    }

    @Override // com.google.firebase.firestore.pipeline.Expression
    public Function1<MutableDocument, EvaluateResult> evaluateFunction$com_google_firebase_firebase_firestore(EvaluationContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.Variable$evaluateFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Void invoke(MutableDocument mutableDocument) {
                Intrinsics.checkNotNullParameter(mutableDocument, "<unused var>");
                throw new NotImplementedError("Variable evaluation not implemented");
            }
        };
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    @Override // com.google.firebase.firestore.pipeline.Expression
    public Value toProto$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        Value valueBuild = Value.newBuilder().setVariableReferenceValue(this.name).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "build(...)");
        return valueBuild;
    }
}
