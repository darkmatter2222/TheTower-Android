package com.applovin.adview;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Insets;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowInsets;
import android.webkit.WebView;
import android.window.OnBackInvokedCallback;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.activity.AppRestartDuringAdDetectionService;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.c5;
import com.applovin.impl.d;
import com.applovin.impl.e;
import com.applovin.impl.e5;
import com.applovin.impl.g;
import com.applovin.impl.h2;
import com.applovin.impl.i0;
import com.applovin.impl.j2;
import com.applovin.impl.k8;
import com.applovin.impl.o1;
import com.applovin.impl.p0;
import com.applovin.impl.r2;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.u7;
import com.applovin.impl.y1;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.ironsource.C3510b4;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AppLovinFullscreenActivity extends Activity implements o1 {
    private static final Set n = Collections.newSetFromMap(new WeakHashMap());
    private static final Object o = new Object();
    public static r2 parentInterstitialWrapper;
    private l a;
    private y1 b;
    private final AtomicBoolean c = new AtomicBoolean(true);
    private boolean d;
    private com.applovin.impl.adview.activity.a e;
    private c f;
    private i0 g;
    private long h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;

    class a implements View.OnApplyWindowInsetsListener {
        final /* synthetic */ Boolean a;

        a(Boolean bool) {
            this.a = bool;
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            if (this.a.booleanValue()) {
                AppLovinFullscreenActivity.this.a(windowInsets);
            }
            if (!AppLovinFullscreenActivity.this.m) {
                Insets insets = windowInsets.getInsets(((Integer) AppLovinFullscreenActivity.this.a.a(c5.B2)).intValue());
                view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
                return windowInsets;
            }
            int iIntValue = ((Integer) AppLovinFullscreenActivity.this.a.a(c5.B2)).intValue();
            Insets insets2 = windowInsets.getInsets(AppLovinFullscreenActivity.this.l ? iIntValue & (~WindowInsets.Type.displayCutout()) : iIntValue | WindowInsets.Type.displayCutout());
            view.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
            return windowInsets;
        }
    }

    class b implements y1.g {
        b() {
        }

        @Override // com.applovin.impl.y1.g
        public void a(y1 y1Var) {
            AppLovinFullscreenActivity.this.b = y1Var;
            y1Var.w();
        }

        @Override // com.applovin.impl.y1.g
        public void a(String str, Throwable th) {
            com.applovin.impl.sdk.ad.b bVarF = AppLovinFullscreenActivity.parentInterstitialWrapper.f();
            r2.a(bVarF, AppLovinFullscreenActivity.parentInterstitialWrapper.c(), str, th, AppLovinFullscreenActivity.this);
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("source", "createAppLovinFullscreenActivity");
            CollectionUtils.putStringIfValid("error_message", str, mapHashMap);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), mapHashMap);
            AppLovinFullscreenActivity.this.a.g().a(h2.I, bVarF, mapHashMap);
        }
    }

    private static class c implements OnBackInvokedCallback {
        private final Runnable a;

        protected c(Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.window.OnBackInvokedCallback
        public void onBackInvoked() {
            this.a.run();
        }
    }

    private String a(l lVar) {
        Integer num = (Integer) lVar.a(c5.j7);
        if (num.intValue() < 0) {
            return null;
        }
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        if (stackTrace.length <= num.intValue()) {
            return null;
        }
        return stackTrace[num.intValue()].toString();
    }

    private void a() {
        r2 r2Var;
        l lVar = this.a;
        if (lVar == null || !((Boolean) lVar.a(c5.H2)).booleanValue() || (r2Var = parentInterstitialWrapper) == null || r2Var.f() == null) {
            return;
        }
        com.applovin.impl.sdk.ad.b bVarF = parentInterstitialWrapper.f();
        List listK = bVarF.k();
        if (CollectionUtils.isEmpty(listK)) {
            return;
        }
        e eVar = (e) listK.get(0);
        JSONObject jSONObject = new JSONObject();
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_url", eVar.c());
        JsonUtils.putStringIfValid(jSONObject, "app_killed_postback_backup_url", eVar.a());
        this.a.r0().b(e5.P, jSONObject.toString());
        this.a.r0().b(e5.N, Long.valueOf(System.currentTimeMillis()));
        this.a.r0().b(e5.Q, CollectionUtils.toJsonString(j2.a((AppLovinAdImpl) bVarF), JsonUtils.EMPTY_JSON));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WindowInsets windowInsets) {
        p0.a aVarA = p0.a(windowInsets, this.a);
        p0.a aVarC = p0.c(windowInsets, this.a);
        p0.a aVarB = p0.b(windowInsets, this.a);
        String strB = u7.b(this);
        p0.a(aVarA, strB);
        p0.c(aVarC, strB);
        p0.b(aVarB, strB);
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.a(aVarA, aVarC, aVarB);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(r2 r2Var) {
        boolean zY = this.b.y();
        boolean zI = (r2Var == null || !zY) ? false : r2Var.i();
        if (!zI) {
            this.b.c(false);
        }
        a(this.b, zY, zI);
    }

    private void a(y1 y1Var, boolean z, boolean z2) {
        y1Var.a("activity_destroyed_by_app_relaunch");
        if (this.a != null) {
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("source", "onDestroyAppLovinFullScreenActivity");
            r2 r2Var = parentInterstitialWrapper;
            com.applovin.impl.sdk.ad.b bVarF = r2Var != null ? r2Var.f() : null;
            mapHashMap.putAll(j2.a((AppLovinAdImpl) bVarF));
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putBoolean(jSONObject, "reshow_attempted", z);
            JsonUtils.putBoolean(jSONObject, "reshow_success", z2);
            if (bVarF != null) {
                JsonUtils.putInt(jSONObject, "reshow_count", bVarF.T());
                JsonUtils.putInt(jSONObject, "reshow_count_from_render_process_gone", bVarF.U());
            }
            mapHashMap.put("details", jSONObject.toString());
            this.a.E().d(h2.P0, mapHashMap);
        }
        y1Var.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Long l) {
        this.h += l.longValue();
        this.a.r0().b(e5.O, Long.valueOf(this.h));
    }

    private void b() {
        l lVar = this.a;
        if (lVar == null || !((Boolean) lVar.a(c5.I2)).booleanValue()) {
            return;
        }
        final Long l = (Long) this.a.a(c5.J2);
        this.g = i0.a(l.longValue(), true, this.a, new Runnable() { // from class: com.applovin.adview.AppLovinFullscreenActivity$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.q();
        }
        if (u7.g(getApplicationContext())) {
            super.onBackPressed();
        }
    }

    public void configureSystemUiBars(boolean z, boolean z2, boolean z3, boolean z4) {
        this.m = z || z2 || z3;
        if (!p0.b() || !this.m) {
            getWindow().setFlags(1024, 1024);
            d.c(this);
            return;
        }
        this.i = z;
        this.j = z2;
        this.k = z3;
        this.l = z4;
        if (z3) {
            this.i = false;
            this.j = false;
        }
        getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        if (this.i) {
            d.b((Activity) this);
        } else {
            d.f(this);
        }
        if (this.j) {
            d.a((Activity) this);
        } else {
            d.e(this);
        }
    }

    @Override // com.applovin.impl.o1
    public void dismiss(String str) {
        if (p0.g() && this.f != null) {
            getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.f);
            this.f = null;
        }
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.a(str);
        } else {
            finishFromSdk();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        l lVar = this.a;
        if (lVar != null && !this.d) {
            if (((Boolean) lVar.a(c5.h7)).booleanValue()) {
                r2 r2Var = parentInterstitialWrapper;
                Map mapA = j2.a((AppLovinAdImpl) (r2Var != null ? r2Var.f() : null));
                CollectionUtils.putStringIfValid("details", a(lVar), mapA);
                lVar.E().d(h2.S0, mapA);
            }
            if (((Boolean) lVar.a(c5.i7)).booleanValue()) {
                return;
            }
        }
        super.finish();
    }

    public void finishFromSdk() {
        this.d = true;
        finish();
    }

    public boolean isAllowingAdRenderingWithinDisplayCutout() {
        return this.l;
    }

    public boolean isHidingNavigationBar() {
        return this.j;
    }

    public boolean isHidingStatusBar() {
        return this.i;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.a(configuration);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null && parentInterstitialWrapper == null) {
            p.j("AppLovinFullscreenActivity", "Dismissing ad. Activity was destroyed while in background.");
            dismiss("activity_destroyed_while_in_background");
            return;
        }
        try {
            requestWindowFeature(1);
        } catch (Throwable th) {
            p.c("AppLovinFullscreenActivity", "Failed to request window feature", th);
        }
        getWindow().addFlags(16777216);
        getWindow().addFlags(128);
        View viewFindViewById = findViewById(R.id.content);
        viewFindViewById.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        if (TextUtils.isEmpty(getIntent().getStringExtra("com.applovin.interstitial.sdk_key"))) {
            r2 r2Var = parentInterstitialWrapper;
            if (r2Var != null && r2Var.f() != null) {
                r2.a(parentInterstitialWrapper.f(), parentInterstitialWrapper.c(), "Empty SDK key", (Throwable) null, this);
            }
            finishFromSdk();
            return;
        }
        this.a = AppLovinSdk.getInstance(this).a();
        r2 r2Var2 = parentInterstitialWrapper;
        com.applovin.impl.sdk.ad.b bVarF = r2Var2 != null ? r2Var2.f() : null;
        Boolean bool = (Boolean) this.a.a(c5.P4);
        if (bVarF != null) {
            this.i = bVarF.U0();
            this.j = bVarF.S0();
            this.k = bVarF.T0();
            this.l = bVarF.H0();
            this.m = bVarF.L0();
        }
        if (p0.b() && (bool.booleanValue() || this.m)) {
            getWindow().setDecorFitsSystemWindows(false);
            viewFindViewById.setOnApplyWindowInsetsListener(new a(bool));
            configureSystemUiBars(this.i, this.j, this.k, this.l);
        } else {
            viewFindViewById.setFitsSystemWindows(true);
            if (p0.b()) {
                k8.a(viewFindViewById, this.a);
            }
            configureSystemUiBars(this.i, this.j, this.k, this.l);
        }
        if (bVarF != null) {
            g.a(bVarF, this, this.a);
        }
        if (p0.g() && ((Boolean) this.a.a(c5.t6)).booleanValue()) {
            this.f = new c(new Runnable() { // from class: com.applovin.adview.AppLovinFullscreenActivity$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.c();
                }
            });
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.f);
        }
        a();
        b();
        Integer num = (Integer) this.a.a(c5.S6);
        if (num.intValue() > 0) {
            synchronized (o) {
                Set set = n;
                set.add(this);
                u7.a("AppLovinFullscreenActivity", set.size(), num.intValue(), this.a.E());
            }
        }
        r2 r2Var3 = parentInterstitialWrapper;
        if (r2Var3 != null) {
            y1.a(r2Var3.f(), parentInterstitialWrapper.b(), parentInterstitialWrapper.c(), parentInterstitialWrapper.d(), parentInterstitialWrapper.h(), this.a, this, new b());
            return;
        }
        Intent intent = new Intent(this, (Class<?>) FullscreenAdService.class);
        com.applovin.impl.adview.activity.a aVar = new com.applovin.impl.adview.activity.a(this, this.a);
        this.e = aVar;
        bindService(intent, aVar, 1);
        if (p0.e()) {
            String str = this.a.p0().getExtraParameters().get("disable_set_data_dir_suffix");
            if (StringUtils.isValidString(str) && Boolean.parseBoolean(str)) {
                return;
            }
            try {
                WebView.setDataDirectorySuffix(String.valueOf(Process.myPid()));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        l lVar = this.a;
        if (lVar != null) {
            if (((Boolean) lVar.a(c5.H2)).booleanValue()) {
                this.a.r0().b(e5.N);
                this.a.r0().b(e5.P);
                this.a.r0().b(e5.Q);
            }
            if (((Boolean) this.a.a(c5.b7)).booleanValue()) {
                stopService(new Intent(this, (Class<?>) AppRestartDuringAdDetectionService.class));
            }
        }
        if (this.g != null) {
            this.a.r0().b(e5.O);
            this.g.a();
            this.g = null;
        }
        com.applovin.impl.adview.activity.a aVar = this.e;
        if (aVar != null) {
            try {
                unbindService(aVar);
            } catch (Throwable unused) {
            }
        }
        y1 y1Var = this.b;
        if (y1Var != null) {
            if (y1Var.g()) {
                this.b.r();
            } else {
                long jA = this.b.a();
                if (jA >= 0) {
                    if (jA == 0) {
                        this.b.c(true);
                    }
                    final r2 r2Var = parentInterstitialWrapper;
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.adview.AppLovinFullscreenActivity$$ExternalSyntheticLambda2
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.a(r2Var);
                        }
                    }, jA);
                } else {
                    a(this.b, false, false);
                }
            }
        }
        parentInterstitialWrapper = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.a(i, keyEvent);
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.s();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        y1 y1Var;
        try {
            super.onResume();
            if (this.c.get() || (y1Var = this.b) == null) {
                return;
            }
            y1Var.t();
        } catch (IllegalArgumentException e) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("AppLovinFullscreenActivity", "Error was encountered in onResume().", e);
            }
            this.a.E().a("AppLovinFullscreenActivity", C3510b4.i.u0, e);
            dismiss("activity_on_resume_error");
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        y1 y1Var = this.b;
        if (y1Var != null) {
            y1Var.u();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        l lVar = this.a;
        if (lVar != null && ((Boolean) lVar.a(c5.b7)).booleanValue()) {
            if (z) {
                stopService(new Intent(this, (Class<?>) AppRestartDuringAdDetectionService.class));
            } else {
                getApplicationContext().startService(new Intent(getApplicationContext(), (Class<?>) AppRestartDuringAdDetectionService.class));
            }
        }
        if (this.b != null) {
            if (!this.c.getAndSet(false)) {
                this.b.a(z);
            }
            if (z) {
                configureSystemUiBars(this.i, this.j, this.k, this.l);
            }
        }
        super.onWindowFocusChanged(z);
    }

    public void setPresenter(y1 y1Var) {
        this.b = y1Var;
    }
}
