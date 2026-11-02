package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tapjoy.TapjoyConstants;
import com.tapjoy.TapjoyUtil;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class gh {
    private static final gh d;
    private static gh e;
    private Context h;
    private Boolean f = null;
    public String a = null;
    private Boolean g = null;
    public String b = null;
    public boolean c = false;

    static {
        gh ghVar = new gh();
        d = ghVar;
        e = ghVar;
    }

    public static gh a() {
        return e;
    }

    private boolean d() {
        Context context = this.h;
        if (context == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0).edit();
        editorEdit.putBoolean("gdpr", this.f.booleanValue());
        editorEdit.apply();
        return true;
    }

    private boolean e() {
        Context context = this.h;
        if (context == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0).edit();
        editorEdit.putString("cgdpr", this.a);
        editorEdit.apply();
        return true;
    }

    private boolean f() {
        Context context = this.h;
        if (context == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0).edit();
        editorEdit.putBoolean("below_consent_age", this.g.booleanValue());
        editorEdit.apply();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0058 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x0066 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x006e A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0072 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0079 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0080 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0087 A[Catch: all -> 0x008c, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:9:0x0010 A[Catch: all -> 0x008c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0009, B:9:0x0010, B:11:0x001a, B:13:0x0022, B:14:0x002e, B:16:0x0032, B:17:0x003c, B:19:0x0040, B:21:0x0048, B:22:0x0054, B:24:0x0058, B:25:0x0062, B:27:0x0066, B:29:0x006e, B:31:0x0072, B:32:0x0075, B:34:0x0079, B:35:0x007c, B:37:0x0080, B:38:0x0083, B:40:0x0087), top: B:46:0x0003 }] */
    public final synchronized void a(Context context) {
        gh ghVar;
        Context context2;
        gh ghVar2;
        SharedPreferences sharedPreferences;
        if (context != null) {
            if (this.h == null) {
                this.h = context;
            }
            ghVar = e;
            context2 = ghVar.h;
            if (context2 != null) {
                sharedPreferences = context2.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
                if (ghVar.f == null && sharedPreferences.contains("gdpr")) {
                    ghVar.f = Boolean.valueOf(sharedPreferences.getBoolean("gdpr", false));
                }
                if (ghVar.a == null) {
                    ghVar.a = sharedPreferences.getString("cgdpr", "");
                }
                if (ghVar.g == null && sharedPreferences.contains("below_consent_age")) {
                    ghVar.g = Boolean.valueOf(sharedPreferences.getBoolean("below_consent_age", false));
                }
                if (ghVar.b == null) {
                    ghVar.b = sharedPreferences.getString("us_privacy", "");
                }
            }
            if (this.c) {
                this.c = false;
                ghVar2 = e;
                if (ghVar2.h != null) {
                    if (ghVar2.f != null) {
                        ghVar2.d();
                    }
                    if (ghVar2.a != null) {
                        ghVar2.e();
                    }
                    if (ghVar2.g != null) {
                        ghVar2.f();
                    }
                    if (ghVar2.b != null) {
                        ghVar2.c();
                    }
                }
            }
        } else {
            ghVar = e;
            context2 = ghVar.h;
            if (context2 != null) {
                sharedPreferences = context2.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0);
                if (ghVar.f == null) {
                    ghVar.f = Boolean.valueOf(sharedPreferences.getBoolean("gdpr", false));
                }
                if (ghVar.a == null) {
                    ghVar.a = sharedPreferences.getString("cgdpr", "");
                }
                if (ghVar.g == null) {
                    ghVar.g = Boolean.valueOf(sharedPreferences.getBoolean("below_consent_age", false));
                }
                if (ghVar.b == null) {
                    ghVar.b = sharedPreferences.getString("us_privacy", "");
                }
            }
            if (this.c) {
                this.c = false;
                ghVar2 = e;
                if (ghVar2.h != null) {
                    if (ghVar2.f != null) {
                        ghVar2.d();
                    }
                    if (ghVar2.a != null) {
                        ghVar2.e();
                    }
                    if (ghVar2.g != null) {
                        ghVar2.f();
                    }
                    if (ghVar2.b != null) {
                        ghVar2.c();
                    }
                }
            }
        }
        throw th;
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a = str;
        if (e()) {
            return;
        }
        this.c = true;
    }

    public final void a(boolean z) {
        this.f = Boolean.valueOf(z);
        if (d()) {
            return;
        }
        this.c = true;
    }

    public final Map<String, String> b() {
        HashMap map = new HashMap();
        Boolean bool = this.f;
        if (bool != null) {
            TapjoyUtil.safePut(map, "gdpr", bool.booleanValue() ? "1" : "0", true);
        }
        if (!TextUtils.isEmpty(this.a)) {
            TapjoyUtil.safePut(map, "cgdpr", this.a, true);
        }
        Boolean bool2 = this.g;
        if (bool2 != null) {
            TapjoyUtil.safePut(map, "below_consent_age", bool2.booleanValue() ? "1" : "0", true);
        }
        if (!TextUtils.isEmpty(this.b)) {
            TapjoyUtil.safePut(map, "us_privacy", this.b, true);
        }
        return map;
    }

    public final void b(boolean z) {
        this.g = Boolean.valueOf(z);
        if (f()) {
            return;
        }
        this.c = true;
    }

    public final boolean c() {
        Context context = this.h;
        if (context == null) {
            return false;
        }
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(TapjoyConstants.TJC_PREFERENCE, 0).edit();
        editorEdit.putString("us_privacy", this.b);
        editorEdit.apply();
        return true;
    }
}
