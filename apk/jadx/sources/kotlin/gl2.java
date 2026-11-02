package kotlin;

import android.content.Context;
import androidx.datastore.core.DataStore;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class gl2 extends nc1 {
    public final r1 c;
    public final e9 d;
    public final Context e;
    public final cl2 f;
    public im2 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gl2(r1 dataStore, e9 fileStore, Context context, xw0 flagValueProvider, cl2 flags) {
        super((s11) null, false);
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        Intrinsics.checkNotNullParameter(fileStore, "fileStore");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flagValueProvider, "flagValueProvider");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = dataStore;
        this.d = fileStore;
        this.e = context;
        this.f = flags;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(gl2 gl2Var, Continuation continuation) {
        el2 el2Var;
        LinkedHashSet linkedHashSet;
        Object objFirst;
        if (continuation instanceof el2) {
            el2Var = (el2) continuation;
            int i = el2Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                el2Var.e = i - Integer.MIN_VALUE;
            } else {
                el2Var = new el2(gl2Var, continuation);
            }
        } else {
            el2Var = new el2(gl2Var, continuation);
        }
        Object obj = el2Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = el2Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            linkedHashSet = new LinkedHashSet();
            Flow data = ((DataStore) gl2Var.c.a.get()).getData();
            el2Var.a = gl2Var;
            el2Var.b = linkedHashSet;
            el2Var.e = 1;
            objFirst = FlowKt.first(data, el2Var);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            LinkedHashSet linkedHashSet2 = el2Var.b;
            gl2 gl2Var2 = el2Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            linkedHashSet = linkedHashSet2;
            gl2Var = gl2Var2;
            objFirst = obj;
        }
        Iterator it = ((o1) objFirst).A().values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((rx0) it.next()).v().values().iterator();
            while (it2.hasNext()) {
                Iterator it3 = ((j9) it2.next()).y().iterator();
                while (it3.hasNext()) {
                    String strX = ((d9) it3.next()).x();
                    Intrinsics.checkNotNullExpressionValue(strX, "getFilename(...)");
                    linkedHashSet.add(strX);
                }
            }
        }
        for (File file : gl2Var.d.a()) {
            String name = file.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (StringsKt.endsWith$default(name, ".tmp", false, 2, (Object) null)) {
                file.delete();
            } else if (!linkedHashSet.contains(file.getName())) {
                file.delete();
            }
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0183 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:112:0x0187 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0192 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:119:0x0196 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:121:0x019a A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:122:0x019b A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:124:0x01a1 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:126:0x01a9 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:128:0x01b1 A[Catch: all -> 0x01b2, TRY_LEAVE, TryCatch #6 {all -> 0x01b2, blocks: (B:108:0x017c, B:110:0x0183, B:112:0x0187, B:114:0x018b, B:115:0x018e, B:117:0x0192, B:119:0x0196, B:121:0x019a, B:122:0x019b, B:123:0x01a0, B:124:0x01a1, B:125:0x01a8, B:126:0x01a9, B:127:0x01b0, B:128:0x01b1), top: B:141:0x017c }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0127  */
    /* JADX WARN: Code duplicated, block: B:76:0x0131  */
    /* JADX WARN: Code duplicated, block: B:77:0x0132 A[Catch: all -> 0x0038, Exception -> 0x003b, TRY_LEAVE, TryCatch #12 {Exception -> 0x003b, all -> 0x0038, blocks: (B:14:0x0033, B:74:0x012b, B:77:0x0132), top: B:153:0x0033 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:98:0x0165 A[Catch: all -> 0x0147, TRY_LEAVE, TryCatch #4 {all -> 0x0147, blocks: (B:96:0x0161, B:98:0x0165, B:67:0x0115, B:69:0x011b, B:51:0x00dd, B:53:0x00e9, B:54:0x00f2, B:56:0x00fa, B:58:0x00fe, B:60:0x0104), top: B:139:0x00dd }] */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d9, code lost:
    
        if (kotlin.im2.b(r2, r0) == r1) goto L72;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r11v0, types: [ads_mobile_sdk.gl2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v28, types: [ads_mobile_sdk.gl2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v34, types: [ads_mobile_sdk.gl2, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v48, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v53 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v14, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v24, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v37, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v53 */
    /* JADX WARN: Type inference failed for: r12v54 */
    /* JADX WARN: Type inference failed for: r12v55 */
    /* JADX WARN: Type inference failed for: r12v56 */
    /* JADX WARN: Type inference failed for: r12v57 */
    /* JADX WARN: Type inference failed for: r12v58 */
    /* JADX WARN: Type inference failed for: r12v59 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v60 */
    /* JADX WARN: Type inference failed for: r12v61 */
    /* JADX WARN: Type inference failed for: r12v62 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object b(kotlin.gl2 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.gl2.b(ads_mobile_sdk.gl2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return b(this, continuation);
    }
}
