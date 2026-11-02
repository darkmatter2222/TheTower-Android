package kotlin;

import android.net.Uri;
import com.google.common.base.Splitter;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
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
public final class d51 extends SuspendLambda implements Function2 {
    public final /* synthetic */ f51 a;
    public final /* synthetic */ String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d51(f51 f51Var, String str, Continuation continuation) {
        super(2, continuation);
        this.a = f51Var;
        this.b = str;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new d51(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new d51(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        g83 g83Var = this.a.c;
        s11 s11Var = s11.CUI_NAME_GMSG;
        String str = this.b;
        f51 f51Var = this.a;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3VarA = js3.a();
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
            try {
                hs3.a().e().l = u11.GMSG_H5;
                Splitter splitter = f01.a;
                f01.b("Received H5 gmsg: " + str, null);
                try {
                    Uri uri = Uri.parse(str);
                    o21 o21Var = f51Var.i;
                    Intrinsics.checkNotNull(uri);
                    Map mapD = o21Var.d(uri);
                    String str2 = (String) mapD.get("action");
                    if (str2 != null && str2.length() != 0) {
                        uj2 uj2VarE = hs3.a().e();
                        j51 j51VarV = k51.v();
                        Intrinsics.checkNotNullExpressionValue(j51VarV, "newBuilder(...)");
                        m51 m51VarA = l51.a(j51VarV);
                        m51VarA.a(str2);
                        uj2VarE.v = m51VarA.a();
                        if (Intrinsics.areEqual(str2, "initialize")) {
                            f51.c(f51Var);
                        } else if (Intrinsics.areEqual(str2, "dispose_all")) {
                            f51Var.a();
                        } else {
                            String str3 = (String) mapD.get("obj_id");
                            Long lBoxLong = str3 != null ? Boxing.boxLong(Long.parseLong(str3)) : null;
                            if (lBoxLong == null) {
                                xs3.a("Missing object id in h5 gmsg for action: " + str2, null, 6);
                                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(tu2VarA, null);
                                return unit;
                            }
                            switch (str2.hashCode()) {
                                case -1790951212:
                                    if (!str2.equals("show_interstitial_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit2;
                                    }
                                    f51Var.a(lBoxLong.longValue(), str2);
                                    break;
                                case -1266374734:
                                    if (!str2.equals("show_rewarded_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit3;
                                    }
                                    f51Var.a(lBoxLong.longValue(), str2);
                                    break;
                                case -257098725:
                                    if (!str2.equals("load_rewarded_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit4;
                                    }
                                    f51Var.a(mapD, lBoxLong.longValue(), str2);
                                    break;
                                case 393881811:
                                    if (!str2.equals("create_interstitial_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit5;
                                    }
                                    f51Var.a(mapD, lBoxLong.longValue(), new b51(f51Var));
                                    break;
                                    break;
                                case 585513149:
                                    if (!str2.equals("load_interstitial_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit6;
                                    }
                                    f51Var.a(mapD, lBoxLong.longValue(), str2);
                                    break;
                                case 1671767583:
                                    if (!str2.equals("dispose")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit7;
                                    }
                                    f51Var.a(lBoxLong.longValue());
                                    break;
                                    break;
                                case 2109237041:
                                    if (!str2.equals("create_rewarded_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit8;
                                    }
                                    f51Var.a(mapD, lBoxLong.longValue(), new c51(f51Var));
                                    break;
                                    break;
                                default:
                                    xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                    p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(tu2VarA, null);
                                    return unit9;
                            }
                        }
                        Object obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(tu2VarA, null);
                    }
                    xs3.a("H5 gmsg did not contain an action: " + str, null, 6);
                    p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(tu2VarA, null);
                    return unit10;
                } catch (Exception e) {
                    xs3.a(xs3.a, e);
                }
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
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
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        } else {
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                hs3.a().e().l = u11.GMSG_H5;
                Splitter splitter2 = f01.a;
                f01.b("Received H5 gmsg: " + str, null);
                try {
                    Uri uri2 = Uri.parse(str);
                    o21 o21Var2 = f51Var.i;
                    Intrinsics.checkNotNull(uri2);
                    Map mapD2 = o21Var2.d(uri2);
                    String str4 = (String) mapD2.get("action");
                    if (str4 != null && str4.length() != 0) {
                        uj2 uj2VarE2 = hs3.a().e();
                        j51 j51VarV2 = k51.v();
                        Intrinsics.checkNotNullExpressionValue(j51VarV2, "newBuilder(...)");
                        m51 m51VarA2 = l51.a(j51VarV2);
                        m51VarA2.a(str4);
                        uj2VarE2.v = m51VarA2.a();
                        if (Intrinsics.areEqual(str4, "initialize")) {
                            f51.c(f51Var);
                        } else if (Intrinsics.areEqual(str4, "dispose_all")) {
                            f51Var.a();
                        } else {
                            String str5 = (String) mapD2.get("obj_id");
                            Long lBoxLong2 = str5 != null ? Boxing.boxLong(Long.parseLong(str5)) : null;
                            if (lBoxLong2 == null) {
                                xs3.a("Missing object id in h5 gmsg for action: " + str4, null, 6);
                                p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(rr3VarA, null);
                                return unit11;
                            }
                            switch (str4.hashCode()) {
                                case -1790951212:
                                    if (!str4.equals("show_interstitial_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit12;
                                    }
                                    f51Var.a(lBoxLong2.longValue(), str4);
                                    break;
                                case -1266374734:
                                    if (!str4.equals("show_rewarded_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit13;
                                    }
                                    f51Var.a(lBoxLong2.longValue(), str4);
                                    break;
                                case -257098725:
                                    if (!str4.equals("load_rewarded_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit14;
                                    }
                                    f51Var.a(mapD2, lBoxLong2.longValue(), str4);
                                    break;
                                case 393881811:
                                    if (!str4.equals("create_interstitial_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit15;
                                    }
                                    f51Var.a(mapD2, lBoxLong2.longValue(), new b51(f51Var));
                                    break;
                                    break;
                                case 585513149:
                                    if (!str4.equals("load_interstitial_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit16;
                                    }
                                    f51Var.a(mapD2, lBoxLong2.longValue(), str4);
                                    break;
                                case 1671767583:
                                    if (!str4.equals("dispose")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit17 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit17;
                                    }
                                    f51Var.a(lBoxLong2.longValue());
                                    break;
                                    break;
                                case 2109237041:
                                    if (!str4.equals("create_rewarded_ad")) {
                                        xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                        p005kotlin.Unit unit18 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit18;
                                    }
                                    f51Var.a(mapD2, lBoxLong2.longValue(), new c51(f51Var));
                                    break;
                                    break;
                                default:
                                    xs3.a("Unknown h5 gmsg: " + str, null, 6);
                                    p005kotlin.Unit unit19 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(rr3VarA, null);
                                    return unit19;
                            }
                        }
                        Object obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3VarA, null);
                    }
                    xs3.a("H5 gmsg did not contain an action: " + str, null, 6);
                    p005kotlin.Unit unit20 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                    return unit20;
                } catch (Exception e2) {
                    xs3.a(xs3.a, e2);
                }
            } catch (Throwable th4) {
                try {
                    rr3VarA.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        rr3VarA.a(th4);
                    }
                    if (th4 instanceof TimeoutCancellationException) {
                        throw new i21(th4);
                    }
                    if (th4 instanceof CancellationException) {
                        throw new wz0(th4);
                    }
                    if (th4 instanceof w01) {
                        throw th4;
                    }
                    throw new b01(th4);
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3VarA, th5);
                        throw th6;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
