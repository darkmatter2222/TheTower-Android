package com.ironsource.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import android.view.View;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0665 {

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static Field f2542;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static Field f2543;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static Field f2544;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static Field f2545;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static Object f2546;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static Class f2547;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f2559 = StringFog.decrypt("5FgCuZNIQzDRXwq4\n", "pTZmy/whJ2U=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f2558 = StringFog.decrypt("RIeACAaoZ6lloZ0/D69hsA==\n", "KcjuS2rBBMI=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f2557 = StringFog.decrypt("V6+icFrn7MR2ib9QUPzq3g==\n", "OuDMJDWSj6w=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f2556 = StringFog.decrypt("VYUv1aU5\n", "ONNGsNJKTZ4=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f2555 = StringFog.decrypt("SOVpj2IDS5xX4G6aeQ==\n", "JakA/BZmJfk=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2554 = StringFog.decrypt("+vco3uKXFJvz8Tk=\n", "nZJcl4zkYPo=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2553 = StringFog.decrypt("h4TyVDnFM7qMlQ==\n", "4OGGEFyjUs8=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2552 = StringFog.decrypt("fysxlec9vC17Fyu55z6h\n", "EmRf3Ilb02E=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2551 = StringFog.decrypt("IqlfWqRjX0oqklh2pUJGVTuDX3y5\n", "T+YxGcsOLyY=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f2550 = StringFog.decrypt("27wt/C4WQK3ElifgNQBEqdiWMQ==\n", "tvNDrFxzMMw=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f2549 = StringFog.decrypt("v+31B8UObw69z+s4xR9hAbvR7zHODnY=\n", "0qKbVKBrBE0=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f2548 = StringFog.decrypt("gQoIpnv9YvKNPgiw\n", "7EdtwhKcMp4=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View.OnTouchListener m2195(View view) {
        try {
            Object objM2197 = m2197(view);
            if (objM2197 == null) {
                return null;
            }
            Class<?> cls = objM2197.getClass();
            synchronized (AbstractC0129.class) {
                if (f2542 == null) {
                    f2542 = m2198(cls, f2557);
                }
            }
            return (View.OnTouchListener) f2542.get(objM2197);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static View.OnClickListener m2196(View view) {
        try {
            Object objM2197 = m2197(view);
            if (objM2197 == null) {
                return null;
            }
            Class<?> cls = objM2197.getClass();
            synchronized (AbstractC0129.class) {
                if (f2543 == null) {
                    f2543 = m2198(cls, f2558);
                }
            }
            return (View.OnClickListener) f2543.get(objM2197);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m2197(View view) {
        try {
            synchronized (AbstractC0129.class) {
                if (f2544 == null) {
                    f2544 = m2198(View.class, f2555);
                }
            }
            return f2544.get(view);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Field m2198(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Exception e) {
            AbstractC1071.m2435(f2559, StringFog.decrypt("DkvgP/nnPv1LXvckz6I0/wpL9zTNrjL/Dw==\n", "azmSUIvHV5M=\n"), (Throwable) e, false);
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ArrayList m2199() {
        try {
            if (f2547 == null || f2546 == null) {
                Class<?> cls = Class.forName(StringFog.decrypt("6WwITZwf5ZD+awlI3SHo0OxtG3KSGODZ7XArU5wU4NI=\n", "iAJsP/N2gb4=\n"));
                f2547 = cls;
                f2546 = cls.getMethod(f2554, null).invoke(null, null);
            }
            Class cls2 = f2547;
            Object obj = f2546;
            if (f2545 == null) {
                Field declaredField = cls2.getDeclaredField(f2556);
                f2545 = declaredField;
                declaredField.setAccessible(true);
            }
            Object obj2 = f2545.get(obj);
            if (obj2 instanceof List) {
                return new ArrayList((List) obj2);
            }
            return obj2 instanceof View[] ? new ArrayList(Arrays.asList((View[]) obj2)) : new ArrayList();
        } catch (Throwable th) {
            AbstractC0250.m1991(f2559, StringFog.decrypt("nEiIsEuxk3etTpOxXrGje7delah08Jpzvl+I/0/4kWWqANo=\n", "2Tr63zmR9BI=\n") + th.getLocalizedMessage());
            return new ArrayList();
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2200(MediaPlayer mediaPlayer, InterfaceC0133 interfaceC0133) {
        try {
            Field fieldM2198 = m2198(MediaPlayer.class, f2549);
            MediaPlayer.OnSeekCompleteListener onSeekCompleteListener = (MediaPlayer.OnSeekCompleteListener) fieldM2198.get(mediaPlayer);
            if (onSeekCompleteListener instanceof C0130) {
                return;
            }
            fieldM2198.set(mediaPlayer, new C0130(onSeekCompleteListener, interfaceC0133));
        } catch (Exception e) {
            AbstractC1071.m2435(f2559, StringFog.decrypt("koK+pGt8U9DXgqm7dT1Z27ien658N3nRmoCgrm05dteEhKmlfC4=\n", "9/DMyxlcOr4=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2201(MediaPlayer mediaPlayer, InterfaceC0148 interfaceC0148) {
        try {
            Field fieldM2198 = m2198(MediaPlayer.class, f2550);
            MediaPlayer.OnPreparedListener onPreparedListener = (MediaPlayer.OnPreparedListener) fieldM2198.get(mediaPlayer);
            if (onPreparedListener instanceof C0147) {
                return;
            }
            fieldM2198.set(mediaPlayer, new C0147(onPreparedListener, interfaceC0148));
        } catch (Exception e) {
            AbstractC1071.m2435(f2559, StringFog.decrypt("vhHpj5ZaACf7Ef6QiBsKLJQN1oWAEwgZqQbrgZYfDQWyEO+Fih8b\n", "22Ob4OR6aUk=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2202(MediaPlayer mediaPlayer, InterfaceC0157 interfaceC0157) {
        try {
            Field fieldM2198 = m2198(MediaPlayer.class, f2552);
            MediaPlayer.OnInfoListener onInfoListener = (MediaPlayer.OnInfoListener) fieldM2198.get(mediaPlayer);
            if (onInfoListener instanceof C0156) {
                return;
            }
            fieldM2198.set(mediaPlayer, new C0156(onInfoListener, interfaceC0157));
        } catch (Exception e) {
            AbstractC1071.m2435(f2559, StringFog.decrypt("Ruiq9klrnDwD6L3pVyqWN2z0lfxfIpQbTfy31VI4gTdN/6o=\n", "I5rYmTtL9VI=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2203(MediaPlayer mediaPlayer, InterfaceC0191 interfaceC0191) {
        try {
            Field fieldM2198 = m2198(MediaPlayer.class, f2551);
            MediaPlayer.OnCompletionListener onCompletionListener = (MediaPlayer.OnCompletionListener) fieldM2198.get(mediaPlayer);
            if (onCompletionListener instanceof C0161) {
                return;
            }
            fieldM2198.set(mediaPlayer, new C0161(onCompletionListener, interfaceC0191));
        } catch (Exception e) {
            AbstractC1071.m2435(f2559, StringFog.decrypt("9XwafQNsD/2wfA1iHS0F9t9gJXcVJQfQ/2MYfhQ4D/z+QgFhBSkI9uI=\n", "kA5oEnFMZpM=\n"), (Throwable) e, false);
        }
    }
}
