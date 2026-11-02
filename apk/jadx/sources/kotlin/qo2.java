package kotlin;

import android.content.Context;
import android.os.SystemClock;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qo2 extends SuspendLambda implements Function2 {
    public ro2 a;
    public String b;
    public rr3 c;
    public rr3 d;
    public Mutex e;
    public int f;
    public final /* synthetic */ ro2 g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qo2(ro2 ro2Var, String str, Continuation continuation) {
        super(2, continuation);
        this.g = ro2Var;
        this.h = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qo2(this.g, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qo2(this.g, this.h, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01eb A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x01ef A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x01fa A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x01fe A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0202 A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x0203 A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0209 A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:127:0x0211 A[Catch: all -> 0x021a, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0219 A[Catch: all -> 0x021a, TRY_LEAVE, TryCatch #8 {all -> 0x021a, blocks: (B:109:0x01e4, B:111:0x01eb, B:113:0x01ef, B:115:0x01f3, B:116:0x01f6, B:118:0x01fa, B:120:0x01fe, B:122:0x0202, B:123:0x0203, B:124:0x0208, B:125:0x0209, B:126:0x0210, B:127:0x0211, B:128:0x0218, B:129:0x0219), top: B:150:0x01e4 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0094 A[Catch: all -> 0x00ff, TryCatch #11 {all -> 0x00ff, blocks: (B:25:0x0090, B:27:0x0094, B:30:0x00a3, B:31:0x00af, B:33:0x00c5, B:34:0x00ca, B:36:0x00d8, B:37:0x00db), top: B:143:0x0090, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c5 A[Catch: all -> 0x00ff, TryCatch #11 {all -> 0x00ff, blocks: (B:25:0x0090, B:27:0x0094, B:30:0x00a3, B:31:0x00af, B:33:0x00c5, B:34:0x00ca, B:36:0x00d8, B:37:0x00db), top: B:143:0x0090, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00d8 A[Catch: all -> 0x00ff, TryCatch #11 {all -> 0x00ff, blocks: (B:25:0x0090, B:27:0x0094, B:30:0x00a3, B:31:0x00af, B:33:0x00c5, B:34:0x00ca, B:36:0x00d8, B:37:0x00db), top: B:143:0x0090, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00f5 A[Catch: all -> 0x0104, TRY_LEAVE, TryCatch #4 {all -> 0x0104, blocks: (B:38:0x00ee, B:40:0x00f5, B:43:0x0100, B:44:0x0103, B:25:0x0090, B:27:0x0094, B:30:0x00a3, B:31:0x00af, B:33:0x00c5, B:34:0x00ca, B:36:0x00d8, B:37:0x00db), top: B:143:0x0090, inners: #11 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0112 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0116 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0121 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0125 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0129 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:64:0x012a A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0130 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0138 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:70:0x0140 A[Catch: all -> 0x0141, TRY_LEAVE, TryCatch #0 {all -> 0x0141, blocks: (B:50:0x010b, B:52:0x0112, B:54:0x0116, B:56:0x011a, B:57:0x011d, B:59:0x0121, B:61:0x0125, B:63:0x0129, B:64:0x012a, B:65:0x012f, B:66:0x0130, B:67:0x0137, B:68:0x0138, B:69:0x013f, B:70:0x0140), top: B:136:0x010b }] */
    /* JADX WARN: Code duplicated, block: B:84:0x016c A[Catch: all -> 0x01d8, TryCatch #6 {all -> 0x01d8, blocks: (B:82:0x0168, B:84:0x016c, B:87:0x017b, B:88:0x0187, B:90:0x019d, B:91:0x01a2, B:93:0x01b0, B:94:0x01b3), top: B:146:0x0168, outer: #10 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x017a  */
    /* JADX WARN: Code duplicated, block: B:90:0x019d A[Catch: all -> 0x01d8, TryCatch #6 {all -> 0x01d8, blocks: (B:82:0x0168, B:84:0x016c, B:87:0x017b, B:88:0x0187, B:90:0x019d, B:91:0x01a2, B:93:0x01b0, B:94:0x01b3), top: B:146:0x0168, outer: #10 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01b0 A[Catch: all -> 0x01d8, TryCatch #6 {all -> 0x01d8, blocks: (B:82:0x0168, B:84:0x016c, B:87:0x017b, B:88:0x0187, B:90:0x019d, B:91:0x01a2, B:93:0x01b0, B:94:0x01b3), top: B:146:0x0168, outer: #10 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01cd A[Catch: all -> 0x01dd, TRY_LEAVE, TryCatch #10 {all -> 0x01dd, blocks: (B:95:0x01c6, B:97:0x01cd, B:102:0x01d9, B:103:0x01dc, B:82:0x0168, B:84:0x016c, B:87:0x017b, B:88:0x0187, B:90:0x019d, B:91:0x01a2, B:93:0x01b0, B:94:0x01b3), top: B:146:0x0168, inners: #6 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ro2 ro2Var;
        String str;
        rr3 rr3VarA;
        rr3 rr3Var;
        Mutex mutex;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        Mutex mutex2;
        rr3 rr3Var4;
        cu2 cu2Var;
        lq2 lq2Var;
        Job job;
        Object obj2;
        Context context;
        Context applicationContext;
        cu2 cu2Var2;
        lq2 lq2Var2;
        Job job2;
        Object obj3;
        Context context2;
        Context applicationContext2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ro2Var = this.g;
            g83 g83Var = ro2Var.e;
            s11 s11Var = s11.CUI_NAME_PLAY_PREWARM;
            str = this.h;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    mutex2 = ro2Var.f;
                    this.a = ro2Var;
                    this.b = str;
                    this.c = rr3VarA2;
                    this.d = rr3VarA2;
                    this.e = mutex2;
                    this.f = 1;
                    if (mutex2.lock(null, this) != coroutine_suspended) {
                        rr3Var4 = rr3VarA2;
                        cu2Var = ro2Var.h;
                        if (cu2Var == null) {
                            context = ro2Var.d.a;
                            applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            du2 du2Var = new du2(new iu2(context));
                            Intrinsics.checkNotNullExpressionValue(du2Var, "create(...)");
                            ro2Var.h = du2Var;
                            cu2Var = du2Var;
                        }
                        ro2Var.b.getClass();
                        ro2Var.g = SystemClock.elapsedRealtime();
                        lq2Var = new lq2();
                        if (str.length() > 0) {
                            lq2Var.a.add(str);
                        }
                        ((du2) cu2Var).a(new mq2(lq2Var));
                        job = ro2Var.i;
                        if (job != null) {
                            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                        }
                        ro2Var.i = BuildersKt__Builders_commonKt.launch$default(ro2Var.a, null, null, new po2(ro2Var, null), 3, null);
                        obj2 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                } catch (Throwable th) {
                    th = th;
                    rr3Var3 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    mutex = ro2Var.f;
                    this.a = ro2Var;
                    this.b = str;
                    this.c = rr3VarA;
                    this.d = rr3VarA;
                    this.e = mutex;
                    this.f = 2;
                    if (mutex.lock(null, this) != coroutine_suspended) {
                        rr3Var2 = rr3VarA;
                        cu2Var2 = ro2Var.h;
                        if (cu2Var2 == null) {
                            context2 = ro2Var.d.a;
                            applicationContext2 = context2.getApplicationContext();
                            if (applicationContext2 != null) {
                                context2 = applicationContext2;
                            }
                            du2 du2Var2 = new du2(new iu2(context2));
                            Intrinsics.checkNotNullExpressionValue(du2Var2, "create(...)");
                            ro2Var.h = du2Var2;
                            cu2Var2 = du2Var2;
                        }
                        ro2Var.b.getClass();
                        ro2Var.g = SystemClock.elapsedRealtime();
                        lq2Var2 = new lq2();
                        if (str.length() > 0) {
                            lq2Var2.a.add(str);
                        }
                        ((du2) cu2Var2).a(new mq2(lq2Var2));
                        job2 = ro2Var.i;
                        if (job2 != null) {
                            Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                        }
                        ro2Var.i = BuildersKt__Builders_commonKt.launch$default(ro2Var.a, null, null, new po2(ro2Var, null), 3, null);
                        obj3 = p005kotlin.Unit.INSTANCE;
                        mutex.unlock(null);
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3VarA, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            Mutex mutex3 = this.e;
            rr3VarA2 = this.d;
            rr3 rr3Var5 = this.c;
            String str2 = this.b;
            ro2Var = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                str = str2;
                rr3Var4 = rr3Var5;
                mutex2 = mutex3;
                try {
                    try {
                        cu2Var = ro2Var.h;
                        if (cu2Var == null) {
                            context = ro2Var.d.a;
                            applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            du2 du2Var3 = new du2(new iu2(context));
                            Intrinsics.checkNotNullExpressionValue(du2Var3, "create(...)");
                            ro2Var.h = du2Var3;
                            cu2Var = du2Var3;
                        }
                        ro2Var.b.getClass();
                        ro2Var.g = SystemClock.elapsedRealtime();
                        lq2Var = new lq2();
                        if (str.length() > 0) {
                            lq2Var.a.add(str);
                        }
                        ((du2) cu2Var).a(new mq2(lq2Var));
                        job = ro2Var.i;
                        if (job != null) {
                            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                        }
                        ro2Var.i = BuildersKt__Builders_commonKt.launch$default(ro2Var.a, null, null, new po2(ro2Var, null), 3, null);
                        obj2 = p005kotlin.Unit.INSTANCE;
                        mutex2.unlock(null);
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th3) {
                        th = th3;
                        rr3Var5 = rr3Var4;
                        rr3Var3 = rr3VarA2;
                        rr3VarA2 = rr3Var5;
                        try {
                            rr3VarA2.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3VarA2.a(th);
                            }
                            if (th instanceof TimeoutCancellationException) {
                                throw new i21(th);
                            }
                            if (th instanceof CancellationException) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        } catch (Throwable th4) {
                            try {
                                throw th4;
                            } catch (Throwable th5) {
                                CloseableKt.closeFinally(rr3Var3, th4);
                                throw th5;
                            }
                        }
                    }
                } catch (Throwable th6) {
                    mutex2.unlock(null);
                    throw th6;
                }
            } catch (Throwable th7) {
                th = th7;
                rr3Var3 = rr3VarA2;
                rr3VarA2 = rr3Var5;
                rr3VarA2.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA2.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            }
        }
        if (i != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Mutex mutex4 = this.e;
        rr3VarA = this.d;
        rr3 rr3Var6 = this.c;
        String str3 = this.b;
        ro2Var = this.a;
        try {
            p005kotlin.ResultKt.throwOnFailure(obj);
            str = str3;
            rr3Var2 = rr3Var6;
            mutex = mutex4;
            try {
                try {
                    cu2Var2 = ro2Var.h;
                    if (cu2Var2 == null) {
                        context2 = ro2Var.d.a;
                        applicationContext2 = context2.getApplicationContext();
                        if (applicationContext2 != null) {
                            context2 = applicationContext2;
                        }
                        du2 du2Var4 = new du2(new iu2(context2));
                        Intrinsics.checkNotNullExpressionValue(du2Var4, "create(...)");
                        ro2Var.h = du2Var4;
                        cu2Var2 = du2Var4;
                    }
                    ro2Var.b.getClass();
                    ro2Var.g = SystemClock.elapsedRealtime();
                    lq2Var2 = new lq2();
                    if (str.length() > 0) {
                        lq2Var2.a.add(str);
                    }
                    ((du2) cu2Var2).a(new mq2(lq2Var2));
                    job2 = ro2Var.i;
                    if (job2 != null) {
                        Job.DefaultImpls.cancel$default(job2, (CancellationException) null, 1, (Object) null);
                    }
                    ro2Var.i = BuildersKt__Builders_commonKt.launch$default(ro2Var.a, null, null, new po2(ro2Var, null), 3, null);
                    obj3 = p005kotlin.Unit.INSTANCE;
                    mutex.unlock(null);
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th8) {
                    mutex.unlock(null);
                    throw th8;
                }
            } catch (Throwable th9) {
                th = th9;
                rr3Var6 = rr3Var2;
                rr3Var = rr3VarA;
                rr3VarA = rr3Var6;
                try {
                    rr3VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th10) {
                    try {
                        throw th10;
                    } catch (Throwable th11) {
                        CloseableKt.closeFinally(rr3Var, th10);
                        throw th11;
                    }
                }
            }
        } catch (Throwable th12) {
            th = th12;
            rr3Var = rr3VarA;
            rr3VarA = rr3Var6;
            rr3VarA.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                rr3VarA.a(th);
            }
            if (th instanceof TimeoutCancellationException) {
                throw new i21(th);
            }
            if (th instanceof CancellationException) {
                throw new wz0(th);
            }
            if (th instanceof w01) {
                throw th;
            }
            throw new b01(th);
        }
    }
}
