package kotlin;

import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class bm1 extends SuspendLambda implements Function2 {
    public cm1 a;
    public rr3 b;
    public Closeable c;
    public Mutex d;
    public int e;
    public final /* synthetic */ cm1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bm1(cm1 cm1Var, Continuation continuation) {
        super(2, continuation);
        this.f = cm1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new bm1(this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new bm1(this.f, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x017e A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0182 A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0186 A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0187 A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x018d A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0195 A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:113:0x019d A[Catch: all -> 0x019e, TRY_LEAVE, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:134:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:138:0x0207  */
    /* JADX WARN: Code duplicated, block: B:142:0x021e  */
    /* JADX WARN: Code duplicated, block: B:145:0x022c A[Catch: all -> 0x001f, TRY_LEAVE, TryCatch #22 {all -> 0x001f, blocks: (B:7:0x001a, B:143:0x0221, B:145:0x022c), top: B:225:0x001a }] */
    /* JADX WARN: Code duplicated, block: B:166:0x025a A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x025e A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0269 A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x026d A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x0271 A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0272 A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:180:0x0278 A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x0280 A[Catch: all -> 0x0289, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x0288 A[Catch: all -> 0x0289, TRY_LEAVE, TryCatch #7 {all -> 0x0289, blocks: (B:164:0x0253, B:166:0x025a, B:168:0x025e, B:170:0x0262, B:171:0x0265, B:173:0x0269, B:175:0x026d, B:177:0x0271, B:178:0x0272, B:179:0x0277, B:180:0x0278, B:181:0x027f, B:182:0x0280, B:183:0x0287, B:184:0x0288), top: B:203:0x0253 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:63:0x0119  */
    /* JADX WARN: Code duplicated, block: B:70:0x0130  */
    /* JADX WARN: Code duplicated, block: B:73:0x013e A[Catch: all -> 0x005b, TRY_LEAVE, TryCatch #20 {all -> 0x005b, blocks: (B:25:0x0056, B:71:0x0133, B:73:0x013e), top: B:222:0x0056 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x016f A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x0173 A[Catch: all -> 0x019e, TryCatch #21 {all -> 0x019e, blocks: (B:93:0x0168, B:95:0x016f, B:97:0x0173, B:99:0x0177, B:100:0x017a, B:102:0x017e, B:104:0x0182, B:106:0x0186, B:107:0x0187, B:108:0x018c, B:109:0x018d, B:110:0x0194, B:111:0x0195, B:112:0x019c, B:113:0x019d), top: B:224:0x0168 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x003b: MOVE (r1 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:18:0x003a */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0077: MOVE (r1 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:36:0x0076 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r1v43 */
    /* JADX WARN: Type inference failed for: r1v54, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v61 */
    /* JADX WARN: Type inference failed for: r1v62 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? r0;
        rr3 rr3Var;
        rr3 rr3Var2;
        ?? r1;
        rr3 rr3Var3;
        rr3 rr3Var4;
        rr3 rr3Var5;
        ?? r2;
        rr3 rr3VarA;
        ?? r3;
        Mutex mutex;
        cm1 cm1Var;
        rr3 rr3Var6;
        Mutex mutex2;
        cm1 cm1Var2;
        rr3 rr3Var7;
        Closeable closeable;
        rr3 rr3Var8;
        Closeable closeable2;
        rr3 rr3Var9;
        rp0 rp0Var;
        Closeable closeable3;
        rr3 rr3Var10;
        mk3 mk3Var;
        pn pnVar;
        cm1 cm1Var3;
        Object obj2;
        rr3 rr3Var11;
        Closeable closeable4;
        rp0 rp0Var2;
        Closeable closeable5;
        rr3 rr3Var12;
        mk3 mk3Var2;
        pn pnVar2;
        cm1 cm1Var4;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r4 = this.e;
        try {
            try {
                switch (r4) {
                    case 0:
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        cm1 cm1Var5 = this.f;
                        g83 g83Var = cm1Var5.g;
                        s11 s11Var = s11.CUI_NAME_UNINITIALIZE_SDK;
                        List listEmptyList = CollectionsKt.emptyList();
                        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
                        if (hs3.b().a == null) {
                            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                            try {
                                mutex2 = cm1Var5.x;
                                this.a = cm1Var5;
                                this.b = tu2VarA;
                                this.c = tu2VarA;
                                this.d = mutex2;
                                this.e = 1;
                                if (mutex2.lock(null, this) != coroutine_suspended) {
                                    cm1Var2 = cm1Var5;
                                    rr3Var7 = tu2VarA;
                                    closeable = tu2VarA;
                                    try {
                                        try {
                                            cm1Var2.y = kl1.INITIALIZATION_NOT_STARTED;
                                            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                            mutex2.unlock(null);
                                            try {
                                                Object obj4 = (jb3) cm1Var2.t.get();
                                                this.a = cm1Var2;
                                                this.b = rr3Var7;
                                                this.c = closeable;
                                                this.d = null;
                                                this.e = 2;
                                                rp0Var = (rp0) obj4;
                                                rp0Var.getClass();
                                                if (rp0.a(rp0Var, this) != coroutine_suspended) {
                                                    closeable3 = closeable;
                                                    rr3Var10 = rr3Var7;
                                                    try {
                                                        mk3Var = (mk3) cm1Var2.v.get();
                                                        this.a = cm1Var2;
                                                        this.b = rr3Var10;
                                                        this.c = closeable3;
                                                        this.e = 3;
                                                        mk3Var.getClass();
                                                        if (rp0.a(mk3Var, this) != coroutine_suspended) {
                                                            rr3Var9 = rr3Var10;
                                                            closeable2 = closeable3;
                                                            try {
                                                                pnVar = cm1Var2.u;
                                                                this.a = cm1Var2;
                                                                this.b = rr3Var9;
                                                                this.c = closeable2;
                                                                try {
                                                                    this.e = 4;
                                                                    pnVar.getClass();
                                                                    if (pn.a(pnVar, true, (Continuation) this) != coroutine_suspended) {
                                                                        r1 = closeable2;
                                                                        rr3Var4 = rr3Var9;
                                                                        cm1Var3 = cm1Var2;
                                                                        cm1Var3.B.set(false);
                                                                        obj2 = p005kotlin.Unit.INSTANCE;
                                                                        if (obj2 instanceof i01) {
                                                                            xs3.a((i01) obj2, false);
                                                                            break;
                                                                        }
                                                                        CloseableKt.closeFinally(r1, null);
                                                                        return p005kotlin.Unit.INSTANCE;
                                                                    }
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    rr3Var8 = rr3Var9;
                                                                    closeable = closeable2;
                                                                    r2 = closeable;
                                                                    rr3Var5 = rr3Var8;
                                                                    try {
                                                                        rr3Var5.b(th);
                                                                        if (!(th instanceof v24)) {
                                                                            throw th;
                                                                        }
                                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                                            rr3Var5.a(th);
                                                                        }
                                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                                            throw new i21(th);
                                                                        }
                                                                        if (!(th instanceof CancellationException)) {
                                                                            throw new wz0(th);
                                                                        }
                                                                        if (th instanceof w01) {
                                                                            throw th;
                                                                        }
                                                                        throw new b01(th);
                                                                    } catch (Throwable th2) {
                                                                        try {
                                                                            throw th2;
                                                                        } catch (Throwable th3) {
                                                                            CloseableKt.closeFinally(r2, th2);
                                                                            throw th3;
                                                                        }
                                                                    }
                                                                }
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                r2 = closeable2;
                                                                rr3Var5 = rr3Var9;
                                                                rr3Var5.b(th);
                                                                if (!(th instanceof v24)) {
                                                                    throw th;
                                                                }
                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                    rr3Var5.a(th);
                                                                }
                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                    throw new i21(th);
                                                                }
                                                                if (!(th instanceof CancellationException)) {
                                                                    throw new wz0(th);
                                                                }
                                                                if (th instanceof w01) {
                                                                    throw th;
                                                                }
                                                                throw new b01(th);
                                                            }
                                                        }
                                                    } catch (Throwable th5) {
                                                        Closeable closeable6 = closeable3;
                                                        rr3Var4 = rr3Var10;
                                                        th = th5;
                                                        r1 = closeable6;
                                                        rr3Var5 = rr3Var4;
                                                        r2 = r1;
                                                        rr3Var5.b(th);
                                                        if (!(th instanceof v24)) {
                                                            throw th;
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                            rr3Var5.a(th);
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException)) {
                                                            throw new i21(th);
                                                        }
                                                        if (!(th instanceof CancellationException)) {
                                                            throw new wz0(th);
                                                        }
                                                        if (th instanceof w01) {
                                                            throw th;
                                                        }
                                                        throw new b01(th);
                                                    }
                                                }
                                            } catch (Throwable th6) {
                                                closeable2 = closeable;
                                                rr3Var9 = rr3Var7;
                                                th = th6;
                                                r2 = closeable2;
                                                rr3Var5 = rr3Var9;
                                                rr3Var5.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    rr3Var5.a(th);
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    throw new i21(th);
                                                }
                                                if (!(th instanceof CancellationException)) {
                                                    throw new wz0(th);
                                                }
                                                if (th instanceof w01) {
                                                    throw th;
                                                }
                                                throw new b01(th);
                                            }
                                        } catch (Throwable th7) {
                                            rr3Var8 = rr3Var7;
                                            th = th7;
                                            r2 = closeable;
                                            rr3Var5 = rr3Var8;
                                            rr3Var5.b(th);
                                            if (!(th instanceof v24)) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                rr3Var5.a(th);
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                throw new i21(th);
                                            }
                                            if (!(th instanceof CancellationException)) {
                                                throw new wz0(th);
                                            }
                                            if (th instanceof w01) {
                                                throw th;
                                            }
                                            throw new b01(th);
                                        }
                                    } catch (Throwable th8) {
                                        mutex2.unlock(null);
                                        throw th8;
                                    }
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                r2 = tu2VarA;
                                rr3Var5 = tu2VarA;
                                rr3Var5.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    rr3Var5.a(th);
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    throw new i21(th);
                                }
                                if (!(th instanceof CancellationException)) {
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
                                mutex = cm1Var5.x;
                                this.a = cm1Var5;
                                this.b = rr3VarA;
                                this.c = rr3VarA;
                                this.d = mutex;
                                this.e = 5;
                                if (mutex.lock(null, this) != coroutine_suspended) {
                                    cm1Var = cm1Var5;
                                    rr3Var6 = rr3VarA;
                                    closeable4 = rr3VarA;
                                    try {
                                        try {
                                            cm1Var.y = kl1.INITIALIZATION_NOT_STARTED;
                                            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                            mutex.unlock(null);
                                            try {
                                                Object obj5 = (jb3) cm1Var.t.get();
                                                this.a = cm1Var;
                                                this.b = rr3Var6;
                                                this.c = closeable4;
                                                this.d = null;
                                                this.e = 6;
                                                rp0Var2 = (rp0) obj5;
                                                rp0Var2.getClass();
                                                if (rp0.a(rp0Var2, this) != coroutine_suspended) {
                                                    closeable5 = closeable4;
                                                    rr3Var12 = rr3Var6;
                                                    try {
                                                        mk3Var2 = (mk3) cm1Var.v.get();
                                                        this.a = cm1Var;
                                                        this.b = rr3Var12;
                                                        this.c = closeable5;
                                                        this.e = 7;
                                                        mk3Var2.getClass();
                                                        if (rp0.a(mk3Var2, this) != coroutine_suspended) {
                                                            rr3VarA = rr3Var12;
                                                            r3 = closeable5;
                                                            try {
                                                                pnVar2 = cm1Var.u;
                                                                this.a = cm1Var;
                                                                this.b = rr3VarA;
                                                                this.c = r3;
                                                                this.e = 8;
                                                                pnVar2.getClass();
                                                                if (pn.a(pnVar2, true, (Continuation) this) != coroutine_suspended) {
                                                                    r0 = r3;
                                                                    rr3Var2 = rr3VarA;
                                                                    cm1Var4 = cm1Var;
                                                                    cm1Var4.B.set(false);
                                                                    obj3 = p005kotlin.Unit.INSTANCE;
                                                                    if (obj3 instanceof i01) {
                                                                        xs3.a((i01) obj3, false);
                                                                        break;
                                                                    }
                                                                    CloseableKt.closeFinally(r0, null);
                                                                    return p005kotlin.Unit.INSTANCE;
                                                                }
                                                            } catch (Throwable th10) {
                                                                th = th10;
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
                                                                } catch (Throwable th11) {
                                                                    try {
                                                                        throw th11;
                                                                    } catch (Throwable th12) {
                                                                        CloseableKt.closeFinally(r3, th11);
                                                                        throw th12;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    } catch (Throwable th13) {
                                                        Closeable closeable7 = closeable5;
                                                        rr3Var2 = rr3Var12;
                                                        th = th13;
                                                        r0 = closeable7;
                                                        rr3VarA = rr3Var2;
                                                        r3 = r0;
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
                                            } catch (Throwable th14) {
                                                r3 = closeable4;
                                                rr3VarA = rr3Var6;
                                                th = th14;
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
                                        } catch (Throwable th15) {
                                            mutex.unlock(null);
                                            throw th15;
                                        }
                                    } catch (Throwable th16) {
                                        rr3Var11 = rr3Var6;
                                        th = th16;
                                        r3 = closeable4;
                                        rr3VarA = rr3Var11;
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
                            } catch (Throwable th17) {
                                th = th17;
                                r3 = rr3VarA;
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
                        return coroutine_suspended;
                    case 1:
                        mutex2 = this.d;
                        closeable = this.c;
                        rr3Var8 = this.b;
                        cm1 cm1Var6 = this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            rr3Var7 = rr3Var8;
                            cm1Var2 = cm1Var6;
                            closeable = closeable;
                            cm1Var2.y = kl1.INITIALIZATION_NOT_STARTED;
                            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                            mutex2.unlock(null);
                            Object obj6 = (jb3) cm1Var2.t.get();
                            this.a = cm1Var2;
                            this.b = rr3Var7;
                            this.c = closeable;
                            this.d = null;
                            this.e = 2;
                            rp0Var = (rp0) obj6;
                            rp0Var.getClass();
                            if (rp0.a(rp0Var, this) != coroutine_suspended) {
                                closeable3 = closeable;
                                rr3Var10 = rr3Var7;
                                mk3Var = (mk3) cm1Var2.v.get();
                                this.a = cm1Var2;
                                this.b = rr3Var10;
                                this.c = closeable3;
                                this.e = 3;
                                mk3Var.getClass();
                                if (rp0.a(mk3Var, this) != coroutine_suspended) {
                                    rr3Var9 = rr3Var10;
                                    closeable2 = closeable3;
                                    pnVar = cm1Var2.u;
                                    this.a = cm1Var2;
                                    this.b = rr3Var9;
                                    this.c = closeable2;
                                    this.e = 4;
                                    pnVar.getClass();
                                    if (pn.a(pnVar, true, (Continuation) this) != coroutine_suspended) {
                                        r1 = closeable2;
                                        rr3Var4 = rr3Var9;
                                        cm1Var3 = cm1Var2;
                                        cm1Var3.B.set(false);
                                        obj2 = p005kotlin.Unit.INSTANCE;
                                        if (obj2 instanceof i01) {
                                            xs3.a((i01) obj2, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(r1, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th18) {
                            th = th18;
                            r2 = closeable;
                            rr3Var5 = rr3Var8;
                            rr3Var5.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3Var5.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 2:
                        Closeable closeable8 = this.c;
                        rr3 rr3Var13 = this.b;
                        cm1Var2 = this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var10 = rr3Var13;
                        closeable3 = closeable8;
                        mk3Var = (mk3) cm1Var2.v.get();
                        this.a = cm1Var2;
                        this.b = rr3Var10;
                        this.c = closeable3;
                        this.e = 3;
                        mk3Var.getClass();
                        if (rp0.a(mk3Var, this) != coroutine_suspended) {
                            rr3Var9 = rr3Var10;
                            closeable2 = closeable3;
                            pnVar = cm1Var2.u;
                            this.a = cm1Var2;
                            this.b = rr3Var9;
                            this.c = closeable2;
                            this.e = 4;
                            pnVar.getClass();
                            if (pn.a(pnVar, true, (Continuation) this) != coroutine_suspended) {
                                r1 = closeable2;
                                rr3Var4 = rr3Var9;
                                cm1Var3 = cm1Var2;
                                cm1Var3.B.set(false);
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                    break;
                                }
                                CloseableKt.closeFinally(r1, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                        return coroutine_suspended;
                    case 3:
                        Closeable closeable9 = this.c;
                        rr3 rr3Var14 = this.b;
                        cm1Var2 = this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        closeable2 = closeable9;
                        rr3Var9 = rr3Var14;
                        pnVar = cm1Var2.u;
                        this.a = cm1Var2;
                        this.b = rr3Var9;
                        this.c = closeable2;
                        this.e = 4;
                        pnVar.getClass();
                        if (pn.a(pnVar, true, (Continuation) this) != coroutine_suspended) {
                            r1 = closeable2;
                            rr3Var4 = rr3Var9;
                            cm1Var3 = cm1Var2;
                            cm1Var3.B.set(false);
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(r1, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    case 4:
                        r1 = this.c;
                        rr3Var4 = this.b;
                        cm1Var3 = this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            r1 = r1;
                            rr3Var4 = rr3Var4;
                            cm1Var3.B.set(false);
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                                break;
                            }
                            CloseableKt.closeFinally(r1, null);
                            return p005kotlin.Unit.INSTANCE;
                        } catch (Throwable th19) {
                            th = th19;
                            rr3Var5 = rr3Var4;
                            r2 = r1;
                            rr3Var5.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                rr3Var5.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 5:
                        mutex = this.d;
                        closeable4 = this.c;
                        rr3Var11 = this.b;
                        cm1 cm1Var7 = this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            rr3Var6 = rr3Var11;
                            cm1Var = cm1Var7;
                            closeable4 = closeable4;
                            cm1Var.y = kl1.INITIALIZATION_NOT_STARTED;
                            p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                            mutex.unlock(null);
                            Object obj7 = (jb3) cm1Var.t.get();
                            this.a = cm1Var;
                            this.b = rr3Var6;
                            this.c = closeable4;
                            this.d = null;
                            this.e = 6;
                            rp0Var2 = (rp0) obj7;
                            rp0Var2.getClass();
                            if (rp0.a(rp0Var2, this) != coroutine_suspended) {
                                closeable5 = closeable4;
                                rr3Var12 = rr3Var6;
                                mk3Var2 = (mk3) cm1Var.v.get();
                                this.a = cm1Var;
                                this.b = rr3Var12;
                                this.c = closeable5;
                                this.e = 7;
                                mk3Var2.getClass();
                                if (rp0.a(mk3Var2, this) != coroutine_suspended) {
                                    rr3VarA = rr3Var12;
                                    r3 = closeable5;
                                    pnVar2 = cm1Var.u;
                                    this.a = cm1Var;
                                    this.b = rr3VarA;
                                    this.c = r3;
                                    this.e = 8;
                                    pnVar2.getClass();
                                    if (pn.a(pnVar2, true, (Continuation) this) != coroutine_suspended) {
                                        r0 = r3;
                                        rr3Var2 = rr3VarA;
                                        cm1Var4 = cm1Var;
                                        cm1Var4.B.set(false);
                                        obj3 = p005kotlin.Unit.INSTANCE;
                                        if (obj3 instanceof i01) {
                                            xs3.a((i01) obj3, false);
                                            break;
                                        }
                                        CloseableKt.closeFinally(r0, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th20) {
                            th = th20;
                            r3 = closeable4;
                            rr3VarA = rr3Var11;
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
                    case 6:
                        Closeable closeable10 = this.c;
                        rr3 rr3Var15 = this.b;
                        cm1Var = this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        rr3Var12 = rr3Var15;
                        closeable5 = closeable10;
                        mk3Var2 = (mk3) cm1Var.v.get();
                        this.a = cm1Var;
                        this.b = rr3Var12;
                        this.c = closeable5;
                        this.e = 7;
                        mk3Var2.getClass();
                        if (rp0.a(mk3Var2, this) != coroutine_suspended) {
                            rr3VarA = rr3Var12;
                            r3 = closeable5;
                            pnVar2 = cm1Var.u;
                            this.a = cm1Var;
                            this.b = rr3VarA;
                            this.c = r3;
                            this.e = 8;
                            pnVar2.getClass();
                            if (pn.a(pnVar2, true, (Continuation) this) != coroutine_suspended) {
                                r0 = r3;
                                rr3Var2 = rr3VarA;
                                cm1Var4 = cm1Var;
                                cm1Var4.B.set(false);
                                obj3 = p005kotlin.Unit.INSTANCE;
                                if (obj3 instanceof i01) {
                                    xs3.a((i01) obj3, false);
                                    break;
                                }
                                CloseableKt.closeFinally(r0, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                        return coroutine_suspended;
                    case 7:
                        Closeable closeable11 = this.c;
                        rr3 rr3Var16 = this.b;
                        cm1Var = this.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        r3 = closeable11;
                        rr3VarA = rr3Var16;
                        pnVar2 = cm1Var.u;
                        this.a = cm1Var;
                        this.b = rr3VarA;
                        this.c = r3;
                        this.e = 8;
                        pnVar2.getClass();
                        if (pn.a(pnVar2, true, (Continuation) this) != coroutine_suspended) {
                            r0 = r3;
                            rr3Var2 = rr3VarA;
                            cm1Var4 = cm1Var;
                            cm1Var4.B.set(false);
                            obj3 = p005kotlin.Unit.INSTANCE;
                            if (obj3 instanceof i01) {
                                xs3.a((i01) obj3, false);
                                break;
                            }
                            CloseableKt.closeFinally(r0, null);
                            return p005kotlin.Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    case 8:
                        r0 = this.c;
                        rr3Var2 = this.b;
                        cm1Var4 = this.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            r0 = r0;
                            rr3Var2 = rr3Var2;
                            cm1Var4.B.set(false);
                            obj3 = p005kotlin.Unit.INSTANCE;
                            if (obj3 instanceof i01) {
                                xs3.a((i01) obj3, false);
                                break;
                            }
                            CloseableKt.closeFinally(r0, null);
                            return p005kotlin.Unit.INSTANCE;
                        } catch (Throwable th21) {
                            th = th21;
                            rr3VarA = rr3Var2;
                            r3 = r0;
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
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th22) {
                th = th22;
                r1 = r4;
                rr3Var4 = rr3Var3;
            }
        } catch (Throwable th23) {
            th = th23;
            r0 = r4;
            rr3Var2 = rr3Var;
        }
    }
}
