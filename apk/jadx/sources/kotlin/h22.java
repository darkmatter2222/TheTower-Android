package kotlin;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.WebViewFeature;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h22 extends r9 {
    public WebView e;
    public Long f;
    public final Map g;
    public final String h;

    public h22(String str, String str2, Map map) {
        super(str);
        this.f = null;
        this.g = map;
        this.h = str2;
    }

    @Override // kotlin.r9
    public final void a(p9 p9Var, n9 n9Var) {
        JSONObject jSONObject = new JSONObject();
        Map mapUnmodifiableMap = Collections.unmodifiableMap(n9Var.d);
        Iterator it = mapUnmodifiableMap.keySet().iterator();
        if (it.hasNext()) {
            mapUnmodifiableMap.get((String) it.next()).getClass();
            throw new ClassCastException();
        }
        a(p9Var, n9Var, jSONObject);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + " for WebView: " + webView);
        if (((WebView) this.b.get()) == webView) {
            Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            this.b = new uy3(null);
        }
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override // kotlin.r9
    public final void b() {
        this.b.clear();
        new Handler().postDelayed(new g22(this), Math.max(4000 - (this.f == null ? 4000L : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.f.longValue(), TimeUnit.NANOSECONDS)), WebViewScreenCapture.CACHE_TTL_MS));
        this.e = null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0090  */
    /* JADX WARN: Code duplicated, block: B:19:0x009b  */
    @Override // kotlin.r9
    public final void c() {
        WebViewClient e22Var;
        Iterator it;
        wh1 wh1Var = wh1.b;
        Context context = wh1Var.a;
        WebView webView = new WebView(context);
        this.e = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        this.e.getSettings().setAllowContentAccess(false);
        this.e.getSettings().setAllowFileAccess(false);
        WebView webView2 = this.e;
        try {
            if (!WebViewFeature.isFeatureSupported("WEB_MESSAGE_LISTENER") || ((ArrayList) Cdo.a(wh1Var.a).a()).size() <= 0) {
                if (((ArrayList) Cdo.a(context).a()).size() > 0) {
                    e22Var = new e22(this);
                }
                this.e.setWebViewClient(e22Var);
                this.b = new uy3(this.e);
                qd2.a(this.e, this.h);
                it = this.g.keySet().iterator();
                if (!it.hasNext()) {
                    this.f = Long.valueOf(System.nanoTime());
                } else {
                    this.g.get((String) it.next()).getClass();
                    throw new ClassCastException();
                }
            }
            new go(webView2);
        } catch (Exception e) {
            Log.e("OMIDLIB", "Error during initialization of AttestationMessageListener", e);
        } catch (NoClassDefFoundError unused) {
        }
        e22Var = new f22(this);
        this.e.setWebViewClient(e22Var);
        this.b = new uy3(this.e);
        qd2.a(this.e, this.h);
        it = this.g.keySet().iterator();
        if (!it.hasNext()) {
            this.f = Long.valueOf(System.nanoTime());
        } else {
            this.g.get((String) it.next()).getClass();
            throw new ClassCastException();
        }
    }
}
