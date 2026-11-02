package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class B0 extends AbstractC0306 implements z0, View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f90 = StringFog.decrypt("mlWG1Ny8dteoS6nU+6pO2qFZmg==\n", "zTzosLPLIL4=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public A0 f91;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final WeakHashMap f92;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public Class f93;

    public B0(JSONObject jSONObject) {
        super(null);
        this.f92 = new WeakHashMap();
        this.f91 = new A0();
        m1819(jSONObject);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static View m1811(View view, Class cls) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (cls.isAssignableFrom(childAt.getClass())) {
                return childAt;
            }
            View viewM1811 = m1811(childAt, cls);
            if (viewM1811 != null) {
                return viewM1811;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static View m1812(View view, String str) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getClass().getName().startsWith(str)) {
                return childAt;
            }
            View viewM1812 = m1812(childAt, str);
            if (viewM1812 != null) {
                return viewM1812;
            }
        }
        return null;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            View viewM1811 = m1811(view, this.f93);
            if (viewM1811 != null) {
                if (!this.f92.containsKey(viewM1811)) {
                    this.f92.put(viewM1811, Boolean.TRUE);
                    m2047(new JSONObject(), (Object) viewM1811, Integer.toHexString(viewM1811.hashCode()));
                }
                view.removeOnLayoutChangeListener(this);
            }
        } catch (Throwable th) {
            AbstractC1071.m2435(f90, StringFog.decrypt("tEghermU+/zRVT1Zqs3954V5O3Sl0/c=\n", "8TpTFcu0kpI=\n"), th, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final View mo1813(Object obj) {
        return (View) obj;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractViewOnLayoutChangeListenerC3462b0 mo1814() {
        return new C3466d0();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void mo1815(View view) {
        View viewM1811 = m1811(view, this.f93);
        if (viewM1811 == null || this.f92.remove(viewM1811) == null) {
            return;
        }
        m2044(view);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void mo1816(Object obj, ArrayList arrayList) {
        View view = (View) obj;
        A0 a0 = this.f91;
        C.m1820(view, WebView.class, a0.f78, true, false, null, a0.f1583, arrayList);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0306
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final InterfaceC0522 mo1817() {
        return this;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.z0
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1818(View view) {
        View viewM1812;
        View viewM1811 = m1811(view, this.f93);
        if (viewM1811 != null) {
            if (this.f92.containsKey(viewM1811)) {
                return;
            }
            this.f92.put(viewM1811, Boolean.TRUE);
            m2047(new JSONObject(), (Object) viewM1811, Integer.toHexString(viewM1811.hashCode()));
            return;
        }
        if (TextUtils.isEmpty(this.f91.f77) || (viewM1812 = m1812(view, this.f91.f77)) == null) {
            return;
        }
        viewM1812.addOnLayoutChangeListener(this);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1819(JSONObject jSONObject) {
        A0 a0 = new A0(jSONObject);
        this.f1543 = a0;
        this.f91 = a0;
        try {
            this.f93 = Class.forName(a0.f79);
            C0733.m2256().m2258(this);
        } catch (ClassNotFoundException e) {
            AbstractC0250.m1991(f90, StringFog.decrypt("5Ubmw50Y14TTQPHChlbczdRbtMmZXdWZ0xTy3oBVmw==\n", "oDSUrO84u+0=\n") + a0.f79 + StringFog.decrypt("QTY=\n", "exYdKr5hjjA=\n") + e.getLocalizedMessage());
        }
    }
}
