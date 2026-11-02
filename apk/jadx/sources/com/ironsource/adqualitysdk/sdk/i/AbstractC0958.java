package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮄ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0958 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f3399 = StringFog.decrypt("19d9H7XzYgQ=\n", "mbIJSsGaDnc=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static C0639 m2356(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestMethod(StringFog.decrypt("b08L\n", "KApfysevGmc=\n"));
            String str2 = AbstractC0129.f814;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            String strM2359 = m2359(httpURLConnection, (String) null);
            int responseCode = httpURLConnection.getResponseCode();
            String responseMessage = httpURLConnection.getResponseMessage();
            if (responseCode >= 400) {
                httpURLConnection.disconnect();
            }
            return new C0639(strM2359, responseCode, responseMessage, SystemClock.elapsedRealtime() - jElapsedRealtime);
        } catch (Throwable th) {
            String str3 = f3399;
            AbstractC0250.m1999(str3, str3, StringFog.decrypt("lAnx8ACp7oK/H+rxFan6gqVb8foD/PiUpUGj\n", "0XuDn3KJnec=\n") + th.getLocalizedMessage(), th, null, false);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0037  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0639 m2357(JSONObject jSONObject, String str, r rVar, Context context, boolean z) {
        byte[] bArrM2364;
        String str2;
        try {
            HttpURLConnection httpURLConnectionM2362 = m2362(str);
            if (z) {
                try {
                    C1096 c1096M2358 = m2358(httpURLConnectionM2362, jSONObject, str, rVar, context);
                    if (c1096M2358 != null) {
                        bArrM2364 = c1096M2358.f3864;
                        str2 = c1096M2358.f3863;
                    } else {
                        str2 = null;
                        bArrM2364 = null;
                    }
                } catch (Exception e) {
                    String str3 = f3399;
                    AbstractC0250.m1993(str3, str3, StringFog.decrypt("MNxMTtCrPZEa3A9PwrI5iBDWD1Pb+y+ZHN5KWIX7PIsc3Egc2bcokRuIDw==\n", "dbIvPKnbSfg=\n") + e.getMessage(), false);
                }
            } else {
                str2 = null;
                bArrM2364 = null;
            }
            if (bArrM2364 == null) {
                bArrM2364 = m2364(httpURLConnectionM2362, jSONObject);
            }
            String str4 = AbstractC0129.f814;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            httpURLConnectionM2362.connect();
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnectionM2362.getOutputStream());
            try {
                dataOutputStream.write(bArrM2364);
                dataOutputStream.flush();
                dataOutputStream.close();
                String strM2359 = m2359(httpURLConnectionM2362, str2);
                int responseCode = httpURLConnectionM2362.getResponseCode();
                String responseMessage = httpURLConnectionM2362.getResponseMessage();
                if (responseCode >= 400) {
                    httpURLConnectionM2362.disconnect();
                }
                return new C0639(strM2359, responseCode, responseMessage, SystemClock.elapsedRealtime() - jElapsedRealtime);
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                    throw th;
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            String str5 = f3399;
            AbstractC0250.m1999(str5, str5, StringFog.decrypt("VXBK7hLUCut+ZlHvB9QJ4WN2GPMFhQzrY3YCoQ==\n", "EAI4gWD0eY4=\n") + th3.getLocalizedMessage(), th3, null, false);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006c  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C1096 m2358(HttpURLConnection httpURLConnection, JSONObject jSONObject, String str, r rVar, Context context) throws UnsupportedEncodingException {
        String str2;
        C0227 c0227;
        if (rVar == null || context == null) {
            String strDecrypt = StringFog.decrypt("ZYkIYhAOJZFkiE5+BEs4oCuFR3kXDi+m\n", "C+YoF2NrV9I=\n");
            String str3 = f3399;
            AbstractC0250.m1999(str3, str3, AbstractC0270.m2002("8EmpC9fF7fPdS7UcyMXt5NZZsgDLxeG23UezRcvUo/LaRqBF0cX3tg==\n", "syjHZbixzZY=\n", new StringBuilder(), strDecrypt), null, null, true);
            return null;
        }
        String str4 = !TextUtils.isEmpty(rVar.f379) ? rVar.f379 : rVar.f378;
        if (str4 == null || str4.trim().isEmpty()) {
            String strDecrypt2 = StringFog.decrypt("7yX/CTjL+6f4arAaaNzRr+QDuw==\n", "gUrfaEi7sMI=\n");
            String str5 = f3399;
            AbstractC0250.m1999(str5, str5, AbstractC0270.m2002("8EmpC9fF7fPdS7UcyMXt5NZZsgDLxeG23UezRcvUo/LaRqBF0cX3tg==\n", "syjHZbixzZY=\n", new StringBuilder(), strDecrypt2), null, null, true);
            return null;
        }
        if (str == null || str.isEmpty()) {
            str2 = null;
        } else {
            try {
                String path = new URL(str).getPath();
                if (path == null || path.isEmpty()) {
                    str2 = null;
                } else {
                    String strReplaceFirst = path.replaceFirst(StringFog.decrypt("eu4=\n", "JMH8eLlTxGY=\n"), "");
                    int iLastIndexOf = strReplaceFirst.lastIndexOf(47);
                    if (iLastIndexOf >= 0) {
                        strReplaceFirst = strReplaceFirst.substring(iLastIndexOf + 1);
                    }
                    if (strReplaceFirst.isEmpty()) {
                        str2 = null;
                    } else {
                        str2 = strReplaceFirst;
                    }
                }
            } catch (MalformedURLException unused) {
            }
        }
        if (str2 == null || (c0227 = C0765.f2827.f2830) == null) {
            return null;
        }
        String string = UUID.randomUUID().toString();
        byte[] bytes = m2361(jSONObject).getBytes(StringFog.decrypt("KUIvcvM=\n", "fBZpX8uu+P4=\n"));
        C0693 c0693 = c0227.f1150;
        C1091 c1091 = c0227.f1154;
        c1091.getClass();
        try {
            byte[] bArrM2302 = c1091.f3830.m2302();
            C0258 c0258M2405 = c1091.f3831.m2405();
            byte[] bArr = new byte[12];
            c1091.f3831.f3595.nextBytes(bArr);
            long jCurrentTimeMillis = System.currentTimeMillis();
            byte[] bArrM2042 = AbstractC0304.m2042(bytes);
            byte[] bArrM2406 = c1091.f3831.m2406(c0258M2405.f1207, bArrM2302);
            byte[] bArr2 = C1016.f3589;
            byte[] bArr3 = new byte[bArr2.length + 3];
            System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
            bArr3[bArr2.length] = (byte) 0;
            bArr3[bArr2.length + 1] = (byte) 1;
            bArr3[bArr2.length + 2] = (byte) 2;
            byte[] bArrM2407 = c1091.f3831.m2407(bArrM2406, bArr, bArr3);
            byte[] bArrM2443 = c1091.m2443(str2, string, jCurrentTimeMillis, c0693);
            byte[] bArrM2442 = C1091.m2442(jCurrentTimeMillis, bArr, c0258M2405.f1206, bArrM2443, c1091.f3831.m2404(bArrM2407, bArr, bArrM2042, bArrM2443).f1209);
            c0227.f1157.getClass();
            C0308 c0308 = new C0308(string, bArrM2406, System.currentTimeMillis());
            C0680 c0680 = c0227.f1153;
            c0680.getClass();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            Iterator it = c0680.f2592.entrySet().iterator();
            while (it.hasNext()) {
                if (jCurrentTimeMillis2 - ((C0308) ((Map.Entry) it.next()).getValue()).f1548 > c0680.f2593) {
                    it.remove();
                }
            }
            c0680.f2592.put(c0308.f1550, c0308);
            httpURLConnection.setRequestProperty(StringFog.decrypt("1JV7iGKMXLjDg2WZ\n", "l/oV/AfiKJU=\n"), StringFog.decrypt("WMalV63JIg9Q2bsUq8k3Hk2bpk+2zyIW\n", "ObbVO8SqQ3s=\n"));
            httpURLConnection.setRequestProperty(StringFog.decrypt("bRVou1Vn\n", "LHYL3iUTYa4=\n"), StringFog.decrypt("VHelgWWYiO5caLvCY5id/0Eqppl+noj3\n", "NQfV7Qz76Zo=\n"));
            httpURLConnection.setRequestProperty(StringFog.decrypt("gaVbfg==\n", "+Yg0DUPJx6c=\n"), StringFog.decrypt("Lw==\n", "Tv6jjOyH3bg=\n"));
            httpURLConnection.setDoOutput(true);
            return new C1096(bArrM2442, string);
        } catch (Exception e) {
            throw new RuntimeException(StringFog.decrypt("r5Jc3K1S+m2G01fFoVq+OYydQ9WkWap8\n", "6fM1sMg22hk=\n"), e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2359(HttpURLConnection httpURLConnection, String str) {
        InputStream inputStream;
        BufferedReader bufferedReader;
        String string = null;
        if (str != null) {
            C0227 c0227 = C0765.f2827.f2830;
            if (c0227 == null) {
                AbstractC0250.m1992(f3399, StringFog.decrypt("Ny5DwbMpt38HT3L+8jy5ZA4OZfz2cfhuAwFp/+dqvGgBHX7g52qqaBEfaP7gL/hrDR0n4vY7rWgR\nG070rg==\n", "Ym8HkJNK2A0=\n") + str);
                return null;
            }
            try {
                if (httpURLConnection.getResponseCode() == 200) {
                    String strM2360 = m2360(httpURLConnection, str, c0227);
                    if (strM2360 != null) {
                        return strM2360;
                    }
                    AbstractC0250.m1992(f3399, StringFog.decrypt("gwb02f1vazymKN77uD1qKrU1yfipdGEh9iHR4bF4anT2NdX7rXJgPLNn0ue5ZC4mpWfe/bFxLmel\nM8LtvHAuLro11em5ZC4suSnD/bB4amY=\n", "1kewiN0dDk8=\n"));
                    return null;
                }
            } catch (IOException e) {
                String str2 = f3399;
                AbstractC0250.m1993(str2, str2, StringFog.decrypt("0yG110Q1WnahJ6nDTntKe+QnrYdNOkB/5CDqh14oQH3mZLbLSjJHM/Mhp8MRew==\n", "gUTGpytbKRM=\n") + e.getMessage(), false);
            }
        }
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (stringBuffer.length() > 0) {
                            stringBuffer.append('\r');
                        }
                        stringBuffer.append(line);
                    }
                    string = stringBuffer.toString();
                    m2363(inputStream);
                    m2363(bufferedReader);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    try {
                        String str3 = f3399;
                        AbstractC0250.m1999(str3, str3, StringFog.decrypt("ZhWUEtZkBCFXE48Tw2QRIVAXiRPXIQ==\n", "I2fmfaREY0Q=\n"), th2, null, false);
                    } finally {
                        m2363(inputStream);
                        m2363(bufferedReader);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                Throwable th4 = th;
                String str4 = f3399;
                AbstractC0250.m1999(str4, str4, StringFog.decrypt("ZhWUEtZkBCFXE48Tw2QRIVAXiRPXIQ==\n", "I2fmfaREY0Q=\n"), th4, null, false);
                return string;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStream = null;
        }
        return string;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2360(HttpURLConnection httpURLConnection, String str, C0227 c0227) {
        Throwable th;
        InputStream inputStream;
        Throwable th2;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            inputStream = httpURLConnection.getInputStream();
            try {
                int contentLength = httpURLConnection.getContentLength();
                if (contentLength <= 0) {
                    contentLength = 65536;
                }
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(contentLength);
                try {
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream2.write(bArr, 0, i);
                    }
                    byte[] bArrM1978 = c0227.m1978(byteArrayOutputStream2.toByteArray(), str);
                    if (bArrM1978 == null) {
                        AbstractC0250.m1992(f3399, StringFog.decrypt("fGpzyq4D+8RbUkfv3ALt10ZFRP6uFfvTXFlZ/upH8NJFRw==\n", "KSs3m45nnqc=\n"));
                        m2363(inputStream);
                        m2363(byteArrayOutputStream2);
                        return null;
                    }
                    String str2 = new String(bArrM1978, StringFog.decrypt("EoQOIC4=\n", "R9BIDRbZef0=\n"));
                    m2363(inputStream);
                    m2363(byteArrayOutputStream2);
                    return str2;
                } catch (Throwable th3) {
                    th2 = th3;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        String str3 = f3399;
                        AbstractC0250.m1992(str3, StringFog.decrypt("iOu9hvm+kZqtxZekvOyQjL7YgKetpZuH/cyYvrWpkNP9\n", "3ar519nM9Ok=\n") + th2.getMessage());
                        AbstractC0250.m1999(str3, str3, StringFog.decrypt("rZKU96zE2heclI/2ucvZF4uSn+iqjdMVyJKD666L0wGN\n", "6ODmmN7kvXI=\n"), th2, null, false);
                        return null;
                    } finally {
                        m2363(inputStream);
                        m2363(byteArrayOutputStream);
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                th2 = th;
                byteArrayOutputStream = null;
                String str4 = f3399;
                AbstractC0250.m1992(str4, StringFog.decrypt("iOu9hvm+kZqtxZekvOyQjL7YgKetpZuH/cyYvrWpkNP9\n", "3ar519nM9Ok=\n") + th2.getMessage());
                AbstractC0250.m1999(str4, str4, StringFog.decrypt("rZKU96zE2heclI/2ucvZF4uSn+iqjdMVyJKD666L0wGN\n", "6ODmmN7kvXI=\n"), th2, null, false);
                return null;
            }
        } catch (Throwable th5) {
            th = th5;
            inputStream = null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2361(JSONObject jSONObject) {
        String strM2087;
        String string = jSONObject.toString();
        String str = AbstractC0451.f2011;
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(AbstractC0451.f2010.getBytes(StringFog.decrypt("SJjpzOY=\n", "Hcyv4d6m3tA=\n")), mac.getAlgorithm()));
            strM2087 = AbstractC0413.m2087(mac.doFinal(string.replaceAll(" ", "").replaceAll("\n", "").getBytes(StringFog.decrypt("ZxWESdw=\n", "MkHCZOQTaF8=\n"))));
        } catch (Exception e) {
            AbstractC0250.m1990(AbstractC0451.f2011, StringFog.decrypt("bxR3fK+wiw==\n", "KmYFE92Kq74=\n") + e.getLocalizedMessage());
            strM2087 = null;
        }
        return AbstractC0897.m2299("pOU=\n", "hpgEAibVI2I=\n", AbstractC0662.m2192("4ZmqEPgP7g==\n", "zbvCY9o1zIQ=\n", new StringBuilder().append(string.substring(0, string.lastIndexOf(125))), strM2087));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static HttpURLConnection m2362(String str) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(StringFog.decrypt("ckl6yA==\n", "IgYpnLOJvVk=\n"));
        httpURLConnection.setRequestProperty(StringFog.decrypt("ddZN+3LlLQJiwFPq\n", "NrkjjxeLWS8=\n"), StringFog.decrypt("tDvvMALZ6Be8JPFzAcnmDe5r/DQKyPoGoXbqKA2XsQ==\n", "1UufXGu6iWM=\n"));
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setReadTimeout(60000);
        return httpURLConnection;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2363(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m2364(HttpURLConnection httpURLConnection, JSONObject jSONObject) throws Throwable {
        GZIPOutputStream gZIPOutputStream;
        Exception e;
        Throwable th;
        String strM2361 = m2361(jSONObject);
        byte[] bytes = strM2361.getBytes(StringFog.decrypt("JV67rvo=\n", "cAr9g8JFw+c=\n"));
        if (strM2361.length() <= 256) {
            return bytes;
        }
        httpURLConnection.setRequestProperty(StringFog.decrypt("uUKANueeYyq/Q40t5pl5YA==\n", "+i3uQoLwFwc=\n"), StringFog.decrypt("BdcDjw==\n", "Yq1q/4op9gM=\n"));
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.flush();
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (Exception e2) {
                e = e2;
                try {
                    throw new RuntimeException(e);
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream2 = gZIPOutputStream;
                    gZIPOutputStream = gZIPOutputStream2;
                    th = th;
                    if (gZIPOutputStream != null) {
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                if (gZIPOutputStream != null) {
                    gZIPOutputStream.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            gZIPOutputStream = null;
            e = e3;
        } catch (Throwable th4) {
            th = th4;
            gZIPOutputStream = gZIPOutputStream2;
            th = th;
            if (gZIPOutputStream != null) {
                gZIPOutputStream.close();
            }
            throw th;
        }
    }
}
