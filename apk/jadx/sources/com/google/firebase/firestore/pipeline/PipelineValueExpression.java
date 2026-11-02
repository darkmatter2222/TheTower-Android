package com.google.firebase.firestore.pipeline;

import com.google.firebase.firestore.Pipeline;
import com.google.firebase.firestore.UserDataReader;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.pipeline.evaluation.EvaluateResult;
import com.google.firebase.firestore.pipeline.evaluation.EvaluationContext;
import com.google.firestore.v1.Value;
import p005kotlin.Metadata;
import p005kotlin.NotImplementedError;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: expressions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0010¢\u0006\u0002\b\fJ4\u0010\r\u001a!\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00130\u000ej\u0002`\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0010¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0019H\u0010¢\u0006\u0002\b\u001aJ\b\u0010\u001b\u001a\u00020\u0019H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001c"}, d2 = {"Lcom/google/firebase/firestore/pipeline/PipelineValueExpression;", "Lcom/google/firebase/firestore/pipeline/Expression;", "pipeline", "Lcom/google/firebase/firestore/Pipeline;", "<init>", "(Lcom/google/firebase/firestore/Pipeline;)V", "getPipeline", "()Lcom/google/firebase/firestore/Pipeline;", "toProto", "Lcom/google/firestore/v1/Value;", "userDataReader", "Lcom/google/firebase/firestore/UserDataReader;", "toProto$com_google_firebase_firebase_firestore", "evaluateFunction", "Lkotlin/Function1;", "Lcom/google/firebase/firestore/model/MutableDocument;", "Lkotlin/ParameterName;", "name", "input", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateResult;", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluateDocument;", "context", "Lcom/google/firebase/firestore/pipeline/evaluation/EvaluationContext;", "evaluateFunction$com_google_firebase_firebase_firestore", "canonicalId", "", "canonicalId$com_google_firebase_firebase_firestore", "toString", "com.google.firebase-firebase-firestore"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class PipelineValueExpression extends Expression {
    private final Pipeline pipeline;

    public PipelineValueExpression(Pipeline pipeline) {
        Intrinsics.checkNotNullParameter(pipeline, "pipeline");
        this.pipeline = pipeline;
    }

    @Override // com.google.firebase.firestore.pipeline.Expression
    public String canonicalId$com_google_firebase_firebase_firestore() {
        return "pipeline(${pipeline.hashCode()})";
    }

    @Override // com.google.firebase.firestore.pipeline.Expression
    public Function1<MutableDocument, EvaluateResult> evaluateFunction$com_google_firebase_firebase_firestore(EvaluationContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new Function1() { // from class: com.google.firebase.firestore.pipeline.PipelineValueExpression$evaluateFunction$1
            @Override // p005kotlin.jvm.functions.Function1
            public final Void invoke(MutableDocument mutableDocument) {
                Intrinsics.checkNotNullParameter(mutableDocument, "<unused var>");
                throw new NotImplementedError("Pipeline evaluation not implemented");
            }
        };
    }

    public final Pipeline getPipeline() {
        return this.pipeline;
    }

    @Override // com.google.firebase.firestore.pipeline.Expression
    public Value toProto$com_google_firebase_firebase_firestore(UserDataReader userDataReader) {
        Intrinsics.checkNotNullParameter(userDataReader, "userDataReader");
        Value valueBuild = Value.newBuilder().setPipelineValue(this.pipeline.toPipelineProto$com_google_firebase_firebase_firestore(userDataReader)).build();
        Intrinsics.checkNotNullExpressionValue(valueBuild, "build(...)");
        return valueBuild;
    }

    public String toString() {
        return "Pipeline(...)";
    }
}
