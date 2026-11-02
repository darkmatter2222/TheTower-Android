package com.google.android.gms.ads.formats;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.ironsource.C3510b4;
import java.util.List;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use com.google.android.gms.ads.nativead.NativeAd")
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAd;", "", "()V", "AdChoicesInfo", "Image", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class NativeAd {

    @Deprecated(message = "Use com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo")
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u0004\u0018\u00010\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;", "", "()V", "images", "", "Lcom/google/android/gms/ads/formats/NativeAd$Image;", "getImages", "()Ljava/util/List;", C3510b4.i.K0, "", "getText", "()Ljava/lang/CharSequence;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class AdChoicesInfo {
        public abstract List<Image> getImages();

        public abstract CharSequence getText();
    }

    @Deprecated(message = "Use com.google.android.gms.ads.nativead.NativeAd.Image")
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH&J\n\u0010\t\u001a\u0004\u0018\u00010\nH&J\b\u0010\u000b\u001a\u00020\u0006H\u0016¨\u0006\f"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAd$Image;", "", "()V", "getDrawable", "Landroid/graphics/drawable/Drawable;", "getHeight", "", "getScale", "", "getUri", "Landroid/net/Uri;", "getWidth", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class Image {
        public abstract Drawable getDrawable();

        public int getHeight() {
            return -1;
        }

        public abstract double getScale();

        public abstract Uri getUri();

        public int getWidth() {
            return -1;
        }
    }
}
