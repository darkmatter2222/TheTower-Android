package com.tapjoy.internal;

import android.os.SystemClock;
import com.google.common.base.Ascii;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes5.dex */
public final class gu {
    public long a;
    public long b;
    public long c;

    private static long a(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (((long) i2) << 24) + (((long) i3) << 16) + (((long) i4) << 8) + ((long) i5);
    }

    private static long b(byte[] bArr, int i) {
        return ((a(bArr, i) - 2208988800L) * 1000) + ((a(bArr, i + 4) * 1000) / 4294967296L);
    }

    public final boolean a(String str, int i) throws Throwable {
        boolean z;
        DatagramSocket datagramSocket = null;
        try {
            DatagramSocket datagramSocket2 = new DatagramSocket();
            try {
                try {
                    datagramSocket2.setSoTimeout(i);
                    byte[] bArr = new byte[48];
                    DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, InetAddress.getByName(str), 123);
                    bArr[0] = Ascii.ESC;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j = jCurrentTimeMillis / 1000;
                    long j2 = jCurrentTimeMillis - (j * 1000);
                    long j3 = j + 2208988800L;
                    bArr[40] = (byte) (j3 >> 24);
                    z = false;
                    try {
                        bArr[41] = (byte) (j3 >> 16);
                        bArr[42] = (byte) (j3 >> 8);
                        bArr[43] = (byte) j3;
                        long j4 = (j2 * 4294967296L) / 1000;
                        bArr[44] = (byte) (j4 >> 24);
                        bArr[45] = (byte) (j4 >> 16);
                        bArr[46] = (byte) (j4 >> 8);
                        bArr[47] = (byte) (Math.random() * 255.0d);
                        datagramSocket2.send(datagramPacket);
                        datagramSocket2.receive(new DatagramPacket(bArr, 48));
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        long j5 = jElapsedRealtime2 - jElapsedRealtime;
                        long j6 = jCurrentTimeMillis + j5;
                        long jB = b(bArr, 24);
                        long jB2 = b(bArr, 32);
                        long jB3 = b(bArr, 40);
                        long j7 = j5 - (jB3 - jB2);
                        try {
                            this.a = j6 + (((jB2 - jB) + (jB3 - j6)) / 2);
                            this.b = jElapsedRealtime2;
                            this.c = j7;
                            datagramSocket2.close();
                            return true;
                        } catch (Exception unused) {
                            datagramSocket = datagramSocket2;
                            if (datagramSocket != null) {
                                datagramSocket.close();
                            }
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            datagramSocket = datagramSocket2;
                            if (datagramSocket != null) {
                                datagramSocket.close();
                            }
                            throw th;
                        }
                    } catch (Exception unused2) {
                    }
                } catch (Exception unused3) {
                    z = false;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused4) {
            z = false;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
