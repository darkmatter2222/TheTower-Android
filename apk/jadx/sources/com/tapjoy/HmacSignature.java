package com.tapjoy;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import com.ironsource.C3510b4;
import java.util.Map;
import java.util.TreeSet;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public class HmacSignature {
    private String a;
    private String b;

    public HmacSignature(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    private static String a(Map<String, String> map) {
        TreeSet<String> treeSet = new TreeSet(map.keySet());
        StringBuilder sb = new StringBuilder();
        for (String str : treeSet) {
            sb.append(str + C3510b4.j.b + map.get(str) + C3510b4.j.c);
        }
        sb.deleteCharAt(sb.lastIndexOf(C3510b4.j.c));
        TapjoyLog.v("HmacSignature", "Unhashed String: " + sb.toString());
        return sb.toString();
    }

    public boolean matches(String str, Map<String, String> map, String str2) {
        return sign(str, map).equals(str2);
    }

    public String sign(String str, Map<String, String> map) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(this.b.getBytes(), this.a);
            Mac mac = Mac.getInstance(this.a);
            mac.init(secretKeySpec);
            Uri uri = Uri.parse(str);
            String str2 = uri.getScheme() + "://" + uri.getHost();
            if ((!uri.getScheme().equals(ProxyConfig.MATCH_HTTP) || uri.getPort() != 80) && ((!uri.getScheme().equals("https") || uri.getPort() != 443) && -1 != uri.getPort())) {
                str2 = str2 + ":" + uri.getPort();
            }
            String str3 = "POST&" + Uri.encode(str2.toLowerCase() + uri.getPath()) + C3510b4.j.c + Uri.encode(a(map));
            TapjoyLog.v("HmacSignature", "Base Url: ".concat(String.valueOf(str3)));
            byte[] bArrDoFinal = mac.doFinal(str3.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDoFinal) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
