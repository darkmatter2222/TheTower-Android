package kotlin;

import android.util.Base64;
import android.view.MotionEvent;
import com.facebook.ads.AdError;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.ironsource.Ba;
import com.ironsource.M9;
import com.tapjoy.TJAdUnitConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class dt1 implements ua {
    public final Object a;
    public final oy3 b;
    public final x9 c;
    public final boolean d;

    public dt1(Object obj, oy3 oy3Var, x9 x9Var, boolean z) {
        this.a = obj;
        this.b = oy3Var;
        this.c = x9Var;
        this.d = z;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(((bi) bi.v().a(ph.DG).a(du.a(bArr)).b()).c(), 11);
    }

    public final synchronized void a() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.a.getClass().getDeclaredMethod(TJAdUnitConstants.String.CLOSE, new Class[0]).invoke(this.a, new Object[0]);
            x9 x9Var = this.c;
            ((st1) ((y9) x9Var).a).a(3001, System.currentTimeMillis() - jCurrentTimeMillis, null, null);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setResult(Boolean.TRUE);
            taskCompletionSource.getTask();
        } catch (Exception e) {
            throw new ly3(2003, e);
        }
    }

    public final synchronized void a(MotionEvent motionEvent) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            ((tn0) this.b).getClass();
            HashMap map = new HashMap();
            map.put("t", new Throwable());
            map.put(Ba.b, null);
            map.put("evt", motionEvent);
            this.a.getClass().getDeclaredMethod("he", Map.class).invoke(this.a, map);
            ((st1) ((y9) this.c).a).a(AuthApiStatusCodes.AUTH_API_SERVER_ERROR, System.currentTimeMillis() - jCurrentTimeMillis, null, null);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            taskCompletionSource.setResult(Boolean.TRUE);
            taskCompletionSource.getTask();
        } catch (Exception e) {
            throw new ly3(M9.a.d, e);
        }
    }

    public final synchronized byte[] a(HashMap map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            this.c.a(2007, System.currentTimeMillis() - jCurrentTimeMillis, e);
            return null;
        }
        return (byte[]) this.a.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.a, null, map);
    }

    public final synchronized int b() {
        try {
        } catch (Exception e) {
            throw new ly3(2006, e);
        }
        return ((Integer) this.a.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.a, new Object[0])).intValue();
    }

    public final synchronized boolean c() {
        try {
        } catch (Exception e) {
            throw new ly3(AdError.INTERNAL_ERROR_CODE, e);
        }
        return ((Boolean) this.a.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.a, new Object[0])).booleanValue();
    }
}
