package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.VideoView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹲ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0983 {

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public int f3490;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final HashSet f3491;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public ArrayList f3492;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public C0116 f3493;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C1014 f3494;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C0983 f3495;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0983 f3496;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0983 f3497;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final HashMap f3498;

    public C0983() {
        this.f3492 = new ArrayList();
        this.f3491 = new HashSet();
        this.f3490 = 0;
        this.f3498 = new HashMap();
        this.f3497 = null;
        this.f3496 = null;
    }

    public C0983(HashMap map, C0983 c0983, C1014 c1014, C0983 c0984, boolean z) {
        this.f3492 = new ArrayList();
        this.f3491 = new HashSet();
        this.f3490 = 0;
        if (map != null) {
            this.f3498 = new HashMap(map);
        } else {
            this.f3498 = new HashMap();
        }
        this.f3497 = c0983;
        if (z || c0983 == null) {
            this.f3496 = this;
        } else {
            this.f3496 = c0983.f3496;
        }
        this.f3494 = c1014;
        this.f3495 = c0984;
        this.f3493 = c0984 != null ? c0984.f3493 : c0983 != null ? c0983.f3493 : null;
    }

    public C0983(HashMap map, C0983 c0983, boolean z) {
        this(map, c0983, c0983 != null ? c0983.f3494 : null, c0983 != null ? c0983.f3495 : null, z);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0983 m2380() {
        C0983 c0983 = new C0983();
        c0983.m2384(StringFog.decrypt("sRnXTr6j\n", "4mCkOtvO9jM=\n"), System.class);
        c0983.m2384(StringFog.decrypt("cdUD0FKA\n", "PrdptTH0XNY=\n"), Object.class);
        c0983.m2384(StringFog.decrypt("a896SS8=\n", "KKMbOlwscr0=\n"), Class.class);
        c0983.m2384(StringFog.decrypt("sOZe1AM=\n", "9o87uGcwiDM=\n"), Field.class);
        c0983.m2384(StringFog.decrypt("W3vgBw/E\n", "CA+SbmGjg+8=\n"), String.class);
        c0983.m2384(StringFog.decrypt("o7cr5OHCiGuFsSnz\n", "4N9KlrKn+R4=\n"), CharSequence.class);
        c0983.m2384(StringFog.decrypt("1YGAEZ+dCXfusZoEq5soYuWdlRk=\n", "l/j0dN7vexY=\n"), ByteArrayInputStream.class);
        c0983.m2384(StringFog.decrypt("ZsOp2ATqTJNVypT6KOVR\n", "IZngiE2EPOY=\n"), GZIPInputStream.class);
        c0983.m2384(StringFog.decrypt("xQMGCZGbIG/+NQcYoJwmXfMIFw29\n", "h3pybNDpUg4=\n"), ByteArrayOutputStream.class);
        c0983.m2384(StringFog.decrypt("1L0kBdTdbk/uvTMe\n", "h8lWbLq6OT0=\n"), StringWriter.class);
        c0983.m2384(StringFog.decrypt("P1/Kk+bbNAQTUNe09+kkEwQ=\n", "djG65pKIQHY=\n"), InputStreamReader.class);
        c0983.m2384(StringFog.decrypt("cNCl9jz+XM5Z9w==\n", "OoPquHOcNqs=\n"), JSONObject.class);
        c0983.m2384(StringFog.decrypt("GLdSlL3+XUcr\n", "UuQd2vyMLyY=\n"), JSONArray.class);
        c0983.m2384(StringFog.decrypt("SRUKKNwmRK9u\n", "HXByXIlSLcM=\n"), TextUtils.class);
        c0983.m2384(StringFog.decrypt("RiS+iE8IVQ==\n", "C0XK6ydtJ/s=\n"), Matcher.class);
        c0983.m2384(StringFog.decrypt("3Z1xERwXuw==\n", "jfwFZXll1YU=\n"), Pattern.class);
        c0983.m2384(StringFog.decrypt("eGCaePpw+Q==\n", "Og/1FJ8Rl1Q=\n"), Boolean.class);
        c0983.m2384(StringFog.decrypt("e1+vu7ifcWtK\n", "ODfOydn8BQ4=\n"), Character.class);
        c0983.m2384(StringFog.decrypt("PqPHXQ==\n", "fNqzOFvnRwE=\n"), Byte.class);
        c0983.m2384(StringFog.decrypt("bnJ3R3Q=\n", "PRoYNQDDpAU=\n"), Short.class);
        c0983.m2384(StringFog.decrypt("Pn5nV5FCqg==\n", "dxATMvYn2Bs=\n"), Integer.class);
        c0983.m2384(StringFog.decrypt("XSRFFQ==\n", "EUsrcnBIKfc=\n"), Long.class);
        c0983.m2384(StringFog.decrypt("G2pKxWs=\n", "XQYlpB/NM1s=\n"), Float.class);
        c0983.m2384(StringFog.decrypt("hxSin703\n", "w3vX/dFSZqY=\n"), Double.class);
        c0983.m2384(StringFog.decrypt("2yHF\n", "jnOMFhcMhVs=\n"), URI.class);
        c0983.m2384(StringFog.decrypt("DFTt\n", "WSaEZrPnAHM=\n"), Uri.class);
        c0983.m2384(StringFog.decrypt("wzbe\n", "lmSSmif6ssI=\n"), URL.class);
        c0983.m2384(StringFog.decrypt("zLfAg1bzZPnKpMK7V/9s5es=\n", "mcWs0iOWFoA=\n"), UrlQuerySanitizer.class);
        c0983.m2384(StringFog.decrypt("ULFGsy8npaNx\n", "Btgi1kBxzMY=\n"), VideoView.class);
        c0983.m2384(StringFog.decrypt("2lvWkbn1nN/uW8A=\n", "lz6y+Nil8L4=\n"), MediaPlayer.class);
        c0983.m2384(StringFog.decrypt("6SW/XSaSTA==\n", "vkDdC0/3O84=\n"), WebView.class);
        c0983.m2384(StringFog.decrypt("a/eCL7fOgyBC8Jc=\n", "LYXjQtKC4lk=\n"), FrameLayout.class);
        c0983.m2384(StringFog.decrypt("JZc6a8rceOUYlTU=\n", "bPpbDK+eDZE=\n"), ImageButton.class);
        c0983.m2384(StringFog.decrypt("sQZV+6gLpCmBJg==\n", "5FQZv81oy00=\n"), URLDecoder.class);
        c0983.m2384(StringFog.decrypt("5qTR/bhJGl7A\n", "sM20iv87dSs=\n"), ViewGroup.class);
        c0983.m2384(StringFog.decrypt("sKOQG2GzfqeO\n", "+c7xfATlF8I=\n"), ImageView.class);
        c0983.m2384(StringFog.decrypt("3unnV7A=\n", "n5uVNsn7PA4=\n"), Array.class);
        c0983.m2384(StringFog.decrypt("azPjazN3\n", "KkGRCkoESno=\n"), Arrays.class);
        c0983.m2384(StringFog.decrypt("5vfrUA==\n", "q5afOLKxLyg=\n"), Math.class);
        c0983.m2384(StringFog.decrypt("LVIrS7wXwrcY\n", "bCBZKsVbq8Q=\n"), ArrayList.class);
        c0983.m2384(StringFog.decrypt("7MCODQ==\n", "oKn9ecHBVhE=\n"), List.class);
        c0983.m2384(StringFog.decrypt("r1hvpiCexg==\n", "5zkcznP7sj4=\n"), HashSet.class);
        c0983.m2384(StringFog.decrypt("lkku\n", "xSxaDXFBf4Q=\n"), Set.class);
        c0983.m2384(StringFog.decrypt("VQ8CBNi3pA==\n", "HW5xbJXW1Pk=\n"), HashMap.class);
        c0983.m2384(StringFog.decrypt("rM2N\n", "4az9PHG4kNU=\n"), Map.class);
        c0983.m2384(StringFog.decrypt("Feq/9UTLJgYP7q4=\n", "Qo/engyqVW4=\n"), WeakHashMap.class);
        c0983.m2384(StringFog.decrypt("RJwUjjeMzjthnBuGAA==\n", "E/l15WXpqF4=\n"), WeakReference.class);
        c0983.m2384(StringFog.decrypt("yTqqkVDQFsHkIYyTVsopxfo=\n", "ilXE8iWiZKQ=\n"), ConcurrentHashMap.class);
        c0983.m2384(StringFog.decrypt("o9FjwGhk\n", "6r8XpQYQCRY=\n"), Intent.class);
        c0983.m2384(StringFog.decrypt("k2odXs2L\n", "0R9zOqHuFqU=\n"), Bundle.class);
        c0983.m2384(StringFog.decrypt("A9a8+VLxV/gz9g==\n", "VoTwvTeSOJw=\n"), URLDecoder.class);
        c0983.m2384(StringFog.decrypt("YJCuno4msMZMkbE=\n", "I//C8utFxK8=\n"), Collections.class);
        c0983.m2384(StringFog.decrypt("Q5JQyBtZkHFVj0fdB06a\n", "Buo1q24t/wM=\n"), ExecutorService.class);
        c0983.m2384(StringFog.decrypt("LHif+OkdVgQaWJX66BdBEhw=\n", "bgrwmY1+N3c=\n"), BroadcastReceiver.class);
        c0983.m2384(StringFog.decrypt("XjI9XKTt9kp7KCxL\n", "F1xJOcqZsCM=\n"), IntentFilter.class);
        c0983.m2384(StringFog.decrypt("f4U/SA+XZJJdjTdMBqZph0o=\n", "L+RNKWLyEPc=\n"), ParameterizedType.class);
        c0983.m2384(StringFog.decrypt("ai9pA6Pz\n", "KE4aZpXHLBY=\n"), Base64.class);
        c0983.m2384(StringFog.decrypt("W12kIQ==\n", "DTTBVgQD5Yw=\n"), View.class);
        c0983.m2384(StringFog.decrypt("tR/iUVLxsUmSFvE=\n", "9nODIiG93ig=\n"), ClassLoader.class);
        c0983.m2384(StringFog.decrypt("O7Xgrw==\n", "ftuVwub/6u4=\n"), Enum.class);
        c0983.m2384(StringFog.decrypt("XeaBoSGG\n", "E5Psw0T0F0s=\n"), Number.class);
        c0983.m2384(StringFog.decrypt("qazDZIP3/eA=\n", "6M+3DfWeiZk=\n"), Activity.class);
        c0983.m2384(StringFog.decrypt("kazU0ulhLgukvsPJ\n", "wtimu4cGbH4=\n"), StringBuffer.class);
        c0983.m2384(StringFog.decrypt("bHw2B+YMRt9WZCAL+g==\n", "PwhEbohrBKo=\n"), StringBuilder.class);
        c0983.m2384(StringFog.decrypt("H83PPISQ\n", "S6W9WeX0Tc0=\n"), Thread.class);
        c0983.m2384(StringFog.decrypt("1F6k5w==\n", "gjHNgyHZuYM=\n"), Void.class);
        c0983.m2384(StringFog.decrypt("CZNogQ==\n", "XeoY5Fqr0cw=\n"), Type.class);
        c0983.m2384(StringFog.decrypt("ebblZT8z\n", "NNORDVBX/RU=\n"), C1014.class);
        c0983.m2384(StringFog.decrypt("R/dg9cYZvphw\n", "FZIGkLR80Ps=\n"), Reference.class);
        c0983.m2384(StringFog.decrypt("yqyOlS4HoyXHp46V\n", "i8794VxmwFE=\n"), AbstractList.class);
        c0983.m2384(StringFog.decrypt("V9J4L3QkC75b0Xs=\n", "FrALWwZFaMo=\n"), AbstractMap.class);
        c0983.m2384(StringFog.decrypt("nTTjgVl2fA==\n", "1VWN5TUTDiM=\n"), Handler.class);
        c0983.m2384(StringFog.decrypt("eL4ndziKks5YrSxyMA==\n", "MN9JE1Tv4Jo=\n"), HandlerThread.class);
        c0983.m2384(StringFog.decrypt("hDGb\n", "yF78bDMpTQM=\n"), Log.class);
        c0983.m2384(StringFog.decrypt("YY12jbpit7pbnXM=\n", "MvgE69sB0uw=\n"), SurfaceView.class);
        c0983.m2384(StringFog.decrypt("kr7umQVXvhqvvuE=\n", "xtuW7XAl20w=\n"), TextureView.class);
        c0983.m2384(StringFog.decrypt("9HFjfwZb4rLWYHVoB0b1\n", "sxQQC3Mph/Y=\n"), GestureDetector.class);
        c0983.m2384(StringFog.decrypt("KvASLdUgzYw+/AwpzDfnrhDqCzjXIPA=\n", "eZl/XblFguI=\n"), GestureDetector.SimpleOnGestureListener.class);
        c0983.m2384(StringFog.decrypt("nUUqmZGHHA==\n", "3ipE7fT/aDU=\n"), Context.class);
        c0983.m2384(StringFog.decrypt("9hJaUV/Ip9zENFR7UtS8\n", "oXc4Eje6yLE=\n"), WebChromeClient.class);
        c0983.m2384(StringFog.decrypt("PNTUs9ql\n", "eL2137XCA4Q=\n"), Dialog.class);
        c0983.m2384(StringFog.decrypt("OBpuSav7UHU=\n", "fmgPLsaePgE=\n"), Fragment.class);
        c0983.m2384(StringFog.decrypt("4EDLG9IfGA/FTscS0ww=\n", "pCmqd714Xn0=\n"), DialogFragment.class);
        c0983.m2384(StringFog.decrypt("TqKYCpTfx29mvYY=\n", "D9LoZv28phs=\n"), Application.class);
        c0983.m2384(StringFog.decrypt("IMrJuBiaLZAB\n", "cq+6123oTvU=\n"), Resources.class);
        c0983.m2384(StringFog.decrypt("hV9A6BISFOKiVVH/\n", "zDE0jXxmR4c=\n"), IntentSender.class);
        c0983.m2384(StringFog.decrypt("rjncIw==\n", "/li1UY0oKqA=\n"), Pair.class);
        c0983.m2384(StringFog.decrypt("bcGlX1/Zv5RS3A==\n", "IajLNDq98/0=\n"), LinkedList.class);
        c0983.m2384(StringFog.decrypt("8DI9Mn1TOQ/YMz0=\n", "vV1JWxI9fHk=\n"), MotionEvent.class);
        c0983.m2384(StringFog.decrypt("Gi4QGtCJA9s=\n", "V0F0c7bgZqk=\n"), Modifier.class);
        c0983.m2384(StringFog.decrypt("GLy9BKEZzTI2pLcIpg==\n", "WcjSach6j10=\n"), AtomicBoolean.class);
        c0983.m2384(StringFog.decrypt("fep2KH+y\n", "KoMYTBDFZZU=\n"), Window.class);
        c0983.m2384(StringFog.decrypt("MIGflzhcAlIYgIk=\n", "ceX+50w5cAQ=\n"), AdapterView.class);
        c0983.m2384(StringFog.decrypt("IbxbR0xjZQ==\n", "YNg6NzgGF5c=\n"), Adapter.class);
        c0983.m2384(StringFog.decrypt("CRGwfc2NBKo/BQ==\n", "WnLCEqHhUsM=\n"), ScrollView.class);
        c0983.m2384(StringFog.decrypt("NZuoREvZnHw=\n", "Yf7QMB2w+Qs=\n"), TextView.class);
        c0983.m2384(StringFog.decrypt("UcNeyP+O\n", "E7YqvJDgrz8=\n"), Button.class);
        c0983.m2384(StringFog.decrypt("bih1ccS9IMpbLm5g\n", "IkEbFKXPbKs=\n"), LinearLayout.class);
        c0983.m2384(StringFog.decrypt("rT3kHgdECjOzOfEQBlk=\n", "/1iIf3MtfFY=\n"), RelativeLayout.class);
        c0983.m2384(StringFog.decrypt("J/LjUcry6rkB79RYzfTz\n", "aJygPaORgfU=\n"), View.OnClickListener.class);
        c0983.m2384(StringFog.decrypt("Y73DiOMo9TNvu+6H/SLMLl+n6of/NQ==\n", "LNOP6ZpHgEc=\n"), View.OnLayoutChangeListener.class);
        c0983.m2384(StringFog.decrypt("VwWdtCQeZ6JRAYqyNhpn\n", "HGDk01F/FcY=\n"), KeyguardManager.class);
        c0983.m2384(StringFog.decrypt("/3JTmN8QK23YY06Q2BAc\n", "vgY89bZzeQg=\n"), AtomicReference.class);
        c0983.m2384(StringFog.decrypt("62HnUYAgAMvYds9WizMCwMk=\n", "uxOCN+VSZaU=\n"), PreferenceManager.class);
        c0983.m2384(StringFog.decrypt("bNBbgXTNieA=\n", "Kag+4gG55pI=\n"), Executor.class);
        c0983.m2384(StringFog.decrypt("YAa5tWQTDFJCAb26ZwMMRUY3\n", "KUXY2QhxbTE=\n"), InterfaceC0513.class);
        c0983.m2384(StringFog.decrypt("MX2a5OU=\n", "YQ/1nJw/vDs=\n"), Proxy.class);
        c0983.m2384(StringFog.decrypt("7ardIh1n/IzbpNkiHW3Pm80=\n", "vsK8UHgDrP4=\n"), SharedPreferences.class);
        c0983.m2384(StringFog.decrypt("isdWreYbU0ap5lOw5g==\n", "x6IyxIdvOik=\n"), C1017.class);
        c0983.m2384(StringFog.decrypt("ymY/l2DOi/7xajivfQ==\n", "nQNdwQmr/L0=\n"), WebViewClient.class);
        c0983.m2384(StringFog.decrypt("qXp2WtYoGvSSdnFiywkI1JFtdXjQPw==\n", "/h8UDL9Nbbc=\n"), C3468e0.class);
        c0983.m2384(StringFog.decrypt("INLMtUToO/0S9MKfSfQg1BLUwYRN7jvi\n", "d7eu9iyaVJA=\n"), W.class);
        c0983.m2384(StringFog.decrypt("u/v55Z1m1hKf7cbuiX0=\n", "+p+PgO8Sv2E=\n"), C1093.class);
        c0983.m2384(StringFog.decrypt("ul6cRpeUohGwQp9I\n", "+Sz5J+P91HQ=\n"), C0271.class);
        c0983.m2384(StringFog.decrypt("9Q48UdobndL/GCo=\n", "tnxZMK5y67c=\n"), C0290.class);
        c0983.m2384(StringFog.decrypt("De70Y8h1\n", "T4eADqkFuLc=\n"), Bitmap.class);
        c0983.m2384(AbstractC0987.m2385(2048, c0983, AbstractC0987.m2385(1024, c0983, AbstractC0987.m2385(512, c0983, AbstractC0987.m2385(256, c0983, AbstractC0987.m2385(128, c0983, AbstractC0987.m2385(64, c0983, AbstractC0987.m2385(32, c0983, AbstractC0987.m2385(16, c0983, AbstractC0987.m2385(8, c0983, AbstractC0987.m2385(4, c0983, AbstractC0987.m2385(2, c0983, AbstractC0987.m2385(1, c0983, StringFog.decrypt("HQp6HPbgRLcPFWsX/OBC\n", "UEU+VbCpAeU=\n"), "WLhPcqCNLSRKp1lysIU8Mw==\n", "FfcLO+bEaHY=\n"), "KUimd8AEa2o7V7Bx0ghtbCFD\n", "ZAfiPoZNLjg=\n"), "pOpdMpgqW8629k06iipd\n", "6aUZe95jHpw=\n"), "7jKZdNCr7jX8O5Rz164=\n", "o33dPZbiq2c=\n"), "HL4jg+moKR4Ooj6E7Kk+Ax+4PY/r\n", "UfFnyq/hbEw=\n"), "G2LbvCFFsGYJe9C5Jli8eBM=\n", "Vi2f9WcM9TQ=\n"), "nP39+kt5+XOO5uvyQ2P1ZJ/m\n", "0bK5sw0wvCE=\n"), "igl/TP+6L/6YCHpR8KUv\n", "x0Y7Bbnzaqw=\n"), "zLQf5hWY69HeshX7FoPowsK+\n", "gftbr1PRroM=\n"), "QuOo4NwJuK5Q7a76zhK8v1s=\n", "D6zsqZpA/fw=\n"), "im2mDrDg6M2YcbYVv+r5\n", "xyLiR/aprZ8=\n"), "ZuPXTLo99A==\n", "BIy4IN9cmm4=\n"), Boolean.TYPE);
        c0983.m2384(StringFog.decrypt("4rdSIA==\n", "gd8zUpffN8M=\n"), Character.TYPE);
        c0983.m2384(StringFog.decrypt("Wb8ADQ==\n", "O8Z0aMpTT60=\n"), Byte.TYPE);
        c0983.m2384(StringFog.decrypt("WCGj7uE=\n", "K0nMnJWiw7g=\n"), Short.TYPE);
        c0983.m2384(StringFog.decrypt("stvE\n", "27Wwercr+N8=\n"), Integer.TYPE);
        c0983.m2384(StringFog.decrypt("WwAXBw==\n", "N295YNboxow=\n"), Long.TYPE);
        c0983.m2384(StringFog.decrypt("T3G720Q=\n", "KR3UujD2G5o=\n"), Float.TYPE);
        c0983.m2384(StringFog.decrypt("6BizomQx\n", "jHfGwAhUvH8=\n"), Double.TYPE);
        c0983.m2384(StringFog.decrypt("V0VSrA==\n", "ISo7yDVufcg=\n"), Void.TYPE);
        c0983.m2384(AbstractC0987.m2385(12, c0983, AbstractC0987.m2385(11, c0983, AbstractC0987.m2385(10, c0983, AbstractC0987.m2385(9, c0983, AbstractC0987.m2385(8, c0983, AbstractC0987.m2385(7, c0983, AbstractC0987.m2385(6, c0983, AbstractC0987.m2385(5, c0983, AbstractC0987.m2385(4, c0983, AbstractC0987.m2385(3, c0983, AbstractC0987.m2385(2, c0983, AbstractC0987.m2385(1, c0983, AbstractC0987.m2385(0, c0983, AbstractC0987.m2385(8, c0983, AbstractC0987.m2385(4, c0983, AbstractC0987.m2385(0, c0983, AbstractC0987.m2385(Build.VERSION.SDK_INT, c0983, StringFog.decrypt("g0L1I8Y6lZGTRPUgzDqQkIpI9SHW\n", "wRe8b4Jlw9Q=\n"), "Nu3XSVsAG0wp5t5b\n", "YKSSHgRWUh8=\n"), "nhqaEGj6Gw6BAJYFe/Y=\n", "yFPfRzezVVg=\n"), "xYv+2EEMDibW\n", "k8K7jx5LQWg=\n"), "hrjXbIFfwtedss1xkVDexoK4zXqKXsrc\n", "y/eDJc4RnZI=\n"), "Pe3Dgh+lybEm59mfD6rVoDnt2ZQFuw==\n", "cKKXy1DrlvQ=\n"), "Yq/XR8MVLnh5pc1a0xoyaWavzVHBFCd4\n", "L+CDDoxbcT0=\n"), "EORvwl/f9i4L7nXfT9DqPxTkddRT0OcoGOc=\n", "Xas7ixCRqWs=\n"), "YqboB7gvSYl5rPIaqCBVmGam8hG4NEKfZq35\n", "L+m8TvdhFsw=\n"), "dmgdJmXLvTFtYgc7dcShIHJoBzB6yqs6b2IbMG7KtTo=\n", "OydJbyqF4nQ=\n"), "t4Yh3oIb+5GsjDvDkhTngLOGO8idGu2arownyJgF\n", "+sl1l81VpNQ=\n"), "5Xf082msLj7+fe7ueaMyL+F37uVurSc++mft9XCn\n", "qDiguibicXs=\n"), "s+WQiTQSlEyo74qUJB2IXbflip8oH5lGsuY=\n", "/qrEwHtcywk=\n"), "6CgYUd1Zne7zIgJMzVaB/+woAkfaWJTu9zgJVsZSkA==\n", "pWdMGJIXwqs=\n"), "P3WbQWEQf+ckf4FccR9j9jt1gVdmEXbnIGWKUGcK\n", "cjrPCC5eIKI=\n"), "Eoyrpw/+NvUJhrG6H/Eq5BaMsbEC5T3kEI2gvhL1OuM=\n", "X8P/7kCwabA=\n"), "tlXNDGd+ecatX9cRd3Fl17JV1xpqZXLXtFTGF218Y8KoXw==\n", "+xqZRSgwJoM=\n"), "1u3ZxL8y77/K5NXEvyjjqNLv1cWl\n", "k7uciuttpPo=\n"), AbstractC0115.f631);
        c0983.m2384(StringFog.decrypt("tixeIx2MV2SqJVIjHZQ=\n", "83obbUnTHCE=\n"), AbstractC0115.f630);
        c0983.m2384(StringFog.decrypt("1pH8LN6nL+rKmOkuzbY=\n", "k8e5Yor4ZK8=\n"), AbstractC0115.f629);
        c0983.m2384(StringFog.decrypt("VRwrtP+aHzNJFTys\n", "EEpu+qvFVHY=\n"), AbstractC0115.f585);
        c0983.m2384(StringFog.decrypt("LonK3UYUYkEygNzaRA==\n", "a9+PkxJLKQQ=\n"), AbstractC0115.f584);
        c0983.m2384(StringFog.decrypt("YiHoN3qD17p+KOw9cYjFr2I=\n", "J3eteS7cnP8=\n"), AbstractC0115.f628);
        c0983.m2384(StringFog.decrypt("1fQa3zsI00fJ/R7VMB/ZUdg=\n", "kKJfkW9XmAI=\n"), AbstractC0115.f627);
        c0983.m2384(StringFog.decrypt("TZxgBbtCQ9RRlWEEsFNHxVeZYAWrQk3HTYRx\n", "CMolS+8dCJE=\n"), AbstractC0115.f582);
        c0983.m2384(StringFog.decrypt("La+gQUiTpigxprFGUYm+OSm0tQ==\n", "aPnlDxzM7W0=\n"), AbstractC0115.f626);
        c0983.m2384(StringFog.decrypt("5gcBzUMduZD6DgvRXgW7m+IdG9ZFDg==\n", "o1FEgxdC8tU=\n"), AbstractC0115.f625);
        c0983.m2384(StringFog.decrypt("TfQyp43hbyBR/SWsnfd2IEv2\n", "CKJ36dm+JGU=\n"), AbstractC0115.f624);
        c0983.m2384(StringFog.decrypt("gQeAJ+ViXbedDpIq8mJGs5YQiDo=\n", "xFHFabE9FvI=\n"), AbstractC0115.f623);
        c0983.m2384(StringFog.decrypt("Uq1bol7UnKpOpEmvSdSaqkSoX6tP\n", "F/se7AqL1+8=\n"), AbstractC0115.f622);
        c0983.m2384(StringFog.decrypt("r+GCU8LElYWz6JBe1cSThb7/iFnJ1Z+Nrw==\n", "6rfHHZab3sA=\n"), AbstractC0115.f621);
        c0983.m2384(StringFog.decrypt("d/vdU8fT2Xdv/MFDxMnHbH/ozEPHxtk=\n", "ILieDIqWjT8=\n"), AbstractC0115.f620);
        c0983.m2384(StringFog.decrypt("GEp+zanqsqMEQ3bKruawqBpDcs6t6ry+CU563LzxprUSSWnAuOY=\n", "XRw7g/21+eY=\n"), AbstractC0115.f595);
        c0983.m2384(StringFog.decrypt("LcIrnl0bhkoxyyOVTQ2SSynALw==\n", "aJRu0AlEzQ8=\n"), AbstractC0115.f581);
        c0983.m2384(StringFog.decrypt("J5XL/m95vUI7nMP1f2+pQyOXz+96YqlVJ5XL/m5j\n", "YsOOsDsm9gc=\n"), AbstractC0115.f580);
        c0983.m2384(StringFog.decrypt("9poWnYedGsDqkx6Wl4sOwfKYEoyDjhDG9oEWnYedGME=\n", "s8xT09PCUYU=\n"), AbstractC0115.f579);
        c0983.m2384(StringFog.decrypt("1O0+EITUC3LI5DYblMIfc9DvOgGT3hNj3vYkGpHfAQ==\n", "kbt7XtCLQDc=\n"), AbstractC0115.f577);
        c0983.m2384(StringFog.decrypt("rS5bw6RnahOxJ13BuXtqCb0qUg==\n", "6HgejfA4IVY=\n"), AbstractC0115.f614);
        c0983.m2384(StringFog.decrypt("txWEOWHmQKyrHII7fPpAtqEMlCV2/A==\n", "8kPBdzW5C+k=\n"), AbstractC0115.f613);
        c0983.m2384(StringFog.decrypt("D2b0U0SGgx4Tb/BZRpyaDwNj9E9PkIw=\n", "SjCxHRDZyFs=\n"), AbstractC0115.f619);
        c0983.m2384(StringFog.decrypt("SLExOPmPeDhUuDUy+5VhKUS0MSTymXciWb4kMw==\n", "Ded0dq3QM30=\n"), AbstractC0115.f618);
        c0983.m2384(StringFog.decrypt("iTzR+sZuAYqVNdXwxHQYm4U50ebNeA6QnyXB5tF0\n", "zGqUtJIxSs8=\n"), AbstractC0115.f617);
        c0983.m2384(StringFog.decrypt("Wj8HIq7eqg5GNgYpqdWoBV49CyO03rQZUw==\n", "H2lCbPqB4Us=\n"), AbstractC0115.f616);
        c0983.m2384(StringFog.decrypt("LqoH9hj+RSEyowTxAuBCOz6uDg==\n", "a/xCuEyhDmQ=\n"), AbstractC0115.f615);
        c0983.m2384(StringFog.decrypt("oU/PRSiwPg29RtlEKb02DbtM2EcjozwbsA==\n", "5BmKC3zvdUg=\n"), AbstractC0115.f609);
        c0983.m2384(StringFog.decrypt("9n98zLAUr0Hqdm/LoA6rW+Z7dd2oArdQ\n", "syk5guRL5AQ=\n"), AbstractC0115.f608);
        c0983.m2384(StringFog.decrypt("5cYdpM0oBjz5zxGp1jkSLPLcB6bQJBk=\n", "oJBY6pl3TXk=\n"), AbstractC0115.f607);
        c0983.m2384(StringFog.decrypt("0ylTwD/mp5HPIF/DKv6pi8MtWtEn8L+A\n", "ln8Wjmu57NQ=\n"), AbstractC0115.f606);
        c0983.m2384(StringFog.decrypt("1vzTX71ZdRXK9dNfrVl9EcHuyUS7SmEc2vnC\n", "k6qWEekGPlA=\n"), AbstractC0115.f605);
        c0983.m2384(StringFog.decrypt("YMF4Trw79t58yH5SrSXp0nPSYlSxNPg=\n", "JZc9AOhkvZs=\n"), AbstractC0115.f612);
        c0983.m2384(StringFog.decrypt("rWAvLkSH7S2xaS8uVIflKbpyNSNCnec8oWAvP0SB9i0=\n", "6DZqYBDYpmg=\n"), AbstractC0115.f611);
        c0983.m2384(StringFog.decrypt("fKLW1d3rq4Rgq9DJzPW0iG+xzM7b+LOearvGycrx\n", "OfSTm4m04ME=\n"), AbstractC0115.f610);
        c0983.m2384(StringFog.decrypt("KmMphQ1d+jA2ai+ZHEPlPDlwM4Id\n", "bzVsy1kCsXU=\n"), AbstractC0115.f604);
        c0983.m2384(StringFog.decrypt("LHlgUyO7vIowcGZcOrS2hi5helQz\n", "aS8lHXfk988=\n"), AbstractC0115.f603);
        c0983.m2384(StringFog.decrypt("9AxAxkCNSGfoBULaW4dTffge\n", "sVoFiBTSAyI=\n"), AbstractC0115.f602);
        c0983.m2384(StringFog.decrypt("ag5+AVnUtUR2B2kKXN67UnsHcgs=\n", "L1g7Tw2L/gE=\n"), AbstractC0115.f601);
        c0983.m2384(StringFog.decrypt("P5E8oSSt7McjmDq9NbPzyyyCJq40re7G\n", "esd573Dyp4I=\n"), AbstractC0115.f600);
        c0983.m2384(StringFog.decrypt("wW4DkK7qDePdZwearOoP4g==\n", "hDhG3vq1RqY=\n"), AbstractC0115.f599);
        c0983.m2384(StringFog.decrypt("qFE9lm1ypDq0WDyLaXKhOrlQN4pycqY7\n", "7Qd42Dkt738=\n"), AbstractC0115.f598);
        c0983.m2384(StringFog.decrypt("11HKszbs9bvLWMuuMuz9rNdG27Q09uG31g==\n", "kgeP/WKzvv4=\n"), AbstractC0115.f597);
        c0983.m2384(StringFog.decrypt("5c3PpYlEnor5xM64jUSWju3Ly6KaVYqG5A==\n", "oJuK690b1c8=\n"), AbstractC0115.f596);
        c0983.m2384(StringFog.decrypt("qZBYEsAq\n", "5f87c6xPjfo=\n"), Locale.class);
        c0983.m2384(StringFog.decrypt("O+WNE8kXTUEY/g==\n", "d4rucqVyHy4=\n"), Locale.ROOT);
        return c0983;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m2381() {
        Iterator it = this.f3492.iterator();
        int iMo1892 = 0;
        while (it.hasNext()) {
            iMo1892 += ((AbstractC0747) it.next()).mo1892(this);
        }
        C0983 c0983 = this.f3497;
        return c0983.f3494 == this.f3494 ? c0983.m2381() + iMo1892 : iMo1892;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object m2382(String str) {
        for (C0983 c0983 = this; c0983 != null; c0983 = c0983.f3497) {
            if (c0983.f3498.containsKey(AbstractC0736.m2259(str))) {
                return c0983.f3498.get(AbstractC0736.m2259(str));
            }
        }
        throw new RuntimeException(AbstractC0897.m2299("KefnFO1It2Jn7Q==\n", "CYmIYM0u2Bc=\n", AbstractC0662.m2192("1fbxnFXBA0Gj\n", "g5eD9TSjbyQ=\n", new StringBuilder(), str)));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2383(AbstractC0747 abstractC0747) {
        this.f3491.remove(abstractC0747);
        int iLastIndexOf = this.f3492.lastIndexOf(abstractC0747);
        if (iLastIndexOf < 0) {
            return;
        }
        this.f3492 = new ArrayList(this.f3492.subList(0, iLastIndexOf));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2384(String str, Object obj) {
        for (C0983 c0983 = this; c0983 != null; c0983 = c0983.f3497) {
            if (c0983.f3498.containsKey(AbstractC0736.m2259(str))) {
                c0983.f3498.put(AbstractC0736.m2259(str), obj);
                return;
            }
        }
        this.f3498.put(AbstractC0736.m2259(str), obj);
    }
}
