package com.google.android.gms.internal.p002firebaseauthapi;

import com.ironsource.C3510b4;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzana {
    private static final char[] zza;

    static {
        char[] cArr = new char[80];
        zza = cArr;
        Arrays.fill(cArr, ' ');
    }

    static String zza(zzamv zzamvVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ").append(str);
        zza(zzamvVar, sb, 0);
        return sb.toString();
    }

    private static void zza(int i, StringBuilder sb) {
        while (i > 0) {
            char[] cArr = zza;
            int length = i > cArr.length ? cArr.length : i;
            sb.append(cArr, 0, length);
            i -= length;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x020c  */
    /* JADX WARN: Code duplicated, block: B:101:0x020e  */
    /* JADX WARN: Code duplicated, block: B:103:0x021c  */
    /* JADX WARN: Code duplicated, block: B:131:0x021f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:132:0x021f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x016a  */
    /* JADX WARN: Code duplicated, block: B:59:0x0185  */
    /* JADX WARN: Code duplicated, block: B:61:0x018d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0192  */
    /* JADX WARN: Code duplicated, block: B:65:0x019b  */
    /* JADX WARN: Code duplicated, block: B:66:0x019e  */
    /* JADX WARN: Code duplicated, block: B:67:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:69:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:72:0x01af  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:77:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:82:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:84:0x01db  */
    /* JADX WARN: Code duplicated, block: B:85:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:87:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:88:0x01ed  */
    private static void zza(zzamv zzamvVar, StringBuilder sb, int i) {
        int i2;
        int i3;
        Method method;
        Method method2;
        Object objZza;
        boolean zBooleanValue;
        boolean zEquals;
        Method method3;
        Method method4;
        HashSet hashSet = new HashSet();
        HashMap map = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = zzamvVar.getClass().getDeclaredMethods();
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
                    zza(sb, i, strSubstring.substring(0, strSubstring.length() - 4), zzalt.zza(method4, zzamvVar, new Object[0]));
                }
                i2 = i3;
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map") && (method3 = (Method) entry.getValue()) != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                zza(sb, i, strSubstring.substring(0, strSubstring.length() - 3), zzalt.zza(method3, zzamvVar, new Object[0]));
            } else if (hashSet.contains("set" + strSubstring)) {
                if (!strSubstring.endsWith("Bytes")) {
                    method = (Method) entry.getValue();
                    method2 = (Method) map.get("has" + strSubstring);
                    if (method != null) {
                        objZza = zzalt.zza(method, zzamvVar, new Object[0]);
                        if (method2 == null) {
                            zBooleanValue = true;
                            if (objZza instanceof Boolean) {
                                if (((Boolean) objZza).booleanValue()) {
                                    zEquals = false;
                                } else {
                                    zEquals = true;
                                }
                            } else if (objZza instanceof Integer) {
                                if (((Integer) objZza).intValue() == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof Float) {
                                if (Float.floatToRawIntBits(((Float) objZza).floatValue()) == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof Double) {
                                if (Double.doubleToRawLongBits(((Double) objZza).doubleValue()) == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof String) {
                                zEquals = objZza.equals("");
                            } else if (objZza instanceof zzakb) {
                                zEquals = objZza.equals(zzakb.zza);
                            } else if (objZza instanceof zzamv) {
                                zEquals = false;
                            } else {
                                zEquals = false;
                            }
                            if (zEquals) {
                                zBooleanValue = false;
                            }
                        } else {
                            zBooleanValue = ((Boolean) zzalt.zza(method2, zzamvVar, new Object[0])).booleanValue();
                        }
                        if (zBooleanValue) {
                            zza(sb, i, strSubstring, objZza);
                        }
                    }
                } else if (!treeMap.containsKey("get" + strSubstring.substring(0, strSubstring.length() - 5))) {
                    method = (Method) entry.getValue();
                    method2 = (Method) map.get("has" + strSubstring);
                    if (method != null) {
                        objZza = zzalt.zza(method, zzamvVar, new Object[0]);
                        if (method2 == null) {
                            zBooleanValue = true;
                            if (objZza instanceof Boolean) {
                                if (((Boolean) objZza).booleanValue()) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof Integer) {
                                if (((Integer) objZza).intValue() == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof Float) {
                                if (Float.floatToRawIntBits(((Float) objZza).floatValue()) == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof Double) {
                                if (Double.doubleToRawLongBits(((Double) objZza).doubleValue()) == 0) {
                                    zEquals = true;
                                } else {
                                    zEquals = false;
                                }
                            } else if (objZza instanceof String) {
                                zEquals = objZza.equals("");
                            } else if (objZza instanceof zzakb) {
                                zEquals = objZza.equals(zzakb.zza);
                            } else if ((objZza instanceof zzamv) ? !((objZza instanceof Enum) && ((Enum) objZza).ordinal() == 0) : objZza != ((zzamv) objZza).zzg()) {
                                zEquals = false;
                            } else {
                                zEquals = true;
                            }
                            if (zEquals) {
                                zBooleanValue = false;
                            }
                        } else {
                            zBooleanValue = ((Boolean) zzalt.zza(method2, zzamvVar, new Object[0])).booleanValue();
                        }
                        if (zBooleanValue) {
                            zza(sb, i, strSubstring, objZza);
                        }
                    }
                }
            }
            i2 = i3;
        }
        if (zzamvVar instanceof zzalt.zzb) {
            Iterator<Map.Entry<T, Object>> itZzc = ((zzalt.zzb) zzamvVar).zzc.zzc();
            if (itZzc.hasNext()) {
                throw new NoSuchMethodError();
            }
        }
        zzalt zzaltVar = (zzalt) zzamvVar;
        if (zzaltVar.zzb != null) {
            zzaltVar.zzb.zza(sb, i);
        }
    }

    static void zza(StringBuilder sb, int i, String str, Object obj) {
        String strReplace;
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                zza(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                zza(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        zza(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char cCharAt = str.charAt(i2);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (!(obj instanceof String)) {
            if (obj instanceof zzakb) {
                sb.append(": \"").append(zzanw.zza(((zzakb) obj).zzc())).append('\"');
                return;
            }
            if (obj instanceof zzalt) {
                sb.append(" {");
                zza((zzalt) obj, sb, i + 2);
                sb.append("\n");
                zza(i, sb);
                sb.append("}");
                return;
            }
            if (!(obj instanceof Map.Entry)) {
                sb.append(": ").append(obj);
                return;
            }
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i3 = i + 2;
            zza(sb, i3, C3510b4.i.W, entry.getKey());
            zza(sb, i3, "value", entry.getValue());
            sb.append("\n");
            zza(i, sb);
            sb.append("}");
            return;
        }
        StringBuilder sbAppend = sb.append(": \"");
        String strReplace2 = (String) obj;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i4 = 0; i4 < strReplace2.length(); i4++) {
            char cCharAt2 = strReplace2.charAt(i4);
            if (cCharAt2 < ' ' || cCharAt2 > '~') {
                strReplace = zzanw.zza(strReplace2.getBytes(StandardCharsets.UTF_8));
                sbAppend.append(strReplace).append('\"');
            }
            if (cCharAt2 == '\"') {
                z3 = true;
            } else if (cCharAt2 == '\'') {
                z2 = true;
            } else if (cCharAt2 == '\\') {
                z = true;
            }
        }
        if (z) {
            strReplace2 = strReplace2.replace("\\", "\\\\");
        }
        if (z2) {
            strReplace2 = strReplace2.replace("'", "\\'");
        }
        strReplace = z3 ? strReplace2.replace("\"", "\\\"") : strReplace2;
        sbAppend.append(strReplace).append('\"');
    }
}
