package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓭ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0601 extends C0951 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final AbstractC1031[] f2430;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC1031 f2431;

    public C0601(AbstractC1031 abstractC1031, String str, ArrayList arrayList, ArrayList arrayList2) {
        super(str, arrayList2);
        this.f2431 = abstractC1031;
        if (arrayList != null) {
            AbstractC1031[] abstractC1031Arr = new AbstractC1031[arrayList.size()];
            this.f2430 = abstractC1031Arr;
            arrayList.toArray(abstractC1031Arr);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m2143(AbstractC1031[] abstractC1031Arr, C0983 c0983, C0116 c0116) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC1031 abstractC1031 : abstractC1031Arr) {
            arrayList.add((Class) abstractC1031.m2420(c0983, c0116).f1193);
        }
        return arrayList;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0951, com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0601 c0601 = (C0601) obj;
        AbstractC1031 abstractC1031 = this.f2431;
        if (abstractC1031 == null ? c0601.f2431 == null : abstractC1031.equals(c0601.f2431)) {
            return Arrays.equals(this.f2430, c0601.f2430);
        }
        return false;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0951, com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        int iHashCode = super.hashCode() * 31;
        AbstractC1031 abstractC1031 = this.f2431;
        return Arrays.hashCode(this.f2430) + ((iHashCode + (abstractC1031 != null ? abstractC1031.hashCode() : 0)) * 31);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0951
    public final String toString() {
        return mo2144(this.f3388);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0951
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String mo2144(Object[] objArr) {
        return AbstractC0897.m2299("bA==\n", "ReQ50wUab6s=\n", new StringBuilder().append(this.f2431).append(StringFog.decrypt("Yg==\n", "TLuI3BpGTaE=\n")).append(this.f3389).append(this.f2430 != null ? AbstractC0897.m2299("RQ==\n", "e7U2rh+O0iE=\n", new StringBuilder().append(StringFog.decrypt("ng==\n", "op/kUFxDbEg=\n")).append(AbstractC1031.m2419(this.f2430))) : "").append(StringFog.decrypt("iw==\n", "o4zr7hxshgA=\n")).append(AbstractC1031.m2419(objArr)));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0951, com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C1014 c1014M2270;
        C0248 c0248M2401;
        ArrayList arrayList = new ArrayList();
        for (AbstractC1031 abstractC1031 : this.f3388) {
            arrayList.add(abstractC1031.m2420(c0983, c0116).f1193);
        }
        AbstractC1031 abstractC1032 = this.f2431;
        if ((abstractC1032 instanceof C3494s) && ((C3494s) abstractC1032).f380.equals(StringFog.decrypt("ljNVIJg=\n", "5UYlRepEH6o=\n"))) {
            C1014 c1014M2271 = c0116.f655.f2897.m2270(this.f3389);
            c1014M2271.getClass();
            C0248 c0248M2402 = c1014M2271.m2401(c0983, c0983.f3496, c0116, arrayList);
            c0248M2402.f1192 = false;
            return c0248M2402;
        }
        Object obj = this.f2431.m2420(c0983, c0116).f1193;
        if (obj instanceof InterfaceC0497) {
            return new C0248(((InterfaceC0497) obj).mo1855(c0116, this.f3389, arrayList, c0116.f651, c0983));
        }
        if (obj instanceof C0116) {
            synchronized (obj) {
                C0116 c0117 = (C0116) obj;
                String str = this.f3389;
                if (str != null) {
                    c1014M2270 = c0117.f655.m2270(str);
                } else {
                    c0117.getClass();
                    c1014M2270 = null;
                }
                if (c1014M2270 == null) {
                    throw new C0222(c0116, c0983, this.f3389, StringFog.decrypt("6ondl9jToVjKmNqMw52jAMKe25DFl+Q=\n", "r/uv+KrzxCA=\n") + this.f3389);
                }
                c0248M2401 = c1014M2270.m2401(c0983, c0117.f654.f3496, c0117, arrayList);
                c0248M2401.f1192 = false;
            }
            return c0248M2401;
        }
        try {
            AbstractC1031[] abstractC1031Arr = this.f2430;
            Method methodM2427 = abstractC1031Arr != null ? AbstractC1059.m2427(obj, this.f3389, m2143(abstractC1031Arr, c0983, c0116)) : AbstractC1059.m2428(obj, this.f3389, (List) arrayList);
            if (methodM2427 == null) {
                arrayList.add(0, obj);
                return new C0248(c0116.f653.mo1855(c0116, this.f3389, arrayList, c0116.f651, c0983));
            }
            if (!Modifier.isPublic(methodM2427.getDeclaringClass().getModifiers())) {
                try {
                    methodM2427.setAccessible(true);
                } catch (RuntimeException unused) {
                }
            }
            return new C0248(methodM2427.invoke(obj, arrayList.toArray()));
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new C0548(c0116, c0983, StringFog.decrypt("mhDPUDrpIwq6AchLIachUrIHyVcnrWY=\n", "32K9P0jJRnI=\n") + this, e);
        }
    }
}
