package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ls3 extends SuspendLambda implements Function2 {
    public d21 a;
    public Object b;
    public Object c;
    public String d;
    public uj2[] e;
    public uj2 f;
    public ks3 g;
    public ms3 h;
    public h21 i;
    public b21 j;
    public b21 k;
    public h21 l;
    public b21 m;
    public int n;
    public int o;
    public int p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ ms3 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ls3(ms3 ms3Var, Continuation continuation) {
        super(2, continuation);
        this.s = ms3Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ls3 ls3Var = new ls3(this.s, continuation);
        ls3Var.r = obj;
        return ls3Var;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        ls3 ls3Var = new ls3(this.s, (Continuation) obj2);
        ls3Var.r = (CoroutineScope) obj;
        return ls3Var.invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:103:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:106:0x0501  */
    /* JADX WARN: Code duplicated, block: B:109:0x0511  */
    /* JADX WARN: Code duplicated, block: B:114:0x0525  */
    /* JADX WARN: Code duplicated, block: B:119:0x0539  */
    /* JADX WARN: Code duplicated, block: B:124:0x054d  */
    /* JADX WARN: Code duplicated, block: B:127:0x055d  */
    /* JADX WARN: Code duplicated, block: B:130:0x056d  */
    /* JADX WARN: Code duplicated, block: B:133:0x057d  */
    /* JADX WARN: Code duplicated, block: B:136:0x058d  */
    /* JADX WARN: Code duplicated, block: B:139:0x059d  */
    /* JADX WARN: Code duplicated, block: B:142:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:145:0x05bc  */
    /* JADX WARN: Code duplicated, block: B:148:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:151:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:154:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:157:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:160:0x060c  */
    /* JADX WARN: Code duplicated, block: B:162:0x061a  */
    /* JADX WARN: Code duplicated, block: B:164:0x0628  */
    /* JADX WARN: Code duplicated, block: B:167:0x0638  */
    /* JADX WARN: Code duplicated, block: B:170:0x0647  */
    /* JADX WARN: Code duplicated, block: B:173:0x0656  */
    /* JADX WARN: Code duplicated, block: B:176:0x0666  */
    /* JADX WARN: Code duplicated, block: B:179:0x0678  */
    /* JADX WARN: Code duplicated, block: B:182:0x0688  */
    /* JADX WARN: Code duplicated, block: B:185:0x0698  */
    /* JADX WARN: Code duplicated, block: B:188:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:190:0x06bc  */
    /* JADX WARN: Code duplicated, block: B:194:0x06de  */
    /* JADX WARN: Code duplicated, block: B:195:0x06e3  */
    /* JADX WARN: Code duplicated, block: B:198:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:199:0x06ed  */
    /* JADX WARN: Code duplicated, block: B:202:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:204:0x0725  */
    /* JADX WARN: Code duplicated, block: B:206:0x073f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:207:0x0741  */
    /* JADX WARN: Code duplicated, block: B:210:0x0783  */
    /* JADX WARN: Code duplicated, block: B:211:0x079c  */
    /* JADX WARN: Code duplicated, block: B:230:0x03fa A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x016b  */
    /* JADX WARN: Code duplicated, block: B:44:0x0189  */
    /* JADX WARN: Code duplicated, block: B:47:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:53:0x0201  */
    /* JADX WARN: Code duplicated, block: B:56:0x022b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0231  */
    /* JADX WARN: Code duplicated, block: B:61:0x0311  */
    /* JADX WARN: Code duplicated, block: B:63:0x0317  */
    /* JADX WARN: Code duplicated, block: B:64:0x031a  */
    /* JADX WARN: Code duplicated, block: B:65:0x031d  */
    /* JADX WARN: Code duplicated, block: B:66:0x0320  */
    /* JADX WARN: Code duplicated, block: B:67:0x0323  */
    /* JADX WARN: Code duplicated, block: B:68:0x0326  */
    /* JADX WARN: Code duplicated, block: B:69:0x0329  */
    /* JADX WARN: Code duplicated, block: B:70:0x032c  */
    /* JADX WARN: Code duplicated, block: B:71:0x032f  */
    /* JADX WARN: Code duplicated, block: B:75:0x033e  */
    /* JADX WARN: Code duplicated, block: B:79:0x037c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0398  */
    /* JADX WARN: Code duplicated, block: B:86:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:88:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:92:0x0420  */
    /* JADX WARN: Code duplicated, block: B:93:0x0426  */
    /* JADX WARN: Code duplicated, block: B:96:0x0431  */
    /* JADX WARN: Code duplicated, block: B:97:0x0437  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x037c -> B:80:0x0394). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r33) {
        /*
            Method dump skipped, instruction units count: 2128
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ls3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
