package kotlin;

import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.unity.androidbridge.AndroidBridgeConstants;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class su0 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ bv0 d;
    public final /* synthetic */ g32 e;
    public final /* synthetic */ JsonObject f;
    public final /* synthetic */ String g;
    public final /* synthetic */ boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public su0(bv0 bv0Var, g32 g32Var, JsonObject jsonObject, String str, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = bv0Var;
        this.e = g32Var;
        this.f = jsonObject;
        this.g = str;
        this.h = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new su0(this.d, this.e, this.f, this.g, this.h, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((su0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01b1 A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x01b5 A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x01b6 A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x01bc A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01c4 A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x01cc A[Catch: all -> 0x01cd, TRY_LEAVE, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00fe A[Catch: all -> 0x002d, TryCatch #4 {all -> 0x002d, blocks: (B:14:0x0028, B:37:0x00f8, B:39:0x00fe, B:40:0x0103, B:42:0x0109), top: B:123:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0109 A[Catch: all -> 0x002d, TRY_LEAVE, TryCatch #4 {all -> 0x002d, blocks: (B:14:0x0028, B:37:0x00f8, B:39:0x00fe, B:40:0x0103, B:42:0x0109), top: B:123:0x0028 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x011e A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x012d A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0131 A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0135 A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0136 A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x013c A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0144 A[Catch: all -> 0x014d, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x014c A[Catch: all -> 0x014d, TRY_LEAVE, TryCatch #3 {all -> 0x014d, blocks: (B:47:0x0117, B:49:0x011e, B:51:0x0122, B:53:0x0126, B:54:0x0129, B:56:0x012d, B:58:0x0131, B:60:0x0135, B:61:0x0136, B:62:0x013b, B:63:0x013c, B:64:0x0143, B:65:0x0144, B:66:0x014b, B:67:0x014c), top: B:122:0x0117 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x017d A[Catch: all -> 0x0019, TryCatch #2 {all -> 0x0019, blocks: (B:7:0x0014, B:78:0x0177, B:80:0x017d, B:81:0x0182, B:83:0x0188), top: B:120:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0188 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #2 {all -> 0x0019, blocks: (B:7:0x0014, B:78:0x0177, B:80:0x017d, B:81:0x0182, B:83:0x0188), top: B:120:0x0014 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x019e A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01ad A[Catch: all -> 0x01cd, TryCatch #5 {all -> 0x01cd, blocks: (B:90:0x0197, B:92:0x019e, B:94:0x01a2, B:96:0x01a6, B:97:0x01a9, B:99:0x01ad, B:101:0x01b1, B:103:0x01b5, B:104:0x01b6, B:105:0x01bb, B:106:0x01bc, B:107:0x01c3, B:108:0x01c4, B:109:0x01cb, B:110:0x01cc), top: B:125:0x0197 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        v01 v01Var;
        Object obj2;
        v01 v01Var2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            JsonObject jsonObject = new JsonObject();
            bv0 bv0Var = this.d;
            g32 g32Var = this.e;
            JsonObject jsonObject2 = this.f;
            String str = this.g;
            boolean z = this.h;
            jsonObject.add("ad", bv0Var.g);
            if (g32Var != null) {
                jsonObject.add("asset_view_signal", g32Var.a);
                jsonObject.add("ad_view_signal", g32Var.b);
                jsonObject.add("scroll_view_signal", g32Var.c);
                jsonObject.add("lock_screen_signal", g32Var.d);
                jsonObject.add("screen", g32Var.e);
            }
            if (jsonObject2 != null) {
                jsonObject.add("provided_signals", jsonObject2);
            }
            if (str != null) {
                jsonObject.addProperty("view_signals", str);
            }
            jsonObject.addProperty("policy_validator_enabled", Boxing.boxBoolean(z));
            ex0 ex0Var = bv0Var.y;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_placement_id:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:enable_placement_id:enabled", Boolean.TRUE, yr.b)).booleanValue() && bv0Var.C.a.get() > 0) {
                jsonObject.addProperty(AndroidBridgeConstants.PLACEMENT_ID, Boxing.boxLong(bv0Var.C.a.get()));
            }
            bv0 bv0Var2 = this.d;
            g83 g83Var = bv0Var2.n;
            s11 s11Var = s11.CUI_NAME_NATIVE_AD_HANDLE_IMPRESSION;
            ks3 ks3Var = bv0Var2.o;
            List listEmptyList = CollectionsKt.emptyList();
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    q52 q52Var = bv0Var2.q;
                    this.a = rr3VarA2;
                    this.b = rr3VarA2;
                    this.c = 1;
                    q52Var.getClass();
                    String string = jsonObject.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    obj = q52Var.a("google.afma.nativeAds.handleImpression", string, this);
                    if (obj != coroutine_suspended) {
                        rr3Var3 = rr3VarA2;
                        rr3Var4 = rr3Var3;
                        v01Var = (v01) obj;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var3, null);
                    }
                } catch (Throwable th) {
                    th = th;
                    rr3Var3 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA2.a(th);
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
                    q52 q52Var2 = bv0Var2.q;
                    this.a = rr3VarA;
                    this.b = rr3VarA;
                    this.c = 2;
                    q52Var2.getClass();
                    String string2 = jsonObject.toString();
                    Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                    obj = q52Var2.a("google.afma.nativeAds.handleImpression", string2, this);
                    if (obj != coroutine_suspended) {
                        rr3Var = rr3VarA;
                        rr3Var2 = rr3Var;
                        v01Var2 = (v01) obj;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                        }
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3Var, null);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
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
            return coroutine_suspended;
        }
        if (i == 1) {
            rr3Var3 = this.b;
            rr3Var4 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                v01Var = (v01) obj;
                if (v01Var instanceof i01) {
                    xs3.a((i01) v01Var, false);
                }
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var3, null);
            } catch (Throwable th3) {
                th = th3;
                rr3VarA2 = rr3Var4;
                try {
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                        CloseableKt.closeFinally(rr3Var3, th4);
                        throw th5;
                    }
                }
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = this.b;
            rr3Var2 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                v01Var2 = (v01) obj;
                if (v01Var2 instanceof i01) {
                    xs3.a((i01) v01Var2, false);
                }
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
            } catch (Throwable th6) {
                th = th6;
                rr3VarA = rr3Var2;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
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
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var, th7);
                        throw th8;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
