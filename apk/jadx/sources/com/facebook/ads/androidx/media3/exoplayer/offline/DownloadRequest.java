package com.facebook.ads.androidx.media3.exoplayer.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.StreamKey;
import com.facebook.ads.redexgen.X.AbstractC1722Ln;
import com.facebook.ads.redexgen.X.C1923Tt;
import com.facebook.ads.redexgen.X.N1;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class DownloadRequest implements Parcelable {
    public static byte[] A07;
    public static String[] A08 = {"Vqo9zw759cpxTduOo2Z0Z7InkPBt6OBk", "ny6Dk4DQUMwXbGiFNRI2DTFuzVWbQo8G", "0E2QVT0TlCtLFlH0W0gZvhyngrcGAUzY", "MAfrscJUPBnCT9wpEJdrUgEm3XJbWLH0", "XYw7sleH9bZdsN94gBaxVNgF7r5h8p7c", "2HXtB6dSgMvPuVCIL6BWemhEWtZU8aqk", "HsfwzJU7agHYvQi0HhqF3yOkoUC2Zgl9", "H4F7BsZQyfGN4sQg7EjITAj0pwcMbZv1"};
    public static final Parcelable.Creator<DownloadRequest> CREATOR;
    public final Uri A00;
    public final String A01;
    public final String A02;
    public final String A03;
    public final List<StreamKey> A04;
    public final byte[] A05;
    public final byte[] A06;

    static {
        A01();
        CREATOR = new C1923Tt();
    }

    public DownloadRequest(Parcel parcel) {
        this.A02 = (String) N1.A0f(parcel.readString());
        this.A00 = Uri.parse((String) N1.A0f(parcel.readString()));
        this.A03 = parcel.readString();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.A04 = Collections.unmodifiableList(arrayList);
        this.A06 = parcel.createByteArray();
        this.A01 = parcel.readString();
        this.A05 = (byte[]) N1.A0f(parcel.createByteArray());
    }

    public DownloadRequest(String str, Uri uri, String str2, List<StreamKey> list, byte[] bArr, String str3, byte[] bArr2) {
        int iA0B = N1.A0B(uri, str2);
        if (iA0B == 0 || iA0B == 2 || iA0B == 1) {
            AbstractC1722Ln.A09(str3 == null, A00(1, 38, 119) + iA0B);
        }
        this.A02 = str;
        this.A00 = uri;
        this.A03 = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.A04 = Collections.unmodifiableList(arrayList);
        this.A06 = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.A01 = str3;
        this.A05 = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : N1.A07;
    }

    public /* synthetic */ DownloadRequest(String str, Uri uri, String str2, List list, byte[] bArr, String str3, byte[] bArr2, C1923Tt c1923Tt) {
        this(str, uri, str2, list, bArr, str3, bArr2);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{-98, Ascii.FS, 46, 44, 45, 40, 38, -4, Ascii.SUB, Ascii.FS, 33, Ascii.RS, 4, Ascii.RS, 50, -39, 38, 46, 44, 45, -39, Ascii.ESC, Ascii.RS, -39, 39, 46, 37, 37, -39, Ascii.US, 40, 43, -39, 45, 50, 41, Ascii.RS, -13, -39};
    }

    public final DownloadRequest A02(DownloadRequest downloadRequest) {
        List listEmptyList;
        AbstractC1722Ln.A07(this.A02.equals(downloadRequest.A02));
        if (this.A04.isEmpty() || downloadRequest.A04.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new ArrayList(this.A04);
            for (int i = 0; i < downloadRequest.A04.size(); i++) {
                StreamKey streamKey = downloadRequest.A04.get(i);
                if (!listEmptyList.contains(streamKey)) {
                    listEmptyList.add(streamKey);
                }
            }
        }
        return new DownloadRequest(this.A02, downloadRequest.A00, downloadRequest.A03, listEmptyList, downloadRequest.A06, downloadRequest.A01, downloadRequest.A05);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.A02.equals(downloadRequest.A02) && this.A00.equals(downloadRequest.A00) && N1.A1E(this.A03, downloadRequest.A03) && this.A04.equals(downloadRequest.A04) && Arrays.equals(this.A06, downloadRequest.A06) && N1.A1E(this.A01, downloadRequest.A01) && Arrays.equals(this.A05, downloadRequest.A05);
    }

    public final int hashCode() {
        int iHashCode = (((((((((((this.A02.hashCode() * 31 * 31) + this.A00.hashCode()) * 31) + (this.A03 != null ? this.A03.hashCode() : 0)) * 31) + this.A04.hashCode()) * 31) + Arrays.hashCode(this.A06)) * 31) + (this.A01 != null ? this.A01.hashCode() : 0)) * 31) + Arrays.hashCode(this.A05);
        String[] strArr = A08;
        if (strArr[3].charAt(2) != strArr[6].charAt(2)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[4] = "DMTTUuQV7Q21AbNNMz2EOWd49d3N8IDv";
        strArr2[5] = "yDtNL7e6NrSC1f8BIfHCN2NKzvuU8XLO";
        return iHashCode;
    }

    public final String toString() {
        return this.A03 + A00(0, 1, 34) + this.A02;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.A02);
        parcel.writeString(this.A00.toString());
        parcel.writeString(this.A03);
        parcel.writeInt(this.A04.size());
        for (int i2 = 0; i2 < this.A04.size(); i2++) {
            parcel.writeParcelable(this.A04.get(i2), 0);
        }
        parcel.writeByteArray(this.A06);
        parcel.writeString(this.A01);
        parcel.writeByteArray(this.A05);
    }
}
