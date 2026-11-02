package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ἲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0828 extends WeakHashMap implements InterfaceC0513 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0808 f3085;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0943 f3086;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0828(C0808 c0808, WeakHashMap weakHashMap, C0943 c0943) {
        super(weakHashMap);
        this.f3085 = c0808;
        this.f3086 = c0943;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        View view = (View) obj;
        WeakReference weakReference = (WeakReference) obj2;
        this.f3085.m2030(this, this.f3086, StringFog.decrypt("cnlFjjslR8ZrfVCMBSF1ynF5Qck9NXI=\n", "PBgx501ABqI=\n"), view, weakReference);
        return (WeakReference) super.put(view, weakReference);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0513
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1868() {
        return this;
    }
}
