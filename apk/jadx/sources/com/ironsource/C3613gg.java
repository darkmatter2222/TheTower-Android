package com.ironsource;

import android.os.Handler;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.gg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3613gg {
    public static final InterfaceC3595fg a(final Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "<this>");
        return new InterfaceC3595fg() { // from class: com.ironsource.gg$$ExternalSyntheticLambda2
            @Override // com.ironsource.InterfaceC3595fg
            public final void a(Function0 function0) {
                C3613gg.a(handler, function0);
            }
        };
    }

    public static final InterfaceC3595fg a(final com.ironsource.environment.thread.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        return new InterfaceC3595fg() { // from class: com.ironsource.gg$$ExternalSyntheticLambda0
            @Override // com.ironsource.InterfaceC3595fg
            public final void a(Function0 function0) {
                C3613gg.a(bVar, function0);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Handler handler, final Function0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        handler.post(new Runnable() { // from class: com.ironsource.gg$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3613gg.a(it);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(com.ironsource.environment.thread.b bVar, final Function0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        bVar.a(new Runnable() { // from class: com.ironsource.gg$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3613gg.b(it);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function0 function0) {
        function0.invoke();
    }
}
