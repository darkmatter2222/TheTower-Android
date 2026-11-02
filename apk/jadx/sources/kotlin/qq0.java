package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class qq0 extends SuspendLambda implements Function2 {
    public i11 a;
    public tq0 b;
    public String c;
    public String d;
    public String e;
    public String f;
    public rq0 g;
    public m11 h;
    public g11 i;
    public g11 j;
    public m11 k;
    public g11 l;
    public i11 m;
    public int n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ rq0 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qq0(rq0 rq0Var, Continuation continuation) {
        super(2, continuation);
        this.q = rq0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        qq0 qq0Var = new qq0(this.q, continuation);
        qq0Var.p = obj;
        return qq0Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        qq0 qq0Var = new qq0(this.q, (Continuation) obj2);
        qq0Var.p = (CoroutineScope) obj;
        return qq0Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:23:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:26:0x0109  */
    /* JADX WARN: Code duplicated, block: B:29:0x012e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0150  */
    /* JADX WARN: Code duplicated, block: B:38:0x019d  */
    /* JADX WARN: Code duplicated, block: B:42:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:45:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:47:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:51:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:55:0x0230  */
    /* JADX WARN: Code duplicated, block: B:58:0x023e  */
    /* JADX WARN: Code duplicated, block: B:61:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:62:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:64:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:65:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:69:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:74:0x0312  */
    /* JADX WARN: Code duplicated, block: B:77:0x0327  */
    /* JADX WARN: Code duplicated, block: B:82:0x0356 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x0358  */
    /* JADX WARN: Code duplicated, block: B:86:0x0390  */
    /* JADX WARN: Code duplicated, block: B:90:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x02fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:95:0x02eb A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0230 -> B:56:0x023a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r29) {
        /*
            Method dump skipped, instruction units count: 919
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.qq0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
