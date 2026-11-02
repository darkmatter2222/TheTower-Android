package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.po, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C3036po {
    public static byte[] A09;
    public static final C3031pj A0A;
    public long A00;
    public long A01;
    public InterfaceC3033pl A02;
    public boolean A03;
    public final long A04;
    public final Handler A05;
    public final InterfaceC3032pk A06;
    public final RunnableC3035pn A07;
    public final Runnable A08;

    static {
        A08();
        A0A = new C3031pj(null);
    }

    public C3036po(long j, InterfaceC3032pk interfaceC3032pk) {
        C1h.A09(interfaceC3032pk, A07(0, 8, 27));
        this.A04 = j;
        this.A06 = interfaceC3032pk;
        this.A05 = new Handler(Looper.getMainLooper());
        this.A08 = new RunnableC3034pm(this);
        this.A07 = new RunnableC3035pn(this);
        this.A00 = this.A04;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A09 = new byte[]{68, 65, 91, 92, 77, 70, 77, 90};
    }

    public final long A0B() {
        return AbstractC12170i.A00(this.A03 ? (this.A04 - this.A00) + (SystemClock.elapsedRealtime() - this.A01) : this.A04 - this.A00, 0L, this.A04);
    }

    public final long A0C() {
        return this.A04;
    }

    public final void A0D() {
        this.A05.removeCallbacks(this.A08);
        this.A05.removeCallbacks(this.A07);
        this.A03 = false;
    }

    public final void A0E() {
        if (this.A03) {
            this.A05.removeCallbacks(this.A08);
            this.A05.removeCallbacks(this.A07);
            this.A00 = Math.max(0L, this.A00 - (SystemClock.elapsedRealtime() - this.A01));
            this.A03 = false;
        }
    }

    public final void A0F() {
        if (this.A03 || this.A00 <= 0) {
            return;
        }
        this.A01 = SystemClock.elapsedRealtime();
        this.A03 = true;
        this.A05.postDelayed(this.A08, this.A00);
        if (this.A02 != null) {
            this.A05.post(this.A07);
        }
    }

    public final void A0G() {
        if (this.A03) {
            return;
        }
        this.A01 = SystemClock.elapsedRealtime();
        this.A03 = true;
        this.A05.postDelayed(this.A08, this.A00);
        if (this.A02 != null) {
            this.A05.post(this.A07);
        }
    }

    public final void A0H(InterfaceC3033pl interfaceC3033pl) {
        this.A02 = interfaceC3033pl;
    }

    public final boolean A0I() {
        return this.A03;
    }
}
