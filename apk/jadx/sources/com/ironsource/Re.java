package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Re implements Se {
    private final Ee a(Context context, Ke ke, C3957ze c3957ze) throws Throwable {
        try {
            String strC = ke.c(context);
            if (TextUtils.isEmpty(strC)) {
                strC = ke.a(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            String str = strC;
            C3643ia c3643iaC = ke.c();
            String strA = We.a(context, c3957ze.d(), c3957ze.f(), str, null, true, c3643iaC != null ? c3643iaC.f() : null, false);
            String string = C3713m9.a().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            InterfaceC3657j7 interfaceC3657j7A = C3622h7.a(strA, string);
            if (interfaceC3657j7A instanceof InterfaceC3657j7.a) {
                IronLog.INTERNAL.warning("HTTP init request failed: " + ((InterfaceC3657j7.a) interfaceC3657j7A).a());
                return new Ee.a(a((InterfaceC3657j7.a) interfaceC3657j7A));
            }
            if (!(interfaceC3657j7A instanceof InterfaceC3657j7.b)) {
                throw new NoWhenBranchMatchedException();
            }
            String strD = ((InterfaceC3657j7.b) interfaceC3657j7A).d();
            if (ke.d()) {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("encrypt");
                JSONObject jSONObject = new JSONObject(strD);
                String strOptString = jSONObject.optString(Ue.n);
                if (TextUtils.isEmpty(strOptString)) {
                    ironLog.warning("encryptedResponse is empty - return null");
                    return new Ee.a(new C3829se(2100, C3903we.h));
                }
                boolean zOptBoolean = jSONObject.optBoolean("compression", false);
                Intrinsics.checkNotNull(strOptString);
                strD = a(strOptString, zOptBoolean);
                if (TextUtils.isEmpty(strD)) {
                    ironLog.warning("encoded response invalid - return null");
                    ke.g();
                    return new Ee.a(new C3829se(C3829se.f, C3903we.g));
                }
            }
            Ue ue = new Ue(context, c3957ze.d(), c3957ze.f(), strD);
            ue.a(Ue.a.SERVER);
            if (ue.q()) {
                return new Ee.b(new Ae(ue));
            }
            IronLog.INTERNAL.warning("response invalid - return null");
            String strE = ue.e();
            if (strE == null) {
                strE = "Unknown";
            }
            return new Ee.a(new C3829se(C3829se.e, strE));
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.warning("exception = " + e);
            return new Ee.a(e instanceof JSONException ? new C3829se(C3829se.e, "serverResponseIsNotValid") : new C3829se(510, "internal error"));
        }
    }

    private final C3829se a(InterfaceC3657j7.a aVar) {
        return new C3829se(aVar.b() ? C3829se.d : C3829se.h, aVar.a());
    }

    private final String a(String str, boolean z) {
        if (z) {
            String strD = Q9.d(C3763p5.b().c(), str);
            Intrinsics.checkNotNull(strD);
            return strD;
        }
        String strB = Q9.b(C3763p5.b().c(), str);
        Intrinsics.checkNotNull(strB);
        return strB;
    }

    private final Ee b(Context context, Ke ke, C3957ze c3957ze) throws Throwable {
        Ee eeA = a(context, ke, c3957ze);
        if (eeA instanceof Ee.a) {
            IronSourceLoggerManager logger = IronSourceLoggerManager.getLogger();
            IronSourceLogger.IronSourceTag ironSourceTag = IronSourceLogger.IronSourceTag.INTERNAL;
            logger.log(ironSourceTag, "Null or invalid response. Trying to get cached response", 0);
            Ue ueA = ke.a(context, c3957ze.d());
            if (ueA != null && ueA.q()) {
                Ee.b bVar = new Ee.b(new Ae(ueA));
                IronSourceLoggerManager.getLogger().log(ironSourceTag, ErrorBuilder.buildUsingCachedConfigurationError(c3957ze.d(), c3957ze.f()) + ": " + bVar.b(), 1);
                ke.b();
                return bVar;
            }
        }
        return eeA;
    }

    @Override // com.ironsource.Se
    public void a(Context context, C3957ze request, Ke tools, InterfaceC3921xe listener) throws Throwable {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strF = request.f();
        if (strF == null) {
            strF = "";
        }
        tools.a("userId", strF);
        tools.a("appKey", request.d());
        tools.i().i(request.f());
        tools.h();
        Ee eeB = b(context, tools, request);
        if (eeB instanceof Ee.b) {
            listener.a(new C3794qe(((Ee.b) eeB).b()));
        } else {
            if (!(eeB instanceof Ee.a)) {
                throw new NoWhenBranchMatchedException();
            }
            listener.a(((Ee.a) eeB).b());
        }
    }
}
