package kotlin;

import java.io.Closeable;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class u42 extends SuspendLambda implements Function1 {
    public Object a;
    public Closeable b;
    public Object c;
    public int d;
    public final /* synthetic */ v42 e;
    public final /* synthetic */ String f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u42(v42 v42Var, String str, Continuation continuation) {
        super(1, continuation);
        this.e = v42Var;
        this.f = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new u42(this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new u42(this.e, this.f, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0199 A[Catch: all -> 0x01e0, TRY_ENTER, TryCatch #0 {all -> 0x01e0, blocks: (B:97:0x018a, B:99:0x0190, B:102:0x0199, B:104:0x019d, B:122:0x01da, B:123:0x01df), top: B:155:0x018a }] */
    /* JADX WARN: Code duplicated, block: B:104:0x019d A[Catch: all -> 0x01e0, TRY_LEAVE, TryCatch #0 {all -> 0x01e0, blocks: (B:97:0x018a, B:99:0x0190, B:102:0x0199, B:104:0x019d, B:122:0x01da, B:123:0x01df), top: B:155:0x018a }] */
    /* JADX WARN: Code duplicated, block: B:107:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:110:0x01be  */
    /* JADX WARN: Code duplicated, block: B:112:0x01c2 A[Catch: all -> 0x01d5, TRY_ENTER, TryCatch #5 {all -> 0x01d5, blocks: (B:108:0x01b8, B:112:0x01c2, B:114:0x01c6, B:117:0x01cf, B:118:0x01d4), top: B:163:0x01b8 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x01c6 A[Catch: all -> 0x01d5, TRY_LEAVE, TryCatch #5 {all -> 0x01d5, blocks: (B:108:0x01b8, B:112:0x01c2, B:114:0x01c6, B:117:0x01cf, B:118:0x01d4), top: B:163:0x01b8 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01cf A[Catch: all -> 0x01d5, TRY_ENTER, TryCatch #5 {all -> 0x01d5, blocks: (B:108:0x01b8, B:112:0x01c2, B:114:0x01c6, B:117:0x01cf, B:118:0x01d4), top: B:163:0x01b8 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x01da A[Catch: all -> 0x01e0, TRY_ENTER, TryCatch #0 {all -> 0x01e0, blocks: (B:97:0x018a, B:99:0x0190, B:102:0x0199, B:104:0x019d, B:122:0x01da, B:123:0x01df), top: B:155:0x018a }] */
    /* JADX WARN: Code duplicated, block: B:130:0x01ee A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x01f2 A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x01fd A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0201 A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0205 A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0206 A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:144:0x020c A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x0214 A[Catch: all -> 0x021d, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x021c A[Catch: all -> 0x021d, TRY_LEAVE, TryCatch #11 {all -> 0x021d, blocks: (B:128:0x01e7, B:130:0x01ee, B:132:0x01f2, B:134:0x01f6, B:135:0x01f9, B:137:0x01fd, B:139:0x0201, B:141:0x0205, B:142:0x0206, B:143:0x020b, B:144:0x020c, B:145:0x0213, B:146:0x0214, B:147:0x021b, B:148:0x021c), top: B:172:0x01e7 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d4 A[Catch: all -> 0x0122, TRY_LEAVE, TryCatch #3 {all -> 0x0122, blocks: (B:35:0x00ce, B:37:0x00d4, B:40:0x00dd, B:42:0x00e1, B:59:0x011c, B:60:0x0121), top: B:160:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00dd A[Catch: all -> 0x0122, TRY_ENTER, TryCatch #3 {all -> 0x0122, blocks: (B:35:0x00ce, B:37:0x00d4, B:40:0x00dd, B:42:0x00e1, B:59:0x011c, B:60:0x0121), top: B:160:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00e1 A[Catch: all -> 0x0122, TRY_LEAVE, TryCatch #3 {all -> 0x0122, blocks: (B:35:0x00ce, B:37:0x00d4, B:40:0x00dd, B:42:0x00e1, B:59:0x011c, B:60:0x0121), top: B:160:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:48:0x0102  */
    /* JADX WARN: Code duplicated, block: B:50:0x0106 A[Catch: all -> 0x0119, TRY_ENTER, TryCatch #7 {all -> 0x0119, blocks: (B:46:0x00fc, B:50:0x0106, B:52:0x010a, B:55:0x0113, B:56:0x0118), top: B:166:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:52:0x010a A[Catch: all -> 0x0119, TRY_LEAVE, TryCatch #7 {all -> 0x0119, blocks: (B:46:0x00fc, B:50:0x0106, B:52:0x010a, B:55:0x0113, B:56:0x0118), top: B:166:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0113 A[Catch: all -> 0x0119, TRY_ENTER, TryCatch #7 {all -> 0x0119, blocks: (B:46:0x00fc, B:50:0x0106, B:52:0x010a, B:55:0x0113, B:56:0x0118), top: B:166:0x00fc }] */
    /* JADX WARN: Code duplicated, block: B:59:0x011c A[Catch: all -> 0x0122, TRY_ENTER, TryCatch #3 {all -> 0x0122, blocks: (B:35:0x00ce, B:37:0x00d4, B:40:0x00dd, B:42:0x00e1, B:59:0x011c, B:60:0x0121), top: B:160:0x00ce }] */
    /* JADX WARN: Code duplicated, block: B:67:0x012f A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0133 A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x013e A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0142 A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0146 A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0147 A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x014d A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0155 A[Catch: all -> 0x015e, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x015d A[Catch: all -> 0x015e, TRY_LEAVE, TryCatch #12 {all -> 0x015e, blocks: (B:65:0x0128, B:67:0x012f, B:69:0x0133, B:71:0x0137, B:72:0x013a, B:74:0x013e, B:76:0x0142, B:78:0x0146, B:79:0x0147, B:80:0x014c, B:81:0x014d, B:82:0x0154, B:83:0x0155, B:84:0x015c, B:85:0x015d), top: B:173:0x0128 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0190 A[Catch: all -> 0x01e0, TRY_LEAVE, TryCatch #0 {all -> 0x01e0, blocks: (B:97:0x018a, B:99:0x0190, B:102:0x0199, B:104:0x019d, B:122:0x01da, B:123:0x01df), top: B:155:0x018a }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v27, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v41, types: [ads_mobile_sdk.tu2, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r2v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v7, types: [java.io.Closeable] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ?? r9;
        ?? r10;
        String str;
        Object objA;
        r31 r31Var;
        ?? r11;
        Object objA2;
        Closeable closeable;
        ?? r3;
        String str2;
        Closeable closeable2;
        ?? r12;
        Object objA3;
        r31 r31Var2;
        ?? r2;
        Object objA4;
        v01 v01Var;
        v01 v01Var2;
        v01 v01Var3;
        v01 v01Var4;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.d;
        ?? A = 4;
        ?? r4 = 3;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            v42 v42Var = this.e;
            g83 g83Var = v42Var.g;
            s11 s11Var = s11.CUI_NAME_LOAD_OMID_NATIVE_WEBVIEW;
            String str3 = this.f;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                A = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    iz3 iz3Var = v42Var.e;
                    v14 v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                    this.a = str3;
                    this.b = A;
                    this.c = A;
                    this.d = 1;
                    objA = iz3Var.a(v14Var, null, false, this);
                    if (objA != coroutine_suspended) {
                        ?? r13 = A;
                        r10 = r13;
                        str = str3;
                        r9 = r13;
                        v01Var4 = (v01) objA;
                        if (v01Var4 instanceof i01) {
                            xs3.a((i01) v01Var4, false);
                            CloseableKt.closeFinally(r9, null);
                            return null;
                        }
                        if (v01Var4 instanceof q01) {
                            throw new p005kotlin.NoWhenBranchMatchedException();
                        }
                        r31Var = (r31) ((q01) v01Var4).b;
                        this.a = r10;
                        this.b = r9;
                        this.c = r31Var;
                        this.d = 2;
                        objA2 = r31.a(r31Var, str, (String) null, false, (Continuation) this, 14);
                        if (objA2 != coroutine_suspended) {
                            r4 = r10;
                            r11 = r9;
                            v01Var3 = (v01) objA2;
                            if (v01Var3 instanceof q01) {
                                CloseableKt.closeFinally(r11, null);
                                return r31Var;
                            }
                            if (v01Var3 instanceof i01) {
                                throw new p005kotlin.NoWhenBranchMatchedException();
                            }
                            xs3.a((i01) v01Var3, false);
                            CloseableKt.closeFinally(r11, null);
                            return null;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    r4 = A;
                    r4.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        r4.a(th);
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
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    iz3 iz3Var2 = v42Var.e;
                    v14 v14Var2 = new v14(u14.DEFAULT, 0, 0, 14);
                    this.a = str3;
                    this.b = rr3VarA;
                    this.c = rr3VarA;
                    this.d = 3;
                    objA3 = iz3Var2.a(v14Var2, null, false, this);
                    if (objA3 != coroutine_suspended) {
                        closeable2 = rr3VarA;
                        r12 = closeable2;
                        str2 = str3;
                        v01Var2 = (v01) objA3;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                            CloseableKt.closeFinally(closeable2, null);
                            return null;
                        }
                        if (v01Var2 instanceof q01) {
                            throw new p005kotlin.NoWhenBranchMatchedException();
                        }
                        r31Var2 = (r31) ((q01) v01Var2).b;
                        this.a = r12;
                        this.b = closeable2;
                        this.c = r31Var2;
                        this.d = 4;
                        objA4 = r31.a(r31Var2, str2, (String) null, false, (Continuation) this, 14);
                        if (objA4 != coroutine_suspended) {
                            r2 = r12;
                            v01Var = (v01) objA4;
                            if (v01Var instanceof q01) {
                                CloseableKt.closeFinally(closeable2, null);
                                return r31Var2;
                            }
                            if (!(v01Var instanceof i01)) {
                                throw new p005kotlin.NoWhenBranchMatchedException();
                            }
                            xs3.a((i01) v01Var, false);
                            CloseableKt.closeFinally(closeable2, null);
                            return null;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = rr3VarA;
                    r3 = closeable;
                }
            }
            return coroutine_suspended;
        }
        try {
            if (i == 1) {
                Closeable closeable3 = (Closeable) this.c;
                rr3 rr3Var = (rr3) this.b;
                String str4 = (String) this.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                r9 = closeable3;
                r10 = rr3Var;
                str = str4;
                objA = obj;
                try {
                    v01Var4 = (v01) objA;
                    if (v01Var4 instanceof i01) {
                        xs3.a((i01) v01Var4, false);
                        CloseableKt.closeFinally(r9, null);
                        return null;
                    }
                    if (v01Var4 instanceof q01) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    r31Var = (r31) ((q01) v01Var4).b;
                    this.a = r10;
                    this.b = r9;
                    this.c = r31Var;
                    this.d = 2;
                    objA2 = r31.a(r31Var, str, (String) null, false, (Continuation) this, 14);
                    if (objA2 != coroutine_suspended) {
                        r4 = r10;
                        r11 = r9;
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    A = r9;
                    r4 = r10;
                    try {
                        r4.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            r4.a(th);
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
                    } catch (Throwable th4) {
                        try {
                            throw th4;
                        } catch (Throwable th5) {
                            CloseableKt.closeFinally(A, th4);
                            throw th5;
                        }
                    }
                }
            }
            if (i == 2) {
                r31Var = (r31) this.c;
                Closeable closeable4 = this.b;
                rr3 rr3Var2 = (rr3) this.a;
                p005kotlin.ResultKt.throwOnFailure(obj);
                r11 = closeable4;
                objA2 = obj;
                r4 = rr3Var2;
            } else {
                if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    r31Var2 = (r31) this.c;
                    Closeable closeable5 = this.b;
                    r2 = (rr3) this.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        closeable2 = closeable5;
                        objA4 = obj;
                        r2 = r2;
                        try {
                            v01Var = (v01) objA4;
                            if (v01Var instanceof q01) {
                                CloseableKt.closeFinally(closeable2, null);
                                return r31Var2;
                            }
                            if (!(v01Var instanceof i01)) {
                                throw new p005kotlin.NoWhenBranchMatchedException();
                            }
                            xs3.a((i01) v01Var, false);
                            CloseableKt.closeFinally(closeable2, null);
                            return null;
                        } catch (Throwable th6) {
                            th = th6;
                            closeable5 = closeable2;
                            r3 = r2;
                            closeable = closeable5;
                            r3.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r3.a(th);
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
                    } catch (Throwable th7) {
                        th = th7;
                        r3 = r2;
                        closeable = closeable5;
                        r3.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r3.a(th);
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
                closeable = (Closeable) this.c;
                r3 = (rr3) this.b;
                String str5 = (String) this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    str2 = str5;
                    closeable2 = closeable;
                    r12 = r3;
                    objA3 = obj;
                    try {
                        v01Var2 = (v01) objA3;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                            CloseableKt.closeFinally(closeable2, null);
                            return null;
                        }
                        if (v01Var2 instanceof q01) {
                            throw new p005kotlin.NoWhenBranchMatchedException();
                        }
                        r31Var2 = (r31) ((q01) v01Var2).b;
                        this.a = r12;
                        this.b = closeable2;
                        this.c = r31Var2;
                        this.d = 4;
                        objA4 = r31.a(r31Var2, str2, (String) null, false, (Continuation) this, 14);
                        if (objA4 != coroutine_suspended) {
                            r2 = r12;
                            v01Var = (v01) objA4;
                            if (v01Var instanceof q01) {
                                CloseableKt.closeFinally(closeable2, null);
                                return r31Var2;
                            }
                            if (!(v01Var instanceof i01)) {
                                throw new p005kotlin.NoWhenBranchMatchedException();
                            }
                            xs3.a((i01) v01Var, false);
                            CloseableKt.closeFinally(closeable2, null);
                            return null;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th8) {
                        th = th8;
                        closeable = closeable2;
                        r3 = r12;
                    }
                } catch (Throwable th9) {
                    th = th9;
                }
            }
            try {
                v01Var3 = (v01) objA2;
                if (v01Var3 instanceof q01) {
                    CloseableKt.closeFinally(r11, null);
                    return r31Var;
                }
                if (v01Var3 instanceof i01) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                xs3.a((i01) v01Var3, false);
                CloseableKt.closeFinally(r11, null);
                return null;
            } catch (Throwable th10) {
                th = th10;
                A = r11;
                r4.b(th);
                if (!(th instanceof v24)) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    r4.a(th);
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
        } catch (Throwable th11) {
            th = th11;
            r4.b(th);
            if (!(th instanceof v24)) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException)) {
                r4.a(th);
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
        try {
            r3.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                r3.a(th);
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
        } catch (Throwable th12) {
            try {
                throw th12;
            } catch (Throwable th13) {
                CloseableKt.closeFinally(closeable, th12);
                throw th13;
            }
        }
    }
}
