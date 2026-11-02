package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓯ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0603 extends AbstractC0993 {
    static {
        StringFog.decrypt("/DO4bIasEmzIIr5Dgbk=\n", "m1bMKu/eYRg=\n");
        StringFog.decrypt("KCXnJwBeZmkqJeEuMF5TTj4+7iIRSQ==\n", "S1eCRnQ7NQw=\n");
        StringFog.decrypt("oM6FKq7srNmz\n", "x6vxZcyGybo=\n");
        StringFog.decrypt("GExzo5dmK28LWg==\n", "fykH7PUMTgw=\n");
        StringFog.decrypt("2xDXQFyao3jIM8pqUpQ=\n", "vHWjDz7wxhs=\n");
        StringFog.decrypt("zasntjEkU87emDKVJis=\n", "qs5T+VNONq0=\n");
        StringFog.decrypt("93RTLSzitvnkV04HIuyg\n", "kBEnYk6I05o=\n");
        StringFog.decrypt("fbjXmJ7T8Ttui8K7idzn\n", "Gt2j1/y5lFg=\n");
        StringFog.decrypt("AIt8vKJKU+Uji3Cst3hT8g6AdQ==\n", "Z+4S2dArJ4A=\n");
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static ArrayList m2145(ArrayList arrayList) {
        Object objM2388;
        C0591 c0591;
        Class<?> cls;
        int size = arrayList.size();
        Class<?> cls2 = null;
        cls2 = null;
        Object objM2389 = null;
        if (size == 2) {
            if (arrayList.get(0) instanceof Class) {
                cls2 = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                objM2388 = null;
            } else {
                objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
                if (objM2388 != null) {
                    cls2 = objM2388.getClass();
                }
            }
            c0591 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
        } else if (size != 3) {
            c0591 = null;
            objM2388 = null;
        } else {
            if (arrayList.get(0) instanceof Class) {
                cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                if (arrayList.get(1) instanceof C0591) {
                    c0591 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
                } else {
                    objM2389 = AbstractC0993.m2388(arrayList, 1, Object.class);
                    c0591 = (C0591) AbstractC0993.m2388(arrayList, 2, C0591.class);
                }
            } else {
                objM2389 = AbstractC0993.m2388(arrayList, 0, Object.class);
                cls = objM2389.getClass();
                c0591 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
            }
            Object obj = objM2389;
            cls2 = cls;
            objM2388 = obj;
        }
        C0632 c0632 = C0793.m2275().f2974;
        c0632.getClass();
        ArrayList arrayList2 = new ArrayList();
        try {
            C0554 c0554 = C0793.m2275().f2975;
            ArrayList arrayList3 = new ArrayList();
            c0554.m2135(cls2, c0591, arrayList3);
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Field) it.next()).get(objM2388));
            }
        } catch (Throwable unused) {
            AbstractC0250.m1990(c0632.f2510, StringFog.decrypt("93UVtyNB/djGcw62NkE=\n", "sgdn2FFhmr0=\n") + c0591.f2363 + StringFog.decrypt("6ORHzkjXrIun/R4=\n", "yJA+vi33yvk=\n") + cls2 + StringFog.decrypt("uJDngE2b\n", "mPOL4T7oKuQ=\n"));
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cf A[Catch: all -> 0x00d4, TRY_LEAVE, TryCatch #0 {all -> 0x00d4, blocks: (B:27:0x00c3, B:29:0x00cf), top: B:33:0x00c3 }] */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Object m2146(ArrayList arrayList) {
        Object obj;
        Class<?> cls;
        Object objM2388;
        C0591 c0591;
        Object objM2389;
        C0632 c0632;
        Field fieldM2133;
        int size = arrayList.size();
        try {
            if (size != 2) {
                if (size != 3) {
                    if (size != 4) {
                        objM2389 = null;
                        cls = null;
                        objM2388 = null;
                        c0591 = null;
                    } else {
                        cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                        objM2388 = AbstractC0993.m2388(arrayList, 1, Object.class);
                        c0591 = (C0591) AbstractC0993.m2388(arrayList, 2, C0591.class);
                        objM2389 = AbstractC0993.m2388(arrayList, 3, Object.class);
                    }
                } else if (arrayList.get(0) instanceof Class) {
                    cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                    if (arrayList.get(1) instanceof C0591) {
                        c0591 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
                        objM2389 = AbstractC0993.m2388(arrayList, 2, Object.class);
                        objM2388 = null;
                    } else {
                        objM2388 = AbstractC0993.m2388(arrayList, 1, Object.class);
                        c0591 = (C0591) AbstractC0993.m2388(arrayList, 2, C0591.class);
                    }
                } else {
                    Object objM23810 = AbstractC0993.m2388(arrayList, 0, Object.class);
                    Class<?> cls2 = objM23810.getClass();
                    C0591 c0592 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
                    objM2389 = AbstractC0993.m2388(arrayList, 2, Object.class);
                    objM2388 = objM23810;
                    cls = cls2;
                    c0591 = c0592;
                }
                c0632 = C0793.m2275().f2974;
                c0632.getClass();
                fieldM2133 = C0793.m2275().f2975.m2133(cls, c0591);
                if (fieldM2133 != null) {
                    return fieldM2133.get(objM2388);
                }
                return objM2389;
            }
            if (arrayList.get(0) instanceof Class) {
                cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
                obj = null;
            } else {
                Object objM23811 = AbstractC0993.m2388(arrayList, 0, Object.class);
                if (objM23811 != null) {
                    obj = objM23811;
                    cls = objM23811.getClass();
                } else {
                    obj = objM23811;
                    cls = null;
                }
            }
            objM2388 = obj;
            c0591 = (C0591) AbstractC0993.m2388(arrayList, 1, C0591.class);
            fieldM2133 = C0793.m2275().f2975.m2133(cls, c0591);
            if (fieldM2133 != null) {
                return fieldM2133.get(objM2388);
            }
            return objM2389;
        } catch (Throwable unused) {
            AbstractC0250.m1990(c0632.f2510, StringFog.decrypt("XxJ71ZAW57xuFGDUhRY=\n", "GmAJuuI2gNk=\n") + c0591.f2363 + StringFog.decrypt("cW8gbO7XCrc+dnk=\n", "URtZHIv3bMU=\n") + cls + StringFog.decrypt("9nKDzJ2G\n", "1hHvre71rns=\n"));
            return null;
        }
        objM2389 = null;
        c0632 = C0793.m2275().f2974;
        c0632.getClass();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static String m2147(ArrayList arrayList) {
        int i = 0;
        if (arrayList.get(0) instanceof Class) {
            Class cls = (Class) AbstractC0993.m2388(arrayList, 0, Class.class);
            String str = (String) AbstractC0993.m2388(arrayList, 1, String.class);
            C0793.m2275().f2974.getClass();
            return C0632.m2159((Object) null, cls, str);
        }
        Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
        if (arrayList.get(1) instanceof List) {
            JSONArray jSONArray = new JSONArray((Collection) AbstractC0993.m2388(arrayList, 1, List.class));
            C0793.m2275().f2974.getClass();
            while (i < jSONArray.length()) {
                String strM2159 = C0632.m2159(objM2388, objM2388.getClass(), jSONArray.optString(i));
                if (strM2159 != null) {
                    return strM2159;
                }
                i++;
            }
            return null;
        }
        if (!(arrayList.get(1) instanceof JSONArray)) {
            String str2 = (String) AbstractC0993.m2388(arrayList, 1, String.class);
            C0793.m2275().f2974.getClass();
            return C0632.m2159(objM2388, objM2388.getClass(), str2);
        }
        JSONArray jSONArray2 = (JSONArray) AbstractC0993.m2388(arrayList, 1, JSONArray.class);
        C0793.m2275().f2974.getClass();
        if (jSONArray2 != null) {
            while (i < jSONArray2.length()) {
                String strM21510 = C0632.m2159(objM2388, objM2388.getClass(), jSONArray2.optString(i));
                if (strM21510 != null) {
                    return strM21510;
                }
                i++;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static ArrayList m2148(C0116 c0116, C0983 c0983, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (InterfaceC0792 interfaceC0792 : m2152(c0116, c0983, arrayList)) {
            if (interfaceC0792 != null) {
                arrayList2.add(((C0758) interfaceC0792).m2263());
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Object m2149(C0116 c0116, C0983 c0983, ArrayList arrayList) {
        InterfaceC0792 interfaceC0792M2164;
        Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
        C0373 c0373 = (C0373) AbstractC0993.m2388(arrayList, 1, C0373.class);
        List listM2389 = AbstractC0993.m2389(arrayList, 2);
        if (c0373 != null) {
            interfaceC0792M2164 = C0793.m2275().f2974.m2164(objM2388, c0373.f1824.m2260(new C0608(c0373, c0983, c0116, listM2389), null, c0373.f1822, c0373.f1821));
        } else {
            interfaceC0792M2164 = null;
        }
        if (interfaceC0792M2164 != null) {
            return ((C0758) interfaceC0792M2164).m2263();
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m2150(ArrayList arrayList) {
        Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
        List list = (List) AbstractC0993.m2388(arrayList, 1, List.class);
        int iIntValue = ((Integer) AbstractC0993.m2388(arrayList, 2, Integer.class)).intValue();
        C0793.m2275().f2974.getClass();
        return new C0190(list, iIntValue).m1940(objM2388);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0545 m2151(ArrayList arrayList) {
        return new C0545((List) AbstractC0993.m2388(arrayList, 0, List.class), ((Integer) AbstractC0993.m2388(arrayList, 1, Integer.class)).intValue());
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m2152(C0116 c0116, C0983 c0983, ArrayList arrayList) {
        Object objM2388 = AbstractC0993.m2388(arrayList, 0, Object.class);
        C0373 c0373 = (C0373) AbstractC0993.m2388(arrayList, 1, C0373.class);
        List listM2389 = AbstractC0993.m2389(arrayList, 2);
        if (c0373 == null) {
            return null;
        }
        C0724 c0724M2260 = c0373.f1824.m2260(new C0605(c0373, c0983, c0116, listM2389), null, c0373.f1822, c0373.f1821);
        C0632 c0632 = C0793.m2275().f2974;
        c0632.getClass();
        C0706 c0706 = new C0706(c0724M2260);
        c0706.f2656 = true;
        c0632.m2163(objM2388, c0706, 0, (C0758) null);
        return new ArrayList(c0706.f2654);
    }
}
