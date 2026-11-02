package com.facebook.ads.redexgen.X;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QF {
    public static String[] A00 = {"OgUX7gzHpSeJddbuscLmGOVyd42yu1Hx", "gpaMURIjLEBwPTzUXsfheCKWNhP9NbwP", "O26lRHT6uqDaYF5G5NQzACbygP1ky54G", "jzVXvLz2O7l3wzMO9IeKYiuI0zv4eCqt", "HyvN7DjBq9RkCvHIGaKBihOfJzb", "E6sXCyKDum1pQyP9FFM8iFEhCtA6HUxR", "OzsBZ6lJmJbmFi9rg2hG2pFSR2EhuJ44", "TFcv15lauI8WMsCfswAvPYflIE2Dxc6v"};
    public static final AudioAttributes A01 = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

    public static int A00(int i, int i2) {
        for (int i3 = 8; i3 > 0; i3--) {
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(N1.A01(i3)).build(), A01)) {
                return i3;
            }
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int[] A01() {
        C12944e c12944eA01 = AbstractC14149l.A01();
        VV it = QG.A06.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A00[1].charAt(7) == 'z') {
                throw new RuntimeException();
            }
            A00[3] = "SXeZgNZCF5MEef6vLBLd96WSlgFBQ6u4";
            if (!zHasNext) {
                c12944eA01.A04(2);
                return AnonymousClass19.A0B(c12944eA01.A05());
            }
            int iIntValue = ((Integer) it.next()).intValue();
            if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), A01)) {
                c12944eA01.A04(Integer.valueOf(iIntValue));
            }
        }
    }
}
