package com.ironsource.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ȉ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0160 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static C0160 f897;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Context f903;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f899 = StringFog.decrypt("nmTNXE0MZeWzb81cUjpa67xqyVhT\n", "0guuPSFOF4o=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final Object f898 = new Object();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public boolean f904 = true;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final HashMap f902 = new HashMap();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashMap f901 = new HashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final ArrayList f900 = new ArrayList();

    public C0160(Context context) {
        this.f903 = context;
        new HandlerC0181(this, context.getMainLooper());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0160 m1933(Context context) {
        C0160 c0160;
        synchronized (f898) {
            if (f897 == null) {
                f897 = new C0160(context.getApplicationContext());
            }
            c0160 = f897;
        }
        return c0160;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1934() {
        synchronized (this.f902) {
            Iterator it = new HashMap(this.f902).keySet().iterator();
            while (it.hasNext()) {
                m1937((BroadcastReceiver) it.next());
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m1935() {
        this.f904 = false;
        m1934();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m1936() {
        this.f904 = true;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1937(BroadcastReceiver broadcastReceiver) {
        synchronized (this.f902) {
            ArrayList arrayList = (ArrayList) this.f902.remove(broadcastReceiver);
            if (arrayList == null) {
                return;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                IntentFilter intentFilter = (IntentFilter) arrayList.get(i);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList arrayList2 = (ArrayList) this.f901.get(action);
                    if (arrayList2 != null) {
                        if (arrayList2.size() > 0) {
                            if (arrayList2.get(0) != null) {
                                throw new ClassCastException();
                            }
                            throw null;
                        }
                        if (arrayList2.size() <= 0) {
                            this.f901.remove(action);
                        }
                    }
                }
            }
        }
    }
}
