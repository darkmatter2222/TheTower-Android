package kotlin;

import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public interface q52 extends eq1 {
    nr1 a();

    default Object a(Continuation continuation) {
        return p005kotlin.Unit.INSTANCE;
    }
}
