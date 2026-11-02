package kotlin;

import android.content.Context;
import android.net.Uri;
import com.ironsource.C3510b4;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class du1 {
    public final Context a;
    public final String b;
    public final g30 c;
    public final o21 d;
    public final ex0 e;

    public du1(Context applicationContext, String afmaVersion, g30 consentManager, o21 gmaUtil, ex0 flags) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = applicationContext;
        this.b = afmaVersion;
        this.c = consentManager;
        this.d = gmaUtil;
        this.e = flags;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public final Object a(Uri uri, ec3 ec3Var, i2 i2Var, Integer num, String str, Duration duration, String str2, eo2 eo2Var, w91 w91Var, t91 t91Var, String str3, String str4, Continuation continuation) {
        cu1 cu1Var;
        String str5;
        Boolean bool;
        ir irVar;
        String strReplace$default;
        Uri uri2;
        Object obj;
        Duration duration2;
        String str6;
        du1 du1Var;
        i2 i2Var2;
        String str7;
        String string;
        String str8;
        String str9;
        String string2;
        String string3;
        String string4;
        String str10;
        String string5;
        if (continuation instanceof cu1) {
            cu1Var = (cu1) continuation;
            int i = cu1Var.j;
            if ((i & Integer.MIN_VALUE) != 0) {
                cu1Var.j = i - Integer.MIN_VALUE;
            } else {
                cu1Var = new cu1(this, continuation);
            }
        } else {
            cu1Var = new cu1(this, continuation);
        }
        Object obj2 = cu1Var.h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = cu1Var.j;
        String str11 = "";
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj2);
            String string6 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(string6, "toString(...)");
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:app_status_logging_for_presentation:enabled", C3510b4.i.W);
            Boolean bool2 = Boolean.TRUE;
            ir irVar2 = yr.b;
            if (((Boolean) ex0Var.a("gads:app_status_logging_for_presentation:enabled", bool2, irVar2)).booleanValue()) {
                String str12 = s.a(this.a) ? "1" : "0";
                bool = bool2;
                str5 = C3510b4.i.W;
                irVar = irVar2;
                string6 = StringsKt.replace$default(string6, "@gw_aps@", str12, false, 4, (Object) null);
            } else {
                str5 = C3510b4.i.W;
                bool = bool2;
                irVar = irVar2;
            }
            String strReplace$default2 = string6;
            ex0 ex0Var2 = this.e;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_placement_id:enabled", str5);
            if (((Boolean) ex0Var2.a("gads:enable_placement_id:enabled", bool, irVar)).booleanValue()) {
                strReplace$default2 = (eo2Var == null || eo2Var.a.get() <= 0) ? StringsKt.replace$default(strReplace$default2, "@gw_placement_id@", "", false, 4, (Object) null) : StringsKt.replace$default(strReplace$default2, "@gw_placement_id@", String.valueOf(eo2Var.a.get()), false, 4, (Object) null);
            }
            String strReplace$default3 = strReplace$default2;
            ex0 ex0Var3 = this.e;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_impression_sequence:enabled", str5);
            if (((Boolean) ex0Var3.a("gads:enable_impression_sequence:enabled", Boolean.FALSE, irVar)).booleanValue() && w91Var != null) {
                Integer num2 = w91Var.a;
                String strReplace$default4 = StringsKt.replace$default(strReplace$default3, "@gw_is@", (num2 == null || (string4 = num2.toString()) == null) ? "" : string4, false, 4, (Object) null);
                Integer num3 = w91Var.b;
                String strReplace$default5 = StringsKt.replace$default(strReplace$default4, "@gw_fis@", (num3 == null || (string3 = num3.toString()) == null) ? "" : string3, false, 4, (Object) null);
                Integer num4 = w91Var.c;
                strReplace$default3 = StringsKt.replace$default(strReplace$default5, "@gw_sfis@", (num4 == null || (string2 = num4.toString()) == null) ? "" : string2, false, 4, (Object) null);
            }
            String strReplace$default6 = strReplace$default3;
            ex0 ex0Var4 = this.e;
            ex0Var4.getClass();
            Intrinsics.checkNotNullParameter("gads:enable_impression_data:enabled", str5);
            if (((Boolean) ex0Var4.a("gads:enable_impression_data:enabled", bool, irVar)).booleanValue()) {
                String strA = t91Var != null ? t91Var.a() : null;
                strReplace$default6 = StringsKt.replace$default(strReplace$default6, "@gw_subpn@", strA == null ? "" : strA, false, 4, (Object) null);
            }
            String strReplace$default7 = StringsKt.replace$default(StringsKt.replace$default(strReplace$default6, "@pclmd@", str3 == null ? "" : str3, false, 4, (Object) null), "@label@", str4 == null ? "" : str4, false, 4, (Object) null);
            String adUnitId = ec3Var.a.a.getAdUnitId();
            strReplace$default = StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(strReplace$default7, "@gw_adlocid@", adUnitId == null ? "" : adUnitId, false, 4, (Object) null), "@gw_adnetid@", (i2Var == null || (str9 = i2Var.G) == null) ? "" : str9, false, 4, (Object) null), "@gw_adnetrefresh@", "0", false, 4, (Object) null), "@gw_adnetstatus@", String.valueOf(str), false, 4, (Object) null), "@gw_allocid@", (i2Var == null || (str8 = i2Var.n) == null) ? "" : str8, false, 4, (Object) null), "@gw_sdkver@", this.b, false, 4, (Object) null), "@gw_seqnum@", (num == null || (string = num.toString()) == null) ? "" : string, false, 4, (Object) null);
            g30 g30Var = this.c;
            cu1Var.a = this;
            uri2 = uri;
            cu1Var.b = uri2;
            cu1Var.c = i2Var;
            cu1Var.d = duration;
            cu1Var.e = str2;
            cu1Var.f = strReplace$default;
            cu1Var.g = "@gw_sessid@";
            cu1Var.j = 1;
            g30Var.getClass();
            Object objI = g30.i(g30Var, cu1Var);
            if (objI == coroutine_suspended) {
                return coroutine_suspended;
            }
            obj = objI;
            duration2 = duration;
            str6 = str2;
            du1Var = this;
            i2Var2 = i2Var;
            str7 = "@gw_sessid@";
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str7 = cu1Var.g;
            strReplace$default = cu1Var.f;
            str6 = cu1Var.e;
            duration2 = cu1Var.d;
            i2Var2 = cu1Var.c;
            Uri uri3 = cu1Var.b;
            du1 du1Var2 = cu1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj2);
            obj = obj2;
            uri2 = uri3;
            du1Var = du1Var2;
        }
        String str13 = (String) obj;
        if (str13 == null) {
            str13 = "";
        }
        String strEncode = Uri.encode(str13);
        Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
        String strReplace$default8 = StringsKt.replace$default(strReplace$default, str7, strEncode, false, 4, (Object) null);
        if (i2Var2 == null || (str10 = i2Var2.Y) == null) {
            str10 = "";
        }
        String strEncode2 = Uri.encode(str10);
        Intrinsics.checkNotNullExpressionValue(strEncode2, "encode(...)");
        String strReplace$default9 = StringsKt.replace$default(strReplace$default8, "@gw_qdata@", strEncode2, false, 4, (Object) null);
        if (duration2 != null && (string5 = Boxing.boxLong(Duration.m4378getInWholeMillisecondsimpl(duration2.getRawValue())).toString()) != null) {
            str11 = string5;
        }
        Uri uri4 = Uri.parse(StringsKt.replace$default(strReplace$default9, "@gw_ttr@", str11, false, 4, (Object) null));
        if (StringsKt.isBlank(str6) || !du1Var.d.b(uri2)) {
            return uri4;
        }
        m21 m21Var = o21.f;
        return m21.a(uri4, str6);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:19:0x00de A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x00df  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00df -> B:21:0x00f0). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(java.util.List r20, kotlin.ec3 r21, kotlin.i2 r22, java.lang.Integer r23, java.lang.String r24, p005kotlin.time.Duration r25, java.lang.String r26, kotlin.eo2 r27, kotlin.w91 r28, kotlin.t91 r29, java.lang.String r30, java.lang.String r31, p005kotlin.coroutines.Continuation r32) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.du1.a(java.util.List, ads_mobile_sdk.ec3, ads_mobile_sdk.i2, java.lang.Integer, java.lang.String, kotlin.time.Duration, java.lang.String, ads_mobile_sdk.eo2, ads_mobile_sdk.w91, ads_mobile_sdk.t91, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
