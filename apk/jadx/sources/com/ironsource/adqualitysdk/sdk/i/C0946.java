package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Method;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0946 extends AbstractC0993 {
    static {
        StringFog.decrypt("FsuqCc9SXT4V\n", "ca7eRKomNVE=\n");
        StringFog.decrypt("tGsYjdvGCEe3fQ==\n", "0w5swL6yYCg=\n");
        StringFog.decrypt("cn1YFDSUPsxlZ1IRBJQV62RmURElgw==\n", "EQ89dUDxc6k=\n");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static ArrayList m2309(ArrayList arrayList) {
        C0982 c0982 = (C0982) AbstractC0993.m2388(arrayList, 1, C0982.class);
        return arrayList.get(0) instanceof Class ? AbstractC0960.m2365((Class) AbstractC0993.m2388(arrayList, 0, Class.class), c0982) : AbstractC0960.m2365(AbstractC0993.m2388(arrayList, 0, Object.class).getClass(), c0982);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0996 m2310() {
        return new C0996();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m2311(ArrayList arrayList) {
        C0982 c0982 = (C0982) AbstractC0993.m2388(arrayList, 1, C0982.class);
        if (arrayList.get(0) instanceof Class) {
            ArrayList arrayListM2365 = AbstractC0960.m2365((Class) AbstractC0993.m2388(arrayList, 0, Class.class), c0982);
            if (arrayListM2365.isEmpty()) {
                return null;
            }
            return (Method) arrayListM2365.get(0);
        }
        ArrayList arrayListM2366 = AbstractC0960.m2365(AbstractC0993.m2388(arrayList, 0, Object.class).getClass(), c0982);
        if (arrayListM2366.isEmpty()) {
            return null;
        }
        return (Method) arrayListM2366.get(0);
    }
}
