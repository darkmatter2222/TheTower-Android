package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1019 extends AbstractC0993 {
    static {
        StringFog.decrypt("1Is7\n", "uu5MAX5exXU=\n");
        StringFog.decrypt("xzl3jg==\n", "pFEW/KBAn2A=\n");
        StringFog.decrypt("f/9LLbbNpZp7\n", "Ho05TM+Z3Oo=\n");
        StringFog.decrypt("+UfexCajodjlaNHVLbiN\n", "liW0oUXX6bk=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m2411(C0116 c0116, ArrayList arrayList) {
        Class cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 1) {
            arrayList2 = (List) AbstractC0993.m2388(arrayList, 1, List.class);
        }
        Constructor<?> constructor = null;
        List list = arrayList.size() > 2 ? (List) AbstractC0993.m2388(arrayList, 2, List.class) : null;
        try {
            if (list != null) {
                Class<?>[] clsArr = new Class[list.size()];
                list.toArray(clsArr);
                String str = AbstractC1059.f3785;
                return cls.getConstructor(clsArr).newInstance(arrayList2.toArray());
            }
            String str2 = AbstractC1059.f3785;
            for (Constructor<?> constructor2 : cls.getConstructors()) {
                if (constructor2.getParameterTypes().length == arrayList2.size() && AbstractC1059.m2430(constructor2.getParameterTypes(), arrayList2)) {
                    constructor = constructor2;
                    break;
                }
            }
            return constructor.newInstance(arrayList2.toArray());
        } catch (Exception e) {
            throw new C0548(c0116, c0116.f654, StringFog.decrypt("JWxGuEkxJVkFf0C+VXZmRQVpFA==\n", "YB401zsRRis=\n") + cls.getName() + StringFog.decrypt("JffiRrcvKRli86s=\n", "BYCLMt8PSGs=\n") + arrayList2 + (list != null ? StringFog.decrypt("yZssxt9z7uCaiSfR3w==\n", "6fpCov8QgoE=\n") + list : ""), e);
        }
    }
}
