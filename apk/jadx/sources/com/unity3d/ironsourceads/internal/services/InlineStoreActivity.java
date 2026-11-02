package com.unity3d.ironsourceads.internal.services;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.ironsource.C3801r4;
import com.ironsource.C5;
import com.ironsource.D5;
import com.ironsource.EnumC3862u9;
import com.ironsource.InterfaceC3614h;
import com.ironsource.Pb;
import com.ironsource.W9;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.controller.v;
import com.ironsource.sdk.utils.Logger;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class InlineStoreActivity extends Activity {
    private static final String c = "InlineStoreActivity";
    private static final int d = 1001;
    private v a;
    private boolean b = false;

    static class a {
        static final String a = "inline_store_intent";
        static final String b = "destroy_inline_store";

        private a() {
        }
    }

    public static class b {
        private final InterfaceC3614h a;
        private Intent b;

        public b(InterfaceC3614h interfaceC3614h) {
            this.a = interfaceC3614h;
        }

        public Intent a(Context context) {
            Intent intentA = this.a.a(context);
            intentA.putExtra("inline_store_intent", this.b);
            return intentA;
        }

        public b a(Intent intent) {
            this.b = intent;
            return this;
        }
    }

    private void a() {
        getWindow().setFlags(1024, 1024);
    }

    private void a(Intent intent) {
        startActivityForResult(intent, 1001);
        v vVar = this.a;
        if (vVar != null) {
            vVar.z();
        }
        a(D5.INLINE_STORE_LAUNCHED, (Map<String, Object>) null);
    }

    private void a(final D5 d5, final Map<String, Object> map) {
        new Thread(new Runnable() { // from class: com.unity3d.ironsourceads.internal.services.InlineStoreActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                InlineStoreActivity.a(map, d5);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Map map, D5 d5) {
        try {
            HashMap map2 = map != null ? new HashMap(map) : new HashMap();
            String str = "strategy:" + EnumC3862u9.APP_ACTIVITY.c();
            Object obj = map2.get(IronSourceConstants.EVENTS_EXT1);
            if (!(obj instanceof String) || TextUtils.isEmpty((String) obj)) {
                map2.put(IronSourceConstants.EVENTS_EXT1, str);
            } else {
                map2.put(IronSourceConstants.EVENTS_EXT1, str + FacebookConstants.PLACEMENT_IDS_SEPARATOR + obj);
            }
            Pb.k0().q().a(new C5(d5, new JSONObject(map2)));
        } catch (Exception e) {
            C3801r4.d().a(e);
        }
    }

    private void b() {
        requestWindowFeature(1);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1001) {
            v vVar = this.a;
            if (vVar != null) {
                vVar.a(i2, this.b);
            }
            Map<String, Object> map = new HashMap<>();
            String str = "resultCode:" + i2;
            if (this.b) {
                str = str + ",destroyCalled:true";
            }
            map.put(IronSourceConstants.EVENTS_EXT1, str);
            a(D5.INLINE_STORE_CLOSED, map);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i(c, "onCreate()");
        try {
            this.a = (v) W9.b((Context) this).a().k();
            b();
            a();
            a((Intent) getIntent().getExtras().getParcelable("inline_store_intent"));
        } catch (Exception e) {
            C3801r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            v vVar = this.a;
            if (vVar != null) {
                vVar.j(e.toString());
            }
            a(D5.INLINE_STORE_ACTIVITY_FAILED, (Map<String, Object>) null);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        v vVar = this.a;
        if (vVar != null) {
            vVar.a(true, "inlineStoreClose");
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.hasExtra("destroy_inline_store")) {
            IronLog.INTERNAL.verbose("onNewIntent() - destroy inline store request detected");
            this.b = true;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        v vVar = this.a;
        if (vVar != null) {
            vVar.a(false, "inlineStoreOpen");
        }
    }
}
