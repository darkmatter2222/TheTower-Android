package kotlin;

import android.app.Activity;
import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.pip.PictureInPictureAdPosition;
import java.io.Closeable;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class zn2 extends SuspendLambda implements Function2 {
    public Object a;
    public Object b;
    public PictureInPictureAdPosition c;
    public rr3 d;
    public Closeable e;
    public ViewGroup f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public int k;
    public final /* synthetic */ ao2 l;
    public final /* synthetic */ int m;
    public final /* synthetic */ Activity n;
    public final /* synthetic */ PictureInPictureAdPosition o;
    public final /* synthetic */ boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zn2(ao2 ao2Var, int i, Activity activity, PictureInPictureAdPosition pictureInPictureAdPosition, boolean z, Continuation continuation) {
        super(2, continuation);
        this.l = ao2Var;
        this.m = i;
        this.n = activity;
        this.o = pictureInPictureAdPosition;
        this.p = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new zn2(this.l, this.m, this.n, this.o, this.p, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((zn2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:162:0x0463 -> B:261:0x0465). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x01e1 -> B:260:0x01e6). Please report as a decompilation issue!!! */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 16131. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r32) {
        /*
            Method dump skipped, instruction units count: 1613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.zn2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
