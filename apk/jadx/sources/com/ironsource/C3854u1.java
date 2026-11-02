package com.ironsource;

import android.os.OutcomeReceiver;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3854u1 {

    /* JADX INFO: renamed from: com.ironsource.u1$a */
    public static final class a implements OutcomeReceiver<Object, Exception> {
        final /* synthetic */ Continuation<Unit> a;

        /* JADX WARN: Multi-variable type inference failed */
        a(Continuation<? super Unit> continuation) {
            this.a = continuation;
        }

        @Override // android.os.OutcomeReceiver
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onError(Exception error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Continuation<Unit> continuation = this.a;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m3022constructorimpl(ResultKt.createFailure(error)));
        }

        @Override // android.os.OutcomeReceiver
        public void onResult(Object obj) {
            Continuation<Unit> continuation = this.a;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m3022constructorimpl(Unit.INSTANCE));
        }
    }

    public static final OutcomeReceiver<Object, Exception> a(Continuation<? super Unit> continuation) {
        Intrinsics.checkNotNullParameter(continuation, "<this>");
        return new a(continuation);
    }
}
