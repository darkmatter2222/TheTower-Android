package kotlin;

import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface ay0 {
    default Object a(boolean z, hl0 hl0Var) {
        return p005kotlin.Unit.INSTANCE;
    }

    default p005kotlin.Unit a(Continuation continuation) {
        return p005kotlin.Unit.INSTANCE;
    }

    void a(ky kyVar);
}
