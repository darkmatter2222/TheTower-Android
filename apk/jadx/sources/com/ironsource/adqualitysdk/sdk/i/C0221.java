package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.unity3d.services.core.request.WebRequestEvent;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʾ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0221 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C3483m f1113;

    public C0221(C3483m c3483m) {
        this.f1113 = c3483m;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C3483m c3483m = this.f1113;
        byte b = 0;
        String str = (String) arrayList.get(0);
        c3483m.getClass();
        int iHashCode = str.hashCode();
        if (iHashCode != 183181625) {
            if (iHashCode == 2066319421 && str.equals(StringFog.decrypt("yYK+/6AK\n", "j8P3s+VO+DU=\n"))) {
                b = 1;
            } else {
                b = -1;
            }
        } else if (!str.equals(StringFog.decrypt("aa59pX3y9BA=\n", "KuEw9TG3oFU=\n"))) {
            b = -1;
        }
        if (b == 0) {
            return WebRequestEvent.COMPLETE;
        }
        if (b != 1) {
            return null;
        }
        return WebRequestEvent.FAILED;
    }
}
