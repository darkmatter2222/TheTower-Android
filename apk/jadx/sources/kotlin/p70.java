package kotlin;

import android.util.Base64;
import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.RegistryConfiguration;
import com.google.crypto.tink.TinkProtoKeysetFormat;
import com.google.crypto.tink.aead.AeadConfig;
import com.google.crypto.tink.aead.PredefinedAeadParameters;
import com.ironsource.C3510b4;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.YieldKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class p70 extends nc1 {
    public final CoroutineScope c;
    public final g83 d;
    public final ur3 e;
    public final ex0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p70(CoroutineScope backgroundScope, g83 rootTraceCreator, ur3 traceLogger, ex0 flags) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.c = backgroundScope;
        this.d = rootTraceCreator;
        this.e = traceLogger;
        this.f = flags;
    }

    public static v01 a(String adString) {
        Intrinsics.checkNotNullParameter(adString, "adString");
        int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) adString, "&request_id=", 0, false, 6, (Object) null);
        if (iLastIndexOf$default == -1) {
            return new m01("Invalid ad string, no request ID present", kk1.INTERNAL_ERROR);
        }
        String strSubstring = adString.substring(0, iLastIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = adString.substring(iLastIndexOf$default + 12);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return new q01(new p005kotlin.Pair(strSubstring, strSubstring2));
    }

    public final v01 a(String encodedEncryptedAdResponseBlob, String requestId, tf3 signalGenerationData) {
        j01 j01Var;
        Object objA;
        Intrinsics.checkNotNullParameter(encodedEncryptedAdResponseBlob, "encodedEncryptedAdResponseBlob");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(signalGenerationData, "signalGenerationData");
        String str = signalGenerationData.c.adResponseEncryptionKey;
        if (str == null) {
            return new m01("An encrypted S2S ad response had no adResponseEncryptionKey", kk1.INTERNAL_ERROR);
        }
        byte[] bArrDecode = Base64.decode(encodedEncryptedAdResponseBlob, 11);
        Intrinsics.checkNotNull(bArrDecode);
        try {
            objA = m70.a(str);
        } catch (IOException e) {
            ((as3) this.e).a("CryptoUtil.getHandle: CleartextKeysetHandle.read", (Throwable) e);
            j01Var = new j01(e, null, null, 6);
            objA = j01Var;
        } catch (IllegalArgumentException e2) {
            ((as3) this.e).a("CryptoUtil.getHandle: Base64.decode", (Throwable) e2);
            j01Var = new j01(e2, null, null, 6);
            objA = j01Var;
        } catch (GeneralSecurityException e3) {
            ((as3) this.e).a("CryptoUtil.getHandle: CleartextKeysetHandle.read", (Throwable) e3);
            j01Var = new j01(e3, null, null, 6);
            objA = j01Var;
        }
        if (objA instanceof i01) {
            return (i01) objA;
        }
        Intrinsics.checkNotNull(objA, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        try {
            Aead aead = (Aead) ((KeysetHandle) ((q01) objA).b).getPrimitive(RegistryConfiguration.get(), Aead.class);
            Charset charset = Charsets.UTF_8;
            byte[] bytes = requestId.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            byte[] bArrDecrypt = aead.decrypt(bArrDecode, bytes);
            Intrinsics.checkNotNullExpressionValue(bArrDecrypt, "decrypt(...)");
            return new q01(new String(bArrDecrypt, charset));
        } catch (UnsupportedEncodingException e4) {
            ((as3) this.e).a("CryptoUtils.decrypt", (Throwable) e4);
            return new j01(e4, null, null, 6);
        } catch (GeneralSecurityException e5) {
            ((as3) this.e).a("CryptoUtils.decrypt", (Throwable) e5);
            return new j01(e5, null, null, 6);
        }
    }

    public final v01 g() {
        try {
            try {
                ex0 ex0Var = this.f;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:block_init_on_crypto:enabled", C3510b4.i.W);
                if (!((Boolean) ex0Var.a("gads:block_init_on_crypto:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                    try {
                        AeadConfig.register();
                    } catch (GeneralSecurityException e) {
                        ((as3) this.e).a("CryptoUtil: AeadConfig.register()", (Throwable) e);
                    }
                }
                byte[] bArrEncode = Base64.encode(TinkProtoKeysetFormat.serializeKeyset(KeysetHandle.generateNew(PredefinedAeadParameters.AES128_GCM), InsecureSecretKeyAccess.get()), 11);
                Intrinsics.checkNotNullExpressionValue(bArrEncode, "encode(...)");
                return new q01(new String(bArrEncode, Charsets.UTF_8));
            } catch (GeneralSecurityException e2) {
                ((as3) this.e).a("CryptoUtils.generateKey", (Throwable) e2);
                return new j01(e2, null, null, 6);
            }
        } catch (IOException e3) {
            ((as3) this.e).a("CryptoUtils.generateKey", (Throwable) e3);
            return new j01(e3, null, null, 6);
        }
    }

    public final void i() {
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_SDKINIT_INIT_CRYPTO;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                try {
                    AeadConfig.register();
                } catch (Throwable th) {
                    try {
                        tu2VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (!(th instanceof w01)) {
                            throw new b01(th);
                        }
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(tu2VarA, th2);
                            throw th3;
                        }
                    }
                }
            } catch (GeneralSecurityException e) {
                ((as3) this.e).a("CryptoUtil: AeadConfig.register()", (Throwable) e);
            }
            Object obj = p005kotlin.Unit.INSTANCE;
            if (obj instanceof i01) {
                xs3.a((i01) obj, false);
            }
            CloseableKt.closeFinally(tu2VarA, null);
            return;
        }
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            try {
                AeadConfig.register();
            } catch (Throwable th4) {
                try {
                    rr3VarA.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        rr3VarA.a(th4);
                    }
                    if (th4 instanceof TimeoutCancellationException) {
                        throw new i21(th4);
                    }
                    if (th4 instanceof CancellationException) {
                        throw new wz0(th4);
                    }
                    if (!(th4 instanceof w01)) {
                        throw new b01(th4);
                    }
                    throw th4;
                } catch (Throwable th5) {
                    try {
                        throw th5;
                    } catch (Throwable th6) {
                        CloseableKt.closeFinally(rr3VarA, th5);
                        throw th6;
                    }
                }
            }
        } catch (GeneralSecurityException e2) {
            ((as3) this.e).a("CryptoUtil: AeadConfig.register()", (Throwable) e2);
        }
        Object obj2 = p005kotlin.Unit.INSTANCE;
        if (obj2 instanceof i01) {
            xs3.a((i01) obj2, false);
        }
        CloseableKt.closeFinally(rr3VarA, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        n70 n70Var;
        p70 p70Var;
        if (continuation instanceof n70) {
            n70Var = (n70) continuation;
            int i = n70Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                n70Var.d = i - Integer.MIN_VALUE;
            } else {
                n70Var = new n70(this, continuation);
            }
        } else {
            n70Var = new n70(this, continuation);
        }
        Object obj = n70Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = n70Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = this.f;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:block_init_on_crypto:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:block_init_on_crypto:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                i();
                return new q01(p005kotlin.Unit.INSTANCE);
            }
            n70Var.a = this;
            n70Var.d = 1;
            if (YieldKt.yield(n70Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            p70Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p70Var = n70Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        CoroutineScope coroutineScope = p70Var.c;
        o70 block = new o70(p70Var, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
