package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d32 implements rh3 {
    public final CoroutineScope a;
    public final NativeRequest b;
    public final t22 c;
    public final BaseRequest d;
    public final o21 e;
    public final int f;

    public d32(CoroutineScope backgroundScope, NativeRequest nativeRequest, ex0 flags, t22 nativeAdSettingsDataStore, BaseRequest baseRequest, o21 gmaUtil, int i) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeAdSettingsDataStore, "nativeAdSettingsDataStore");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.a = backgroundScope;
        this.b = nativeRequest;
        this.c = nativeAdSettingsDataStore;
        this.d = baseRequest;
        this.e = gmaUtil;
        this.f = i;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(Continuation continuation) {
        b32 b32Var;
        String adUnitId;
        long jA;
        d32 d32Var;
        long j;
        if (continuation instanceof b32) {
            b32Var = (b32) continuation;
            int i = b32Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                b32Var.g = i - Integer.MIN_VALUE;
            } else {
                b32Var = new b32(this, continuation);
            }
        } else {
            b32Var = new b32(this, continuation);
        }
        Object objV = b32Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = b32Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objV);
            adUnitId = this.d.getAdUnitId();
            if (adUnitId == null) {
                return null;
            }
            jA = this.e.a();
            t22 t22Var = this.c;
            b32Var.a = this;
            b32Var.b = adUnitId;
            b32Var.c = jA;
            b32Var.d = jA;
            b32Var.g = 1;
            objV = t22Var.v(b32Var);
            if (objV != coroutine_suspended) {
                d32Var = this;
                j = jA;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objV);
            return objV;
        }
        jA = b32Var.d;
        j = b32Var.c;
        adUnitId = b32Var.b;
        d32Var = b32Var.a;
        p005kotlin.ResultKt.throwOnFailure(objV);
        if (jA == ((Number) objV).longValue()) {
            t22 t22Var2 = d32Var.c;
            b32Var.a = null;
            b32Var.b = null;
            b32Var.g = 2;
            Object objB = t22Var2.b(adUnitId, b32Var);
            return objB == coroutine_suspended ? coroutine_suspended : objB;
        }
        CoroutineScope coroutineScope = d32Var.a;
        c32 block = new c32(d32Var, j, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return null;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.NATIVE_AD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        a32 a32Var;
        Boolean bool;
        Integer num;
        List list;
        ArrayList arrayList;
        Integer num2;
        Boolean bool2;
        String str;
        Boolean bool3;
        Integer num3;
        VideoOptions videoOptions;
        Boolean bool4;
        d32 d32Var;
        if (continuation instanceof a32) {
            a32Var = (a32) continuation;
            int i = a32Var.o;
            if ((i & Integer.MIN_VALUE) != 0) {
                a32Var.o = i - Integer.MIN_VALUE;
            } else {
                a32Var = new a32(this, continuation);
            }
        } else {
            a32Var = new a32(this, continuation);
        }
        Object obj = a32Var.m;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a32Var.o;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            NativeRequest nativeRequest = this.b;
            String lowerCase = nativeRequest.getMediaAspectRatio().name().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String str2 = nativeRequest.getMediaAspectRatio() != NativeAd.NativeMediaAspectRatio.UNKNOWN ? lowerCase : null;
            Integer numBoxInt = Boxing.boxInt(3);
            List<NativeAd.NativeAdType> nativeAdTypes = nativeRequest.getNativeAdTypes();
            ArrayList arrayList2 = new ArrayList();
            for (NativeAd.NativeAdType nativeAdType : nativeAdTypes) {
                Intrinsics.checkNotNullParameter(nativeAdType, "<this>");
                int i3 = z22.a[nativeAdType.ordinal()];
                String str3 = i3 != 1 ? i3 != 2 ? null : "6" : "3";
                if (str3 != null) {
                    arrayList2.add(str3);
                }
            }
            List customFormatIds = nativeRequest.getCustomFormatIds();
            Boolean boolBoxBoolean = Boxing.boxBoolean(true);
            Boolean boolBoxBoolean2 = Boxing.boxBoolean(nativeRequest.getV());
            NativeAd.SwipeGestureDirection customClickGestureDirection = nativeRequest.getCustomClickGestureDirection();
            Integer numBoxInt2 = customClickGestureDirection != null ? Boxing.boxInt(customClickGestureDirection.getValue()) : null;
            Boolean boolBoxBoolean3 = nativeRequest.getCustomClickGestureDirection() != null ? Boxing.boxBoolean(nativeRequest.getCustomClickGestureAllowTaps()) : null;
            VideoOptions videoOptions2 = nativeRequest.getVideoOptions();
            Boolean boolBoxBoolean4 = Boxing.boxBoolean(nativeRequest.getIsImageLoadingDisabled());
            Integer numBoxInt3 = Boxing.boxInt(nativeRequest.getAdChoicesPlacement().getValue());
            a32Var.a = this;
            a32Var.b = numBoxInt;
            a32Var.c = arrayList2;
            a32Var.d = numBoxInt2;
            a32Var.e = boolBoxBoolean2;
            a32Var.f = str2;
            a32Var.g = boolBoxBoolean;
            a32Var.h = customFormatIds;
            a32Var.i = boolBoxBoolean3;
            a32Var.j = numBoxInt3;
            a32Var.k = boolBoxBoolean4;
            a32Var.l = videoOptions2;
            a32Var.o = 1;
            Object objA = a(a32Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            bool = boolBoxBoolean3;
            num = numBoxInt;
            list = customFormatIds;
            arrayList = arrayList2;
            num2 = numBoxInt2;
            bool2 = boolBoxBoolean2;
            str = str2;
            bool3 = boolBoxBoolean;
            num3 = numBoxInt3;
            obj = objA;
            videoOptions = videoOptions2;
            bool4 = boolBoxBoolean4;
            d32Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            VideoOptions videoOptions3 = a32Var.l;
            Boolean bool5 = a32Var.k;
            Integer num4 = a32Var.j;
            Boolean bool6 = a32Var.i;
            List list2 = a32Var.h;
            Boolean bool7 = a32Var.g;
            String str4 = a32Var.f;
            Boolean bool8 = a32Var.e;
            Integer num5 = a32Var.d;
            ArrayList arrayList3 = a32Var.c;
            Integer num6 = a32Var.b;
            d32Var = a32Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            bool = bool6;
            num = num6;
            list = list2;
            arrayList = arrayList3;
            num2 = num5;
            bool2 = bool8;
            str = str4;
            bool3 = bool7;
            videoOptions = videoOptions3;
            bool4 = bool5;
            num3 = num4;
        }
        Boolean bool9 = (Boolean) obj;
        Integer numBoxInt4 = Boxing.boxInt(d32Var.f);
        return new q01(new y22(num, arrayList, list, bool3, str, bool2, num2, bool, videoOptions, bool4, num3, bool9, numBoxInt4.intValue() > 1 ? numBoxInt4 : null));
    }
}
