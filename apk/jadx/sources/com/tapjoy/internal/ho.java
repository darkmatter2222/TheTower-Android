package com.tapjoy.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.tapjoy.TJContentActivity;
import com.tapjoy.TapjoyErrorMessage;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes5.dex */
public class ho extends hq {
    private static final String h = "ho";
    private static ho i;
    final String a;
    final ie b;
    private final hj j;
    private c k;
    private boolean l;
    private long m;
    private Context n;
    private boolean o = false;

    public ho(hj hjVar, String str, ie ieVar, Context context) {
        this.j = hjVar;
        this.a = str;
        this.b = ieVar;
        this.n = context;
    }

    public static void a() {
        ho hoVar = i;
        if (hoVar != null) {
            hoVar.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Activity activity, final hk hkVar, fy fyVar) {
        if (this.l) {
            TapjoyLog.e(h, new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.INTEGRATION_ERROR, "Content is already displayed"));
            return;
        }
        this.l = true;
        i = this;
        this.g = fyVar.a;
        c cVar = new c(activity);
        this.k = cVar;
        cVar.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.tapjoy.internal.ho.2
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                hkVar.d(ho.this.a);
            }
        });
        this.k.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.tapjoy.internal.ho.3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                String string;
                ho.d();
                hq.a(activity, ho.this.b.g);
                ho.this.j.a(ho.this.b.k, SystemClock.elapsedRealtime() - ho.this.m);
                if (!ho.this.d) {
                    hkVar.a(ho.this.a, ho.this.f, ho.this.b.h);
                }
                if (ho.this.o && ho.this.b.k != null && ho.this.b.k.containsKey("action_id") && (string = ho.this.b.k.get("action_id").toString()) != null && string.length() > 0) {
                    hj hjVar = ho.this.j;
                    if (hjVar.b != null) {
                        hs hsVar = hjVar.b;
                        String strA = hs.a();
                        String strA2 = hsVar.b.a();
                        String strA3 = hsVar.a.a();
                        if (strA3 == null || !strA.equals(strA3)) {
                            hsVar.a.a(strA);
                            strA2 = "";
                        }
                        if (strA2.length() != 0) {
                            string = !strA2.contains(string) ? strA2.concat(FacebookConstants.PLACEMENT_IDS_SEPARATOR.concat(String.valueOf(string))) : strA2;
                        }
                        hsVar.b.a(string);
                    }
                }
                Activity activity2 = activity;
                if (activity2 instanceof TJContentActivity) {
                    activity2.finish();
                }
            }
        });
        this.k.setCanceledOnTouchOutside(false);
        iz izVar = new iz(activity, this.b, new ja(activity, this.b, new ja.a() { // from class: com.tapjoy.internal.ho.4
            @Override // com.tapjoy.internal.ja.a
            public final void a() {
                ho.this.k.cancel();
            }

            @Override // com.tapjoy.internal.ja.a
            public final void a(ic icVar) {
                fw fwVar;
                if ((ho.this.g instanceof fw) && (fwVar = (fw) ho.this.g) != null && fwVar.b != null) {
                    fwVar.b.a();
                }
                ho.this.j.a(ho.this.b.k, icVar.b);
                hq.a(activity, icVar.d);
                if (!TextUtils.isEmpty(icVar.e)) {
                    ho.this.e.a(activity, icVar.e, gs.b(icVar.f));
                    ho.this.d = true;
                }
                hkVar.a(ho.this.a, icVar.g);
                if (icVar.c) {
                    ho.this.k.dismiss();
                }
            }

            @Override // com.tapjoy.internal.ja.a
            public final void b() {
                ho hoVar = ho.this;
                hoVar.o = !hoVar.o;
            }
        }));
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.addView(izVar, new FrameLayout.LayoutParams(-2, -2, 17));
        this.k.setContentView(frameLayout);
        this.k.show();
        this.k.a();
        if ((activity.getWindow().getAttributes().flags & 1024) != 0) {
            this.k.getWindow().setFlags(1024, 1024);
        }
        this.m = SystemClock.elapsedRealtime();
        this.j.a(this.b.k);
        fyVar.b();
        fs fsVar = this.g;
        if (fsVar != null) {
            fsVar.b();
        }
        hkVar.c(this.a);
    }

    static /* synthetic */ ho d() {
        i = null;
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        c cVar = this.k;
        if (cVar != null) {
            cVar.dismiss();
        }
    }

    @Override // com.tapjoy.internal.hq
    public final void a(final hk hkVar, final fy fyVar) {
        Activity activityA = a.a(this.n);
        if (activityA != null && !activityA.isFinishing()) {
            try {
                a(activityA, hkVar, fyVar);
                new Object[]{this.a};
                return;
            } catch (WindowManager.BadTokenException unused) {
            }
        }
        Activity activityA2 = hb.a();
        boolean z = false;
        if (activityA2 != null && (activityA2.getWindow().getAttributes().flags & 1024) != 0) {
            z = true;
        }
        try {
            TJContentActivity.start(hj.a().e, new TJContentActivity.AbstractContentProducer() { // from class: com.tapjoy.internal.ho.1
                @Override // com.tapjoy.TJContentActivity.AbstractContentProducer, com.tapjoy.TJContentActivity.ContentProducer
                public final void dismiss(Activity activity) {
                    ho.this.e();
                }

                @Override // com.tapjoy.TJContentActivity.ContentProducer
                public final void show(Activity activity) {
                    try {
                        ho.this.a(activity, hkVar, fyVar);
                    } catch (WindowManager.BadTokenException unused2) {
                        hg.b("Failed to show the content for \"{}\" caused by invalid activity", ho.this.a);
                        hkVar.a(ho.this.a, ho.this.f, null);
                    }
                }
            }, z);
            new Object[]{this.a};
        } catch (ActivityNotFoundException unused2) {
            if (activityA2 != null && !activityA2.isFinishing()) {
                try {
                    a(activityA2, hkVar, fyVar);
                    new Object[]{this.a};
                    return;
                } catch (WindowManager.BadTokenException unused3) {
                    hg.b("Failed to show the content for \"{}\" caused by no registration of TJContentActivity", this.a);
                    hkVar.a(this.a, this.f, null);
                }
            }
            hg.b("Failed to show the content for \"{}\" caused by no registration of TJContentActivity", this.a);
            hkVar.a(this.a, this.f, null);
        }
    }

    @Override // com.tapjoy.internal.hq
    public final void b() throws Throwable {
        ie ieVar = this.b;
        if (ieVar.a != null) {
            ieVar.a.b();
        }
        if (ieVar.b != null) {
            ieVar.b.b();
        }
        ieVar.c.b();
        if (ieVar.e != null) {
            ieVar.e.b();
        }
        if (ieVar.f != null) {
            ieVar.f.b();
        }
        if (ieVar.m == null || ieVar.m.a == null) {
            return;
        }
        ieVar.m.a.b();
    }

    @Override // com.tapjoy.internal.hq
    public final boolean c() {
        ie ieVar = this.b;
        if (ieVar.c == null || ieVar.c.b == null) {
            return false;
        }
        if (ieVar.m != null && ieVar.m.a != null && ieVar.m.a.b == null) {
            return false;
        }
        if (ieVar.b == null || ieVar.f == null || ieVar.b.b == null || ieVar.f.b == null) {
            return (ieVar.a == null || ieVar.e == null || ieVar.a.b == null || ieVar.e.b == null) ? false : true;
        }
        return true;
    }
}
