package kotlin;

import com.ironsource.C3510b4;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
abstract class vw1 {
    private static final char[] a;

    static {
        char[] cArr = new char[80];
        a = cArr;
        Arrays.fill(cArr, ' ');
    }

    public static String a(tw1 tw1Var, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ").append(str);
        a(tw1Var, sb, 0);
        return sb.toString();
    }

    private static String a(String str) {
        if (str.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Character.toLowerCase(str.charAt(0)));
        for (int i = 1; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    private static void a(int i, StringBuilder sb) {
        while (i > 0) {
            char[] cArr = a;
            int length = i > cArr.length ? cArr.length : i;
            sb.append(cArr, 0, length);
            i -= length;
        }
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0171  */
    /* JADX WARN: Code duplicated, block: B:65:0x018c  */
    /* JADX WARN: Code duplicated, block: B:67:0x0194  */
    /* JADX WARN: Code duplicated, block: B:70:0x019b  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:90:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0147 A[SYNTHETIC] */
    private static void a(tw1 tw1Var, StringBuilder sb, int i) {
        int i2;
        int i3;
        Method method;
        Method method2;
        Object objA;
        Method method3;
        Method method4;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = tw1Var.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i4 = 0;
        while (true) {
            i2 = 3;
            if (i4 >= length) {
                break;
            }
            Method method5 = declaredMethods[i4];
            if (!Modifier.isStatic(method5.getModifiers()) && method5.getName().length() >= 3) {
                if (method5.getName().startsWith("set")) {
                    hashSet.add(method5.getName());
                } else if (Modifier.isPublic(method5.getModifiers()) && method5.getParameterTypes().length == 0) {
                    if (method5.getName().startsWith("has")) {
                        map.put(method5.getName(), method5);
                    } else if (method5.getName().startsWith("get")) {
                        treeMap.put(method5.getName(), method5);
                    }
                }
            }
            i4++;
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String strSubstring = ((String) entry.getKey()).substring(i2);
            if (!strSubstring.endsWith("List") || strSubstring.endsWith("OrBuilderList") || strSubstring.equals("List") || (method4 = (Method) entry.getValue()) == null) {
                i3 = i2;
            } else {
                i3 = i2;
                if (method4.getReturnType().equals(List.class)) {
                    a(sb, i, strSubstring.substring(0, strSubstring.length() - 4), vz0.a(method4, tw1Var, new Object[0]));
                }
                i2 = i3;
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method3 = (Method) entry.getValue()) != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(java.lang.Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                a(sb, i, strSubstring.substring(0, strSubstring.length() - 3), vz0.a(method3, tw1Var, new Object[0]));
            } else if (hashSet.contains("set" + strSubstring)) {
                if (!strSubstring.endsWith("Bytes")) {
                    method = (Method) entry.getValue();
                    method2 = (Method) map.get("has" + strSubstring);
                    if (method != null) {
                        objA = vz0.a(method, tw1Var, new Object[0]);
                        if (method2 == null) {
                            if (!a(objA)) {
                                a(sb, i, strSubstring, objA);
                            }
                        } else if (((Boolean) vz0.a(method2, tw1Var, new Object[0])).booleanValue()) {
                            a(sb, i, strSubstring, objA);
                        }
                    }
                } else if (!treeMap.containsKey("get" + strSubstring.substring(0, strSubstring.length() - 5))) {
                    method = (Method) entry.getValue();
                    method2 = (Method) map.get("has" + strSubstring);
                    if (method != null) {
                        objA = vz0.a(method, tw1Var, new Object[0]);
                        if (method2 == null) {
                            if (!a(objA)) {
                                a(sb, i, strSubstring, objA);
                            }
                        } else if (((Boolean) vz0.a(method2, tw1Var, new Object[0])).booleanValue()) {
                            a(sb, i, strSubstring, objA);
                        }
                    }
                }
            }
            i2 = i3;
        }
        zv3 zv3Var = ((vz0) tw1Var).b;
        if (zv3Var != null) {
            zv3Var.a(sb, i);
        }
    }

    public static void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        a(i, sb);
        sb.append(a(str));
        if (obj instanceof String) {
            sb.append(": \"").append(co3.a((String) obj)).append('\"');
            return;
        }
        if (obj instanceof du) {
            sb.append(": \"").append(co3.a((du) obj)).append('\"');
            return;
        }
        if (obj instanceof vz0) {
            sb.append(" {");
            a((vz0) obj, sb, i + 2);
            sb.append("\n");
            a(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ").append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i2 = i + 2;
        a(sb, i2, C3510b4.i.W, entry.getKey());
        a(sb, i2, "value", entry.getValue());
        sb.append("\n");
        a(i, sb);
        sb.append("}");
    }

    private static boolean a(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() == 0;
        }
        if (obj instanceof Float) {
            return Float.floatToRawIntBits(((Float) obj).floatValue()) == 0;
        }
        if (obj instanceof Double) {
            return Double.doubleToRawLongBits(((Double) obj).doubleValue()) == 0;
        }
        if (obj instanceof String) {
            return obj.equals("");
        }
        if (obj instanceof du) {
            return obj.equals(du.b);
        }
        if (obj instanceof tw1) {
            return obj == ((tw1) obj).getDefaultInstanceForType();
        }
        return (obj instanceof Enum) && ((Enum) obj).ordinal() == 0;
    }
}
