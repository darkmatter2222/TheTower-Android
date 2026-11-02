package kotlin;

import android.view.GestureDetector;
import android.view.MotionEvent;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class bn3 extends Lambda implements Function1 {
    public final /* synthetic */ Ref.ObjectRef a;
    public final /* synthetic */ rm3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bn3(Ref.ObjectRef objectRef, rm3 rm3Var) {
        super(1);
        this.a = objectRef;
        this.b = rm3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        MotionEvent ev = (MotionEvent) obj;
        Intrinsics.checkNotNullParameter(ev, "ev");
        GestureDetector gestureDetector = (GestureDetector) this.a.element;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(ev);
        }
        ((rv0) this.b).a(ev);
        return Boolean.FALSE;
    }
}
