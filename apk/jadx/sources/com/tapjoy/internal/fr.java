package com.tapjoy.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.tapjoy.TJPlacement;
import com.tapjoy.TJPlacementListener;
import com.tapjoy.TJPlacementManager;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class fr extends hd implements Observer {
    private boolean d;
    private final Map<String, Integer> b = new HashMap();
    private final fk c = new fk();
    private final gc<Void> e = new gc<Void>() { // from class: com.tapjoy.internal.fr.1
        @Override // com.tapjoy.internal.gc
        protected final /* synthetic */ TJPlacement a(Context context, TJPlacementListener tJPlacementListener, Void r4) {
            return TJPlacementManager.createPlacement(context, "AppLaunch", true, tJPlacementListener);
        }

        @Override // com.tapjoy.internal.gc
        protected final /* bridge */ /* synthetic */ String a(Void r1) {
            return "AppLaunch";
        }

        @Override // com.tapjoy.internal.gc
        protected final boolean a() {
            return super.a() && !hu.c();
        }
    };

    static {
        hd.a = new fr();
    }

    private fr() {
    }

    public static void a() {
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0049  */
    /* JADX WARN: Code duplicated, block: B:25:0x0055  */
    @Override // com.tapjoy.internal.hd
    public final void a(Activity activity) {
        int taskId;
        Intent intent;
        Set<String> categories;
        ComponentName component;
        if (activity != null && (taskId = activity.getTaskId()) != -1 && (intent = activity.getIntent()) != null && (categories = intent.getCategories()) != null && categories.contains("android.intent.category.LAUNCHER") && "android.intent.action.MAIN".equals(intent.getAction()) && (component = intent.getComponent()) != null) {
            Integer numPut = this.b.put(component.getClassName(), Integer.valueOf(taskId));
            if (numPut == null || numPut.intValue() != taskId) {
                this.e.c(null);
            } else if (!this.d) {
                this.e.c(null);
            }
        } else if (!this.d && this.c.a()) {
            this.e.c(null);
        }
        this.d = true;
    }

    @Override // java.util.Observer
    public final void update(Observable observable, Object obj) {
        fu.a aVar = fu.d;
    }
}
