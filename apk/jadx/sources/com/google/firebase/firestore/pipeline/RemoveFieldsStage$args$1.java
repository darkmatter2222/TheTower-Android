package com.google.firebase.firestore.pipeline;

import com.google.firestore.v1.Value;
import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: stage.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* synthetic */ class RemoveFieldsStage$args$1 extends FunctionReferenceImpl implements Function1<Field, Value> {
    public static final RemoveFieldsStage$args$1 INSTANCE = new RemoveFieldsStage$args$1();

    RemoveFieldsStage$args$1() {
        super(1, Field.class, "toProto", "toProto$com_google_firebase_firebase_firestore()Lcom/google/firestore/v1/Value;", 0);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Value invoke(Field p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return p0.toProto$com_google_firebase_firebase_firestore();
    }
}
