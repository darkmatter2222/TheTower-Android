package kotlin;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Base64;
import com.ironsource.C3510b4;
import com.tapjoy.TapjoyConstants;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;
import p005kotlin.sequences.Sequence;
import p005kotlin.sequences.SequencesKt;
import p005kotlin.text.Charsets;
import p005kotlin.text.MatchGroup;
import p005kotlin.text.MatchGroupCollection;
import p005kotlin.text.MatchResult;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class m21 {
    public static long a(tx timestampToElapsedRealTime, long j) {
        Intrinsics.checkNotNullParameter(timestampToElapsedRealTime, "$this$timestampToElapsedRealTime");
        timestampToElapsedRealTime.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Duration.Companion companion = Duration.INSTANCE;
        return DurationKt.toDuration(jElapsedRealtime - (jCurrentTimeMillis - j), DurationUnit.MILLISECONDS);
    }

    public static Uri a(Uri uri, String parameterValue) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter("ms", "parameterName");
        Intrinsics.checkNotNullParameter(parameterValue, "parameterValue");
        String string = uri.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) string, "&adurl", 0, false, 6, (Object) null);
        if (iIndexOf$default == -1) {
            iIndexOf$default = StringsKt.indexOf$default((CharSequence) string, "?adurl=", 0, false, 6, (Object) null);
        }
        if (iIndexOf$default == -1) {
            Uri uriBuild = uri.buildUpon().appendQueryParameter("ms", parameterValue).build();
            Intrinsics.checkNotNull(uriBuild);
            return uriBuild;
        }
        StringBuilder sb = new StringBuilder(parameterValue.length() + string.length() + 2 + 2);
        int i = iIndexOf$default + 1;
        String strSubstring = string.substring(0, i);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        StringBuilder sbAppend = sb.append(strSubstring).append("ms=").append(parameterValue).append(C3510b4.j.c);
        String strSubstring2 = string.substring(i);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        String string2 = sbAppend.append(strSubstring2).toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return Uri.parse(string2);
    }

    public static String a(Context context) {
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        AtomicReference atomicReference = o21.g;
        String str = (String) atomicReference.get();
        if (str != null) {
            return str;
        }
        String strD = "B3EEABB8EE11C2BE770B684D95219ECB";
        if (!jn0.a() && (string = Settings.Secure.getString(context.getContentResolver(), TapjoyConstants.TJC_ANDROID_ID)) != null && string.length() != 0) {
            Intrinsics.checkNotNull(string);
            strD = d(string);
        }
        atomicReference.set(strD);
        return (String) atomicReference.get();
    }

    public static String a(Drawable drawable) {
        Bitmap bitmap;
        Intrinsics.checkNotNullParameter(drawable, "drawable");
        if (drawable instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) drawable).getBitmap();
            Intrinsics.checkNotNull(bitmap);
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth() > 0 ? drawable.getIntrinsicWidth() : 1, drawable.getIntrinsicHeight() > 0 ? drawable.getIntrinsicHeight() : 1, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            bitmap = bitmapCreateBitmap;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
        return strEncodeToString;
    }

    public static String a(String applicationId) {
        MatchGroupCollection groups;
        MatchGroup matchGroup;
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        MatchResult matchResultFind$default = Regex.find$default(o21.h, applicationId, 0, 2, null);
        if (matchResultFind$default == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(1)) == null) {
            return null;
        }
        return matchGroup.getValue();
    }

    public static String a(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String upperCase = str2.toUpperCase(US);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        if (Intrinsics.areEqual(str, "zh")) {
            if (Intrinsics.areEqual(upperCase, "CN") || Intrinsics.areEqual(upperCase, "TW")) {
                return str + "-" + upperCase;
            }
            String string = Locale.getDefault().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            if (StringsKt.contains((CharSequence) string, (CharSequence) "CN", true) || StringsKt.contains((CharSequence) string, (CharSequence) "Hans", true)) {
                return "zh-CN";
            }
            if (StringsKt.contains((CharSequence) string, (CharSequence) "TW", true) || StringsKt.contains((CharSequence) string, (CharSequence) "Hant", true)) {
                return "zh-TW";
            }
        }
        if (StringsKt.equals(str, "zh-hans", true) || StringsKt.equals(str, "zh-cn", true)) {
            return "zh-CN";
        }
        if (StringsKt.equals(str, "zh-hant", true) || StringsKt.equals(str, "zh_hant", true)) {
            return "zh-TW";
        }
        if (Intrinsics.areEqual(str, "he")) {
            return "iw";
        }
        if (StringsKt.equals(str, "pt-pt", true)) {
            return "pt";
        }
        return StringsKt.equals(str, "en-gb", true) ? "en" : c(str, upperCase);
    }

    public static Map a(Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        if (uri.isOpaque()) {
            return MapsKt.emptyMap();
        }
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        Intrinsics.checkNotNullExpressionValue(queryParameterNames, "getQueryParameterNames(...)");
        Sequence sequenceFilter = SequencesKt.filter(CollectionsKt.asSequence(queryParameterNames), l21.a);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : sequenceFilter) {
            linkedHashMap.put(obj, uri.getQueryParameter((String) obj));
        }
        return linkedHashMap;
    }

    public static boolean a(Context context, String permissionName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permissionName, "permissionName");
        return context.checkSelfPermission(permissionName) == 0;
    }

    public static String b(String applicationId) {
        MatchGroupCollection groups;
        MatchGroup matchGroup;
        Intrinsics.checkNotNullParameter(applicationId, "applicationId");
        MatchResult matchResultFind$default = Regex.find$default(o21.h, applicationId, 0, 2, null);
        if (matchResultFind$default == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(2)) == null) {
            return null;
        }
        return matchGroup.getValue();
    }

    public static String b(String regexString, String stringToMatch) {
        List<String> groupValues;
        Intrinsics.checkNotNullParameter(regexString, "regexString");
        Intrinsics.checkNotNullParameter(stringToMatch, "stringToMatch");
        MatchResult matchResultFind$default = Regex.find$default(new Regex(regexString), stringToMatch, 0, 2, null);
        if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && groupValues.size() >= 2) {
            int size = groupValues.size();
            for (int i = 1; i < size; i++) {
                if (!StringsKt.isBlank(groupValues.get(i))) {
                    return groupValues.get(i);
                }
            }
        }
        return null;
    }

    public static String c(String adUnitId) {
        MatchGroupCollection groups;
        MatchGroup matchGroup;
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        MatchResult matchResultFind$default = Regex.find$default(o21.i, adUnitId, 0, 2, null);
        if (matchResultFind$default == null || (groups = matchResultFind$default.getGroups()) == null || (matchGroup = groups.get(1)) == null) {
            return null;
        }
        return matchGroup.getValue();
    }

    public static String c(String str, String str2) {
        boolean z = (Intrinsics.areEqual(str, "zh") && Intrinsics.areEqual(str2, "HK")) || (Intrinsics.areEqual(str, "en") && (Intrinsics.areEqual(str2, "AU") || Intrinsics.areEqual(str2, "IN"))) || ((Intrinsics.areEqual(str, "es") && Intrinsics.areEqual(str2, "MX")) || (Intrinsics.areEqual(str, "fr") && Intrinsics.areEqual(str2, "CA")));
        if (str2.length() <= 0 || !z) {
            return str;
        }
        Locale US = Locale.US;
        Intrinsics.checkNotNullExpressionValue(US, "US");
        String lowerCase = str2.toLowerCase(US);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return str + "-" + lowerCase;
    }

    public static String d(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bytes = string.getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format(Locale.US, "%032X", Arrays.copyOf(new Object[]{new BigInteger(1, messageDigest.digest())}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                return str;
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j, Function1 function1, Continuation continuation) {
        j21 j21Var;
        if (continuation instanceof j21) {
            j21Var = (j21) continuation;
            int i = j21Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                j21Var.c = i - Integer.MIN_VALUE;
            } else {
                j21Var = new j21(this, continuation);
            }
        } else {
            j21Var = new j21(this, continuation);
        }
        Object objM4522withTimeoutKLykuaI = j21Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = j21Var.c;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
                k21 k21Var = new k21(function1, null);
                j21Var.c = 1;
                objM4522withTimeoutKLykuaI = TimeoutKt.m4522withTimeoutKLykuaI(j, k21Var, j21Var);
                if (objM4522withTimeoutKLykuaI == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
            }
            return new q01(objM4522withTimeoutKLykuaI);
        } catch (TimeoutCancellationException exception) {
            r01 r01Var = new r01(exception, 1);
            Intrinsics.checkNotNullParameter(exception, "exception");
            rr3 rr3VarA = hs3.a();
            rr3VarA.e().m = false;
            rr3VarA.a(exception);
            return r01Var;
        }
    }
}
