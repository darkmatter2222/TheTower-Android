package com.appsflyer.internal;

import android.content.Intent;
import android.os.Parcelable;
import com.appsflyer.AFLogger;
import java.util.ConcurrentModificationException;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.collections.ArraysKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Reflection;
import p005kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes2.dex */
public final class AFj1kSDK {
    final Intent getCurrencyIso4217Code;

    public AFj1kSDK(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "");
        this.getCurrencyIso4217Code = intent;
    }

    private final <T> T AFAdRevenueData(Function0<? extends T> function0, String str, T t, boolean z) {
        Object objM3022constructorimpl;
        Object objM3022constructorimpl2;
        Object objAFAdRevenueData;
        synchronized (this.getCurrencyIso4217Code) {
            try {
                Result.Companion companion = Result.INSTANCE;
                AFj1kSDK aFj1kSDK = this;
                objM3022constructorimpl = Result.m3022constructorimpl(function0.invoke());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
            KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(ConcurrentModificationException.class), Reflection.getOrCreateKotlinClass(ArrayIndexOutOfBoundsException.class)};
            Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
            if (thM3025exceptionOrNullimpl != null) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    if (!ArraysKt.contains(kClassArr, Reflection.getOrCreateKotlinClass(thM3025exceptionOrNullimpl.getClass()))) {
                        throw thM3025exceptionOrNullimpl;
                    }
                    if (z) {
                        objAFAdRevenueData = AFAdRevenueData(function0, str, t, false);
                    } else {
                        AFLogger.afErrorLog(str, thM3025exceptionOrNullimpl, false, false);
                        objAFAdRevenueData = t;
                    }
                    objM3022constructorimpl2 = Result.m3022constructorimpl(objAFAdRevenueData);
                    objM3022constructorimpl = objM3022constructorimpl2;
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM3022constructorimpl2 = Result.m3022constructorimpl(ResultKt.createFailure(th2));
                }
            }
            Throwable thM3025exceptionOrNullimpl2 = Result.m3025exceptionOrNullimpl(objM3022constructorimpl);
            if (thM3025exceptionOrNullimpl2 == null) {
                t = (T) objM3022constructorimpl;
            } else {
                AFLogger.afErrorLog(str, thM3025exceptionOrNullimpl2, false, false);
            }
        }
        return t;
    }

    public final <T extends Parcelable> T H_(final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return (T) AFAdRevenueData(new Function0<T>() { // from class: com.appsflyer.internal.AFj1kSDK.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // p005kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: J_, reason: merged with bridge method [inline-methods] */
            public final Parcelable invoke() {
                return AFj1kSDK.this.getCurrencyIso4217Code.getParcelableExtra(str);
            }
        }, "Error while trying to read " + str + " extra from intent", null, true);
    }

    public final Intent I_(final String str, final long j) {
        Intrinsics.checkNotNullParameter(str, "");
        return (Intent) AFAdRevenueData(new Function0<Intent>() { // from class: com.appsflyer.internal.AFj1kSDK.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // p005kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: K_, reason: merged with bridge method [inline-methods] */
            public final Intent invoke() {
                return AFj1kSDK.this.getCurrencyIso4217Code.putExtra(str, j);
            }
        }, "Error while trying to write " + str + " extra to intent", null, true);
    }

    public final String getCurrencyIso4217Code(final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        return (String) AFAdRevenueData(new Function0<String>() { // from class: com.appsflyer.internal.AFj1kSDK.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // p005kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: getMediationNetwork, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                return AFj1kSDK.this.getCurrencyIso4217Code.getStringExtra(str);
            }
        }, "Error while trying to read " + str + " extra from intent", null, true);
    }

    public final boolean getRevenue(final String str) {
        Intrinsics.checkNotNullParameter(str, "");
        Boolean bool = (Boolean) AFAdRevenueData(new Function0<Boolean>() { // from class: com.appsflyer.internal.AFj1kSDK.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // p005kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: getMonetizationNetwork, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke() {
                return Boolean.valueOf(AFj1kSDK.this.getCurrencyIso4217Code.hasExtra(str));
            }
        }, "Error while trying to check presence of " + str + " extra from intent", Boolean.TRUE, true);
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }
}
