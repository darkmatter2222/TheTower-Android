package kotlin;

import android.os.Build;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.nativead.OnCustomClickListener;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
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
public final class qu0 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public int c;
    public final /* synthetic */ bv0 d;
    public final /* synthetic */ g32 e;
    public final /* synthetic */ JsonObject f;
    public final /* synthetic */ JsonObject g;
    public final /* synthetic */ String h;
    public final /* synthetic */ View i;
    public final /* synthetic */ boolean j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qu0(bv0 bv0Var, g32 g32Var, JsonObject jsonObject, JsonObject jsonObject2, String str, View view, boolean z, Continuation continuation) {
        super(2, continuation);
        this.d = bv0Var;
        this.e = g32Var;
        this.f = jsonObject;
        this.g = jsonObject2;
        this.h = str;
        this.i = view;
        this.j = z;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qu0(this.d, this.e, this.f, this.g, this.h, this.i, this.j, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((qu0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0263 A[Catch: all -> 0x0278, TryCatch #9 {all -> 0x0278, blocks: (B:99:0x025d, B:101:0x0263, B:102:0x0268, B:104:0x026e), top: B:231:0x025d }] */
    /* JADX WARN: Code duplicated, block: B:104:0x026e A[Catch: all -> 0x0278, TRY_LEAVE, TryCatch #9 {all -> 0x0278, blocks: (B:99:0x025d, B:101:0x0263, B:102:0x0268, B:104:0x026e), top: B:231:0x025d }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0285 A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0289 A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0294 A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:122:0x0298 A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:124:0x029c A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:125:0x029d A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:127:0x02a3 A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02ab A[Catch: all -> 0x02b4, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:131:0x02b3 A[Catch: all -> 0x02b4, TRY_LEAVE, TryCatch #6 {all -> 0x02b4, blocks: (B:111:0x027e, B:113:0x0285, B:115:0x0289, B:117:0x028d, B:118:0x0290, B:120:0x0294, B:122:0x0298, B:124:0x029c, B:125:0x029d, B:126:0x02a2, B:127:0x02a3, B:128:0x02aa, B:129:0x02ab, B:130:0x02b2, B:131:0x02b3), top: B:226:0x027e }] */
    /* JADX WARN: Code duplicated, block: B:145:0x02e9 A[Catch: all -> 0x02ff, TryCatch #16 {all -> 0x02ff, blocks: (B:143:0x02e3, B:145:0x02e9, B:146:0x02ee, B:148:0x02f4), top: B:243:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02f4 A[Catch: all -> 0x02ff, TRY_LEAVE, TryCatch #16 {all -> 0x02ff, blocks: (B:143:0x02e3, B:145:0x02e9, B:146:0x02ee, B:148:0x02f4), top: B:243:0x02e3 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x030c A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0310 A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x031b A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:168:0x031f A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0323 A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x0324 A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x032a A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0332 A[Catch: all -> 0x033b, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x033a A[Catch: all -> 0x033b, TRY_LEAVE, TryCatch #11 {all -> 0x033b, blocks: (B:157:0x0305, B:159:0x030c, B:161:0x0310, B:163:0x0314, B:164:0x0317, B:166:0x031b, B:168:0x031f, B:170:0x0323, B:171:0x0324, B:172:0x0329, B:173:0x032a, B:174:0x0331, B:175:0x0332, B:176:0x0339, B:177:0x033a), top: B:234:0x0305 }] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        OnCustomClickListener onCustomClickListener;
        String str;
        rr3 rr3VarA;
        rr3 rr3Var;
        Object objA;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        Object objA2;
        rr3 rr3Var4;
        v01 v01Var;
        Object obj2;
        v01 v01Var2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                rr3Var3 = this.b;
                rr3Var4 = this.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    rr3VarA2 = rr3Var3;
                    objA2 = obj;
                    try {
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            xs3.a((i01) v01Var, false);
                        }
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return p005kotlin.Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        rr3Var3 = rr3VarA2;
                        rr3VarA2 = rr3Var4;
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
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(rr3Var3, th2);
                                throw th3;
                            }
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    rr3VarA2 = rr3Var4;
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
            rr3Var = this.b;
            rr3Var2 = this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                rr3VarA = rr3Var;
                objA = obj;
                try {
                    v01Var2 = (v01) objA;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    obj3 = p005kotlin.Unit.INSTANCE;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th5) {
                    th = th5;
                    rr3Var = rr3VarA;
                    rr3VarA = rr3Var2;
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
                    } catch (Throwable th6) {
                        try {
                            throw th6;
                        } catch (Throwable th7) {
                            CloseableKt.closeFinally(rr3Var, th6);
                            throw th7;
                        }
                    }
                }
            } catch (Throwable th8) {
                th = th8;
                rr3VarA = rr3Var2;
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
        p005kotlin.ResultKt.throwOnFailure(obj);
        ex0 ex0Var = this.d.y;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:native_click_protection:enabled", C3510b4.i.W);
        if (((Boolean) ex0Var.a("gads:native_click_protection:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
            this.d.z.g.set(true);
        }
        JsonObject jsonObject = new JsonObject();
        bv0 bv0Var = this.d;
        g32 g32Var = this.e;
        JsonElement jsonElement = this.f;
        JsonElement jsonElement2 = this.g;
        jsonObject.add("ad", bv0Var.g);
        if (g32Var != null) {
            jsonObject.add("asset_view_signal", g32Var.a);
            jsonObject.add("ad_view_signal", g32Var.b);
            jsonObject.add("scroll_view_signal", g32Var.c);
            jsonObject.add("lock_screen_signal", g32Var.d);
        }
        if (jsonElement != null) {
            jsonObject.add("click_signal", jsonElement);
        }
        fm0 fm0Var = bv0Var.s;
        synchronized (fm0Var) {
            onCustomClickListener = fm0Var.n;
        }
        jsonObject.addProperty("has_custom_click_handler", Boxing.boxBoolean(onCustomClickListener != null));
        if (jsonElement2 != null) {
            jsonObject.add("provided_signals", jsonElement2);
        }
        JsonObject jsonObject2 = new JsonObject();
        String str2 = this.h;
        bv0 bv0Var2 = this.d;
        View view = this.i;
        boolean z = this.j;
        jsonObject2.addProperty("asset_id", str2);
        jsonObject2.addProperty("template", Boxing.boxInt(bv0Var2.k.a));
        jsonObject2.addProperty("view_aware_api_used", Boxing.boxBoolean(false));
        jsonObject2.addProperty("custom_mute_requested", Boxing.boxBoolean(bv0Var2.m.getCustomMuteThisAdRequested()));
        jsonObject2.addProperty("custom_mute_enabled", Boxing.boxBoolean(bv0Var2.k()));
        jsonObject2.addProperty("has_custom_click_handler", Boxing.boxBoolean(bv0Var2.s.g() != null));
        ds1 ds1Var = ds1.a;
        String strA = ds1.a(ds1.a(bv0Var2.g, "tracking_urls_and_actions", new JsonObject()), "click_string", "");
        g83 g83Var = bv0Var2.n;
        s11 s11Var = s11.CUI_NAME_CLICK_SIGNALS;
        ks3 ks3Var = bv0Var2.o;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                Object objA3 = bv0Var2.j.a(view, strA);
                if (objA3 instanceof i01) {
                    xs3.a((i01) objA3, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                str = objA3;
            } catch (Throwable th9) {
                try {
                    tu2VarA.b(th9);
                    if (th9 instanceof v24) {
                        throw th9;
                    }
                    if (!(th9 instanceof TimeoutCancellationException) && !(th9 instanceof CancellationException)) {
                        tu2VarA.a(th9);
                    }
                    if (th9 instanceof TimeoutCancellationException) {
                        throw new i21(th9);
                    }
                    if (th9 instanceof CancellationException) {
                        throw new wz0(th9);
                    }
                    if (th9 instanceof w01) {
                        throw th9;
                    }
                    throw new b01(th9);
                } catch (Throwable th10) {
                    try {
                        throw th10;
                    } catch (Throwable th11) {
                        CloseableKt.closeFinally(tu2VarA, th10);
                        throw th11;
                    }
                }
            }
        } else {
            rr3 rr3VarA3 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                Object objA4 = bv0Var2.j.a(view, strA);
                if (objA4 instanceof i01) {
                    xs3.a((i01) objA4, false);
                }
                CloseableKt.closeFinally(rr3VarA3, null);
                str = objA4;
            } catch (Throwable th12) {
                try {
                    rr3VarA3.b(th12);
                    if (th12 instanceof v24) {
                        throw th12;
                    }
                    if (!(th12 instanceof TimeoutCancellationException) && !(th12 instanceof CancellationException)) {
                        rr3VarA3.a(th12);
                    }
                    if (th12 instanceof TimeoutCancellationException) {
                        throw new i21(th12);
                    }
                    if (th12 instanceof CancellationException) {
                        throw new wz0(th12);
                    }
                    if (th12 instanceof w01) {
                        throw th12;
                    }
                    throw new b01(th12);
                } catch (Throwable th13) {
                    try {
                        throw th13;
                    } catch (Throwable th14) {
                        CloseableKt.closeFinally(rr3VarA3, th13);
                        throw th14;
                    }
                }
            }
        }
        if (str != 0) {
            jsonObject2.addProperty("click_signals", str);
        }
        jsonObject2.addProperty("open_chrome_custom_tab", Boxing.boxBoolean(true));
        if (Build.VERSION.SDK_INT >= 30) {
            jsonObject2.addProperty("try_fallback_for_deep_link", Boxing.boxBoolean(true));
            jsonObject2.addProperty("in_app_link_handling_for_android_11_enabled", Boxing.boxBoolean(true));
        }
        if (bv0Var2.H.get() && bv0Var2.j()) {
            jsonObject2.addProperty("custom_click_gesture_eligible", Boxing.boxBoolean(true));
        }
        if (z) {
            jsonObject2.addProperty("is_custom_click_gesture", Boxing.boxBoolean(true));
        }
        jsonObject.add("click", jsonObject2);
        JsonObject jsonObject3 = new JsonObject();
        bv0 bv0Var3 = this.d;
        bv0Var3.p.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        jsonObject3.addProperty("time_from_last_touch_down", Boxing.boxLong(jCurrentTimeMillis - bv0Var3.F));
        jsonObject3.addProperty("time_from_last_touch", Boxing.boxLong(jCurrentTimeMillis - bv0Var3.G));
        jsonObject.add("touch_signal", jsonObject3);
        bv0 bv0Var4 = this.d;
        g83 g83Var2 = bv0Var4.n;
        s11 s11Var2 = s11.CUI_NAME_NATIVE_AD_HANDLE_CLICK;
        ks3 ks3Var2 = bv0Var4.o;
        List listEmptyList2 = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            rr3VarA2 = g83.a(g83Var2, s11Var2, listEmptyList2, ks3Var2);
            try {
                q52 q52Var = bv0Var4.q;
                this.a = rr3VarA2;
                this.b = rr3VarA2;
                this.c = 1;
                q52Var.getClass();
                String string = jsonObject.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                objA2 = q52Var.a("google.afma.nativeAds.handleClick", string, this);
                if (objA2 != coroutine_suspended) {
                    rr3Var4 = rr3VarA2;
                    v01Var = (v01) objA2;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                    }
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                    return p005kotlin.Unit.INSTANCE;
                }
            } catch (Throwable th15) {
                th = th15;
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
            rr3VarA = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
            try {
                q52 q52Var2 = bv0Var4.q;
                this.a = rr3VarA;
                this.b = rr3VarA;
                this.c = 2;
                q52Var2.getClass();
                String string2 = jsonObject.toString();
                Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                objA = q52Var2.a("google.afma.nativeAds.handleClick", string2, this);
                if (objA != coroutine_suspended) {
                    rr3Var2 = rr3VarA;
                    v01Var2 = (v01) objA;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    obj3 = p005kotlin.Unit.INSTANCE;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return p005kotlin.Unit.INSTANCE;
                }
            } catch (Throwable th16) {
                th = th16;
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
}
