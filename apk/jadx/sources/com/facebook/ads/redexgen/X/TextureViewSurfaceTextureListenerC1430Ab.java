package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class TextureViewSurfaceTextureListenerC1430Ab extends TextureView implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, MediaPlayer.OnSeekCompleteListener, TextureView.SurfaceTextureListener, InterfaceC2210cD {
    public static byte[] A0N;
    public static String[] A0O = {"w6W1Pn4pGSy1veXw7fNic4Q20vJelJ2", "acNB2lhq8cVPZLtYghlcj8euurSBcqdx", "I2BPPFoGG3lXsTKKPy2FKKasdsM", "uMMu8699SI696vicAGdUyhB1Kjcnsg5D", "S7aPtd9QGtmzyQ9VrNW20IwmaDF5p1Ml", "zS648UlhjTBJXulz7NmFsyAIwaw2iCpI", "ZyXsHo9oibpczWLkt42IpHWLTZevRgPI", "euMEykkwaXnS"};
    public static final String A0P;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public MediaPlayer A06;
    public Uri A07;
    public Surface A08;
    public View A09;
    public MediaController A0A;
    public EnumC2324e4 A0B;
    public EnumC2209cC A0C;
    public EnumC2209cC A0D;
    public InterfaceC2208cB A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public final MediaController.MediaPlayerControl A0L;
    public final C1618Hi A0M;

    static {
        A04();
        A0P = TextureViewSurfaceTextureListenerC1430Ab.class.getSimpleName();
    }

    public TextureViewSurfaceTextureListenerC1430Ab(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A0C = EnumC2209cC.A04;
        this.A0D = EnumC2209cC.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0H = false;
        this.A01 = 3;
        this.A0F = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0G = false;
        this.A0B = EnumC2324e4.A04;
        this.A0L = new C2214cH(this);
        this.A0I = false;
        this.A0M = c1618Hi;
    }

    public TextureViewSurfaceTextureListenerC1430Ab(C1618Hi c1618Hi, AttributeSet attributeSet) {
        super(c1618Hi, attributeSet);
        this.A0C = EnumC2209cC.A04;
        this.A0D = EnumC2209cC.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0H = false;
        this.A01 = 3;
        this.A0F = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0G = false;
        this.A0B = EnumC2324e4.A04;
        this.A0L = new C2214cH(this);
        this.A0I = false;
        this.A0M = c1618Hi;
    }

    public TextureViewSurfaceTextureListenerC1430Ab(C1618Hi c1618Hi, AttributeSet attributeSet, int i) {
        super(c1618Hi, attributeSet, i);
        this.A0C = EnumC2209cC.A04;
        this.A0D = EnumC2209cC.A04;
        this.A0J = false;
        this.A03 = 0;
        this.A05 = 0;
        this.A04 = 0;
        this.A00 = 1.0f;
        this.A0H = false;
        this.A01 = 3;
        this.A0F = false;
        this.A0K = false;
        this.A02 = 0;
        this.A0G = false;
        this.A0B = EnumC2324e4.A04;
        this.A0L = new C2214cH(this);
        this.A0I = false;
        this.A0M = c1618Hi;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0N = new byte[]{89, 87, 91, 89, Ascii.RS, 3, Ascii.SI, 9, Ascii.SUB, 89, 91, 65, 91, 89, 57, 102, 105, 75, 68, 68, 69, 94, 10, 90, 88, 79, 90, 75, 88, 79, 10, 71, 79, 78, 67, 75, 10, 90, 70, 75, 83, 79, 88, 10, 93, 67, 94, 66, 10, 121, 95, 88, 76, 75, 73, 79, 126, 79, 82, 94, 95, 88, 79, Ascii.DLE, 10, 45, 1, Ascii.ESC, 2, 10, 0, 73, Ascii.SUB, 78, Ascii.FS, Ascii.VT, Ascii.SUB, Ascii.FS, 7, Ascii.VT, Ascii.CAN, Ascii.VT, 78, Ascii.CAN, 7, 10, Ascii.VT, 1, 78, 7, 0, 8, 1, Ascii.FS, 3, Ascii.SI, Ascii.SUB, 7, 1, 0, 93, 122, 114, 119, 126, 127, 59, 111, 116, 59, 116, 107, 126, 117, 59, 122, 104, 104, 126, 111, 104, Ascii.SI, 39, 39, 47, 36, 45, 104, 41, 36, 63, 41, 49, 59, 104, 60, 32, 58, 39, 63, 104, 41, 38, 104, 45, 48, 43, 45, 56, 60, 33, 39, 38, 104, 63, 33, 60, 32, 104, 59, 45, 60, 10, 41, 43, 35, 47, 58, 39, Base64.padSymbol, 38, 44, Ascii.FF, 58, 41, 63, 41, 42, 36, 45, 104, 39, 38, 104, 6, 39, Base64.padSymbol, 47, 41, 60, 104, 41, 42, 39, 62, 45, 102, 104, 59, 39, 104, 63, 45, 104, 59, 33, 36, 45, 38, 60, 36, 49, 104, 33, 47, 38, 39, 58, 45, 104, 33, 60, 102, 50, Ascii.SUB, Ascii.SUB, Ascii.DC2, Ascii.EM, Ascii.DLE, 85, Ascii.DC4, Ascii.EM, 2, Ascii.DC4, Ascii.FF, 6, 85, 1, Ascii.GS, 7, Ascii.SUB, 2, 85, Ascii.DC4, Ascii.ESC, 85, Ascii.DLE, Ascii.CR, Ascii.SYN, Ascii.DLE, 5, 1, Ascii.FS, Ascii.SUB, Ascii.ESC, 85, 2, Ascii.FS, 1, Ascii.GS, 85, 6, Ascii.DLE, 1, 51, Ascii.SUB, 7, Ascii.DLE, Ascii.DC2, 7, Ascii.SUB, 0, Ascii.ESC, 17, 85, Ascii.SUB, Ascii.ESC, 85, 59, Ascii.SUB, 0, Ascii.DC2, Ascii.DC4, 1, 85, Ascii.DC4, Ascii.ETB, Ascii.SUB, 3, Ascii.DLE, 91, 85, 6, Ascii.SUB, 85, 2, Ascii.DLE, 85, 6, Ascii.FS, Ascii.EM, Ascii.DLE, Ascii.ESC, 1, Ascii.EM, Ascii.FF, 85, Ascii.FS, Ascii.DC2, Ascii.ESC, Ascii.SUB, 7, Ascii.DLE, 85, Ascii.FS, 1, 91, 2, 57, 54, 53, 59, 50, 119, 35, 56, 119, 52, 59, 56, 36, 50, Ascii.SYN, 49, 42, 99, 48, 43, 44, 54, 47, 39, 99, 45, 44, 55, 99, 33, 38, 99, 38, 46, 51, 55, 58, 109, 53, 10, 7, 6, Ascii.FF, 67, Ascii.DLE, Ascii.ETB, 2, Ascii.ETB, 6, 67, 0, Ascii.VT, 2, Ascii.CR, 4, 6, 7, 67, Ascii.ETB, Ascii.FF, 67, 97, 115, 115, 101, 116, 83, 79, 66, 90, 70, 81, 126, 39, 114, 109, 100, 113, 39, 37, 63, 37, 39};
    }

    private final void A05(MediaPlayer mediaPlayer, Uri uri) {
        String strA03 = A03(TypedValues.AttributesType.TYPE_EASING, 15, 37);
        AssetFileDescriptor assetFileDescriptor = null;
        try {
            try {
                try {
                    String path = uri.getPath();
                    if (TextUtils.isEmpty(path)) {
                        throw new IOException(A03(332, 24, 49));
                    }
                    AssetFileDescriptor assetFileDescriptorOpenFd = getContext().getAssets().openFd(path.substring(1));
                    mediaPlayer.setDataSource(assetFileDescriptorOpenFd.getFileDescriptor(), assetFileDescriptorOpenFd.getStartOffset(), assetFileDescriptorOpenFd.getLength());
                    if (assetFileDescriptorOpenFd != null) {
                        assetFileDescriptorOpenFd.close();
                    }
                } catch (IOException e) {
                    Log.w(A0P, strA03, e);
                }
            } catch (IOException | SecurityException e2) {
                Log.w(A0P, A03(100, 21, 105), e2);
                setVideoState(EnumC2209cC.A03);
                this.A0M.A0F().A45(2);
                if (0 == 0) {
                } else {
                    assetFileDescriptor.close();
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    assetFileDescriptor.close();
                } catch (IOException e3) {
                    String str = A0P;
                    if (A0O[4].charAt(14) == '3') {
                        throw new RuntimeException();
                    }
                    A0O[4] = "5wOPn44R1hc3v6r9jW2gCadKB3w8Au79";
                    Log.w(str, strA03, e3);
                }
            }
            throw th;
        }
    }

    private boolean A06() {
        return (this.A0C == EnumC2209cC.A08 || this.A0C == EnumC2209cC.A07) ? false : true;
    }

    private boolean A07() {
        return this.A0C == EnumC2209cC.A07 || this.A0C == EnumC2209cC.A0A || this.A0C == EnumC2209cC.A05 || this.A0C == EnumC2209cC.A06;
    }

    private boolean A08() {
        return (this.A0C == EnumC2209cC.A08 || this.A0C == EnumC2209cC.A07) ? false : true;
    }

    private boolean A09() {
        if (this.A06 == null) {
            return false;
        }
        try {
            this.A06.reset();
            return true;
        } catch (IllegalStateException e) {
            this.A0M.A08().ABz(A03(384, 6, 81), AbstractC2786lf.A2H, new C2787lg(e));
            return false;
        }
    }

    private boolean A0A(Surface surface) {
        if (this.A06 == null) {
            return false;
        }
        try {
            this.A06.setSurface(surface);
            return true;
        } catch (IllegalStateException e) {
            this.A0M.A08().ABz(A03(384, 6, 81), AbstractC2786lf.A2I, new C2787lg(e));
            return false;
        }
    }

    private void setVideoState(EnumC2209cC enumC2209cC) {
        if (enumC2209cC != this.A0C) {
            if (this.A0M.A05().AB6()) {
                String str = A03(356, 23, 17) + enumC2209cC;
            }
            this.A0C = enumC2209cC;
            if (this.A0E != null) {
                this.A0E.AHn(enumC2209cC);
            }
        }
    }

    public final /* synthetic */ void A0C() {
        Activity activityA0E = this.A0M.A0E();
        if (activityA0E == null || !activityA0E.isInMultiWindowMode()) {
            AAH();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void AAH() {
        if (this.A0F) {
            return;
        }
        AI4(false, 3);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final boolean AAU() {
        if (this.A06 == null) {
            return false;
        }
        try {
            for (MediaPlayer.TrackInfo trackInfo : this.A06.getTrackInfo()) {
                if (trackInfo.getTrackType() == 2) {
                    return true;
                }
            }
            return false;
        } catch (RuntimeException e) {
            Log.e(A0P, A03(65, 35, 28), e);
            return true;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final boolean AAV() {
        return this.A0K;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final boolean ABK() {
        return this.A0J;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void AI4(boolean z, int i) {
        this.A0M.A0F().A41(i);
        this.A0D = EnumC2209cC.A05;
        if (this.A06 == null) {
            setVideoState(EnumC2209cC.A04);
            return;
        }
        if (A06()) {
            this.A0J = z;
            this.A06.pause();
            if (this.A0C != EnumC2209cC.A06) {
                setVideoState(EnumC2209cC.A05);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void ALJ(int i) {
        this.A0M.A0F().ADO(i);
        setVideoState(EnumC2209cC.A09);
        ALY(5);
        this.A03 = 0;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0043  */
    /* JADX WARN: Code duplicated, block: B:16:0x0047  */
    /* JADX WARN: Code duplicated, block: B:24:0x007a  */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void ALO(EnumC2324e4 enumC2324e4, int i) {
        this.A0M.A0F().A4F(i);
        this.A0J = false;
        this.A0D = EnumC2209cC.A0A;
        this.A0B = enumC2324e4;
        if (this.A0C != EnumC2209cC.A0A && this.A0C != EnumC2209cC.A07) {
            EnumC2209cC enumC2209cC = this.A0C;
            if (A0O[7].length() == 4) {
                throw new RuntimeException();
            }
            A0O[4] = "NTKGPTGyq7PSuZ6pDxSrkOD3BAS3oRMw";
            if (enumC2209cC == EnumC2209cC.A04 || this.A0C == EnumC2209cC.A05 || this.A0C == EnumC2209cC.A06) {
                if (this.A06 == null) {
                    setup(this.A07);
                } else {
                    if (this.A03 > 0) {
                        this.A06.seekTo(this.A03);
                    }
                    this.A06.start();
                    if (this.A0C == EnumC2209cC.A07) {
                        setVideoState(EnumC2209cC.A0A);
                    } else {
                        setVideoState(EnumC2209cC.A0A);
                    }
                }
            }
        } else if (this.A06 == null) {
            setup(this.A07);
        } else {
            if (this.A03 > 0) {
                this.A06.seekTo(this.A03);
            }
            this.A06.start();
            if (this.A0C == EnumC2209cC.A07 || this.A0K) {
                setVideoState(EnumC2209cC.A0A);
            }
        }
        if (isAvailable()) {
            SurfaceTexture surfaceTexture = getSurfaceTexture();
            if (A0O[1].charAt(7) != 'q') {
                A0O[4] = "Wn6W9Nu3dNfA4pP49CdphRQGwehyl3Rd";
                onSurfaceTextureAvailable(surfaceTexture, 0, 0);
            } else {
                A0O[7] = "pXleF17jKjib";
                onSurfaceTextureAvailable(surfaceTexture, 0, 0);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void ALY(int i) {
        this.A0M.A0F().A4H(i);
        this.A0D = EnumC2209cC.A04;
        if (this.A06 != null) {
            int currentPosition = this.A06.getCurrentPosition();
            if (currentPosition > 0) {
                this.A03 = currentPosition;
            }
            this.A06.stop();
            if (A0O[4].charAt(14) == '3') {
                throw new RuntimeException();
            }
            A0O[5] = "KulxFUFqA4xnUTvaQLfyg7cstmOjzycv";
            A09();
            this.A06.release();
            this.A06 = null;
            if (this.A0A != null) {
                this.A0A.hide();
                this.A0A.setEnabled(false);
            }
        }
        setVideoState(EnumC2209cC.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void destroy() {
        if (this.A06 != null) {
            A0A(null);
            this.A06.setOnBufferingUpdateListener(null);
            this.A06.setOnCompletionListener(null);
            this.A06.setOnErrorListener(null);
            this.A06.setOnInfoListener(null);
            this.A06.setOnPreparedListener(null);
            this.A06.setOnVideoSizeChangedListener(null);
            this.A06.setOnSeekCompleteListener(null);
            A09();
            this.A06 = null;
            setVideoState(EnumC2209cC.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getCurrentPosition() {
        if (this.A06 == null || !A07()) {
            return 0;
        }
        return this.A06.getCurrentPosition();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getDuration() {
        if (this.A06 == null) {
            return 0;
        }
        boolean zA07 = A07();
        String[] strArr = A0O;
        if (strArr[3].charAt(29) != strArr[6].charAt(29)) {
            throw new RuntimeException();
        }
        A0O[1] = "tqb6wmVqQGZxPylUtz2fkCIx7Bf2WilJ";
        if (zA07) {
            return this.A06.getDuration();
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public long getInitialBufferTime() {
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public EnumC2324e4 getStartReason() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public EnumC2209cC getState() {
        return this.A0C;
    }

    public EnumC2209cC getTargetState() {
        return this.A0D;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getVideoHeight() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public int getVideoWidth() {
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public float getVolume() {
        return this.A00;
    }

    @Override // android.view.View
    public final boolean isHardwareAccelerated() {
        return super.isHardwareAccelerated();
    }

    @Override // android.view.TextureView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isHardwareAccelerated()) {
            return;
        }
        setVideoState(EnumC2209cC.A03);
        this.A0M.A0F().A45(5);
        ALY(8);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        if (this.A06 != null) {
            this.A06.pause();
        }
        setVideoState(EnumC2209cC.A06);
        seekTo(0);
        this.A03 = 0;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.A0M.A0F().ADN(A03(390, 11, 119) + i + A03(0, 14, 9) + i2 + A03(14, 2, 105));
        if (this.A01 <= 0 || getState() != EnumC2209cC.A0A) {
            setVideoState(EnumC2209cC.A03);
            this.A0M.A0F().A45(1);
            ALY(7);
        } else {
            this.A01--;
            ALY(6);
            ALO(this.A0B, 10);
        }
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        switch (i) {
            case 3:
                this.A0K = true;
                if (this.A0D == EnumC2209cC.A0A) {
                    EnumC2209cC enumC2209cC = EnumC2209cC.A0A;
                    if (A0O[4].charAt(14) != '3') {
                        String[] strArr = A0O;
                        strArr[3] = "iL0L5EQxu2M5tvy2sZDjl5tOkB9wsg4Q";
                        strArr[6] = "qEr4cYtmjtQdjlZthk5xBRgssZbq5gW6";
                        setVideoState(enumC2209cC);
                    } else {
                        setVideoState(enumC2209cC);
                    }
                }
                return true;
            case 701:
                setVideoState(EnumC2209cC.A02);
                return false;
            case 702:
                if (!A08()) {
                    return false;
                }
                EnumC2209cC enumC2209cC2 = EnumC2209cC.A0A;
                String[] strArr2 = A0O;
                if (strArr2[3].charAt(29) != strArr2[6].charAt(29)) {
                    throw new RuntimeException();
                }
                String[] strArr3 = A0O;
                strArr3[3] = "BctcOQJYgBcKf8RdBMRoW9O8jkER1gO3";
                strArr3[6] = "NFF5b4NOHp1wMQpQtAU8ibXMpYWuxgZg";
                setVideoState(enumC2209cC2);
                return false;
            default:
                return false;
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        setVideoState(EnumC2209cC.A07);
        if (this.A0H && !this.A0G) {
            Activity activityA0E = this.A0M.A0E();
            if (activityA0E != null) {
                this.A0A = new MediaController(activityA0E);
                this.A0A.setAnchorView(this.A09 == null ? this : this.A09);
                MediaController mediaController = this.A0A;
                MediaController.MediaPlayerControl mediaPlayerControl = this.A0L;
                if (A0O[1].charAt(7) != 'q') {
                    throw new RuntimeException();
                }
                String[] strArr = A0O;
                strArr[3] = "fPjFRSSzuUrY85KdwEQXHAUI7gq3zgJX";
                strArr[6] = "QlnNj2Zi0n3XZkktRetea07zoE6PUgNL";
                mediaController.setMediaPlayer(mediaPlayerControl);
                this.A0A.setEnabled(true);
            } else {
                this.A0A = null;
            }
        }
        setRequestedVolume(this.A00);
        this.A05 = mediaPlayer.getVideoWidth();
        this.A04 = mediaPlayer.getVideoHeight();
        if (this.A03 > 0) {
            if (this.A03 >= ((MediaPlayer) YQ.A00(this.A06)).getDuration()) {
                this.A03 = 0;
            }
            this.A06.seekTo(this.A03);
            this.A03 = 0;
        }
        EnumC2209cC enumC2209cC = this.A0D;
        EnumC2209cC enumC2209cC2 = EnumC2209cC.A0A;
        String[] strArr2 = A0O;
        if (strArr2[2].length() == strArr2[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr3 = A0O;
        strArr3[3] = "i4HMjCzdRtS7Zf5jyUfqsJgJBFC3Hgk3";
        strArr3[6] = "nPyigXhxANl12gOwrMulZJ84NGYQcgH1";
        if (enumC2209cC == enumC2209cC2) {
            ALO(this.A0B, 8);
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.A0E == null) {
            return;
        }
        this.A0E.AGy(this.A02, this.A03);
        this.A03 = 0;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.A08 == null) {
            this.A08 = new Surface(surfaceTexture);
        }
        if (!A0A(this.A08)) {
            setVideoState(EnumC2209cC.A03);
            this.A0M.A0F().A45(4);
            destroy();
        } else {
            if (this.A0C != EnumC2209cC.A05 || this.A0J) {
                return;
            }
            ALO(this.A0B, 7);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        A0A(null);
        if (this.A08 != null) {
            this.A08.release();
            this.A08 = null;
        }
        if (this.A0C != EnumC2209cC.A05) {
            AI4(false, 5);
        }
        if (A0O[1].charAt(7) != 'q') {
            throw new RuntimeException();
        }
        A0O[5] = "wJEag4Up5dB02EoPbWjrYUJlPYnnpJPt";
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        if (C2863mv.A20(this.A0M) && this.A06 != null) {
            boolean zA07 = A07();
            if (A0O[1].charAt(7) != 'q') {
                throw new RuntimeException();
            }
            A0O[5] = "zsAx7U2aKSd2GPuux6v5Um4uWviEPJCj";
            if (zA07) {
                if (!this.A0I) {
                    this.A0I = true;
                    this.A0M.A0F().AKL();
                }
                long currentPosition = getCurrentPosition();
                long currentPosition2 = getCurrentPosition();
                long jCurrentTimeMillis = System.currentTimeMillis();
                float volume = getVolume();
                InterfaceC2208cB interfaceC2208cB = this.A0E;
                String[] strArr = A0O;
                if (strArr[3].charAt(29) != strArr[6].charAt(29)) {
                    String[] strArr2 = A0O;
                    strArr2[3] = "TCNHct619CRWvR8yRaIVBXh7Z2mH2gE3";
                    strArr2[6] = "2AsTeA1eT9kqgEVlM1kQIATZCRuMfgd6";
                    if (interfaceC2208cB == null) {
                        return;
                    }
                } else {
                    A0O[1] = "C2QiQOSq51SG1WbfoUh9oMjPHCAt1Ywe";
                    if (interfaceC2208cB == null) {
                        return;
                    }
                }
                InterfaceC2208cB interfaceC2208cB2 = this.A0E;
                if (A0O[7].length() == 4) {
                    interfaceC2208cB2.AF1(currentPosition, currentPosition2, jCurrentTimeMillis, volume);
                } else {
                    A0O[7] = "XlzlFYmLomexuVhEOMxg7o";
                    interfaceC2208cB2.AF1(currentPosition, currentPosition2, jCurrentTimeMillis, volume);
                }
            }
        }
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        this.A05 = mediaPlayer.getVideoWidth();
        this.A04 = mediaPlayer.getVideoHeight();
        if (this.A05 == 0 || this.A04 == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.A06 == null) {
            return;
        }
        if (this.A0A == null || !this.A0A.isShowing()) {
            if (z) {
                if (this.A0C != EnumC2209cC.A05 || this.A0J) {
                    return;
                }
                ALO(this.A0B, 9);
                return;
            }
            if (this.A0C != EnumC2209cC.A05) {
                if ((this.A0M.A0H().A01() || C2863mv.A25(this.A0M)) && Build.VERSION.SDK_INT >= 24) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.cI
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.A00.A0C();
                        }
                    }, 1000L);
                } else {
                    AAH();
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public final void seekTo(int i) {
        if (this.A06 == null || !A07()) {
            this.A03 = i;
        } else {
            if (i >= getDuration() || i <= 0) {
                return;
            }
            this.A02 = getCurrentPosition();
            this.A03 = i;
            this.A06.seekTo(i);
        }
    }

    @Override // android.view.TextureView, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setBackgroundDrawable(drawable);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0P, A03(121, 102, 58));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setBackgroundPlaybackEnabled(boolean z) {
        this.A0F = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setControlsAnchorView(View view) {
        this.A09 = view;
        view.setOnTouchListener(new ViewOnTouchListenerC2211cE(this));
    }

    @Override // android.view.TextureView, android.view.View
    public void setForeground(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 24) {
            super.setForeground(drawable);
        } else if (AdInternalSettings.isDebugBuild()) {
            Log.w(A0P, A03(223, 94, 7));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setFullScreen(boolean z) {
        this.A0H = z;
        if (!this.A0H || this.A0G) {
            return;
        }
        setOnTouchListener(new ViewOnTouchListenerC2213cG(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setRequestedVolume(float f) {
        this.A00 = f;
        if (this.A06 == null || this.A0C == EnumC2209cC.A08 || this.A0C == EnumC2209cC.A04) {
            return;
        }
        this.A06.setVolume(f, f);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setVideoMPD(String str) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setVideoStateChangeListener(InterfaceC2208cB interfaceC2208cB) {
        this.A0E = interfaceC2208cB;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2210cD
    public void setup(Uri uri) {
        MediaPlayer mediaPlayer;
        this.A0M.A0F().A44();
        this.A0K = false;
        this.A07 = uri;
        if (this.A06 != null) {
            A09();
            A0A(null);
            mediaPlayer = this.A06;
            setVideoState(EnumC2209cC.A04);
        } else {
            mediaPlayer = new MediaPlayer();
        }
        try {
            if (((String) YQ.A00(uri.getScheme())).equals(A03(379, 5, 114))) {
                A05(mediaPlayer, uri);
            } else {
                mediaPlayer.setDataSource(uri.toString());
            }
            mediaPlayer.setLooping(false);
            mediaPlayer.setOnBufferingUpdateListener(this);
            mediaPlayer.setOnCompletionListener(this);
            mediaPlayer.setOnErrorListener(this);
            mediaPlayer.setOnInfoListener(this);
            mediaPlayer.setOnPreparedListener(this);
            mediaPlayer.setOnVideoSizeChangedListener(this);
            mediaPlayer.setOnSeekCompleteListener(this);
            mediaPlayer.prepareAsync();
            this.A06 = mediaPlayer;
            setVideoState(EnumC2209cC.A08);
        } catch (Exception e) {
            setVideoState(EnumC2209cC.A03);
            this.A0M.A0F().A45(3);
            mediaPlayer.release();
            Log.e(A0P, A03(16, 49, 88) + e);
        }
        setSurfaceTextureListener(this);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }
}
