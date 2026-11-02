package com.unity3d.ironsourceads.internal.services;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.ironsource.C3801r4;
import com.ironsource.C3824s9;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.EnumC3862u9;
import com.ironsource.InterfaceC3596g;
import com.ironsource.InterfaceC3614h;
import com.ironsource.Pb;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.controller.ControllerActivity;
import com.ironsource.sdk.controller.k;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class b implements com.unity3d.ironsourceads.internal.services.a {
    private final InterfaceC3596g a;
    private final InterfaceC3614h b;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3862u9.values().length];
            try {
                iArr[EnumC3862u9.DIRECT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3862u9.APP_ACTIVITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public b() {
        this(new k.a(), new k.b());
    }

    public b(InterfaceC3596g actionIntentFactory, InterfaceC3614h activityIntentFactory) {
        Intrinsics.checkNotNullParameter(actionIntentFactory, "actionIntentFactory");
        Intrinsics.checkNotNullParameter(activityIntentFactory, "activityIntentFactory");
        this.a = actionIntentFactory;
        this.b = activityIntentFactory;
    }

    private final Intent a(C3824s9 c3824s9) throws JSONException {
        Intent intentA = this.a.a();
        intentA.setPackage(c3824s9.f());
        intentA.setData(Uri.parse(c3824s9.h()));
        JSONObject jSONObjectE = c3824s9.e();
        if (jSONObjectE != null) {
            Iterator<String> itKeys = jSONObjectE.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObjectE.get(next);
                if (obj instanceof String) {
                    intentA.putExtra(next, (String) obj);
                } else if (obj instanceof Boolean) {
                    intentA.putExtra(next, ((Boolean) obj).booleanValue());
                } else if (obj instanceof Integer) {
                    intentA.putExtra(next, ((Number) obj).intValue());
                } else if (obj instanceof Long) {
                    intentA.putExtra(next, ((Number) obj).longValue());
                } else if (obj instanceof Float) {
                    intentA.putExtra(next, ((Number) obj).floatValue());
                } else if (obj instanceof Double) {
                    intentA.putExtra(next, ((Number) obj).doubleValue());
                } else {
                    intentA.putExtra(next, obj.toString());
                }
            }
        }
        return intentA;
    }

    private final com.unity3d.ironsourceads.internal.services.a.AbstractC1144a a(Activity activity, Intent intent) {
        activity.startActivity(new InlineStoreActivity.b(this.b).a(intent).a(activity));
        a(this, D5.INLINE_STORE_ACTIVITY_LAUNCHED, EnumC3862u9.APP_ACTIVITY, null, 4, null);
        return com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.b.a;
    }

    private final void a(D5 d5, EnumC3862u9 enumC3862u9, Map<String, Object> map) {
        try {
            map.put(IronSourceConstants.EVENTS_EXT1, "strategy:" + enumC3862u9.c());
            Pb.w.d().q().a(new C5(d5, new JSONObject(MapsKt.toMap(map))));
        } catch (Exception e) {
            C3801r4.d().a(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void a(b bVar, D5 d5, EnumC3862u9 enumC3862u9, Map map, int i, Object obj) {
        if ((i & 4) != 0) {
            map = new LinkedHashMap();
        }
        bVar.a(d5, enumC3862u9, map);
    }

    private final boolean a(Context context, Intent intent) {
        return intent.resolveActivity(context.getPackageManager()) != null;
    }

    private final com.unity3d.ironsourceads.internal.services.a.AbstractC1144a b(Activity activity, Intent intent) {
        activity.startActivityForResult(intent, 794006778);
        a(this, D5.INLINE_STORE_LAUNCHED, EnumC3862u9.DIRECT_INTENT, null, 4, null);
        return com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.b.a;
    }

    @Override // com.unity3d.ironsourceads.internal.services.a
    public com.unity3d.ironsourceads.internal.services.a.AbstractC1144a a(Context context, C3824s9 request) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            try {
                a(this, D5.INLINE_STORE_REQUESTED, request.g(), null, 4, null);
                if (TextUtils.isEmpty(request.h())) {
                    a(D5.INLINE_STORE_FAILED, request.g(), MapsKt.mutableMapOf(TuplesKt.to("reason", "storeUrl is empty")));
                    return new com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.C1145a("storeUrl is empty");
                }
                if (!(context instanceof Activity)) {
                    a(D5.INLINE_STORE_FAILED, request.g(), MapsKt.mutableMapOf(TuplesKt.to("reason", "context is not an Activity")));
                    return new com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.C1145a("context is not an Activity");
                }
                Intent intentA = a(request);
                if (!a(context, intentA)) {
                    a(D5.INLINE_STORE_FAILED, request.g(), MapsKt.mutableMapOf(TuplesKt.to("reason", "Failed to resolve for packageManager")));
                    return new com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.C1145a("Failed to resolve for packageManager");
                }
                int i = a.a[request.g().ordinal()];
                if (i == 1) {
                    return b((Activity) context, intentA);
                }
                if (i == 2) {
                    return a((Activity) context, intentA);
                }
                throw new NoWhenBranchMatchedException();
            } catch (Exception e) {
                e = e;
                Exception exc = e;
                C3801r4.d().a(exc);
                String str = "Failed to open inline store: " + exc.getMessage();
                IronLog.INTERNAL.error(exc.toString());
                a(D5.INLINE_STORE_FAILED, request.g(), MapsKt.mutableMapOf(TuplesKt.to("reason", str)));
                return new com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.C1145a(str);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.unity3d.ironsourceads.internal.services.a
    public com.unity3d.ironsourceads.internal.services.a.AbstractC1144a a(Context context, EnumC3862u9 strategy) {
        Intent intent;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        try {
            a(this, D5.INLINE_STORE_DESTROY_REQUESTED, strategy, null, 4, null);
            if (!(context instanceof Activity)) {
                a(D5.INLINE_STORE_DESTROY_FAILED, strategy, MapsKt.mutableMapOf(TuplesKt.to("reason", "context is not an Activity")));
                return new com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.C1145a("context is not an Activity");
            }
            int i = a.a[strategy.ordinal()];
            if (i == 1) {
                intent = new Intent(context, (Class<?>) ControllerActivity.class);
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                intent = new Intent(context, (Class<?>) InlineStoreActivity.class);
            }
            intent.addFlags(603979776);
            intent.putExtra("destroy_inline_store", true);
            ((Activity) context).startActivity(intent);
            a(this, D5.INLINE_STORE_DESTROY_LAUNCHED, strategy, null, 4, null);
            return com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.b.a;
        } catch (Exception e) {
            C3801r4.d().a(e);
            String str = "Failed to destroy inline store: " + e.getMessage();
            IronLog.INTERNAL.error(e.toString());
            a(D5.INLINE_STORE_DESTROY_FAILED, strategy, MapsKt.mutableMapOf(TuplesKt.to("reason", str)));
            return new com.unity3d.ironsourceads.internal.services.a.AbstractC1144a.C1145a(str);
        }
    }
}
