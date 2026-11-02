package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.if, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Cif {
    public static String[] A01 = {"1CU3iw4Trc3qggngkxP7P26jEGLrLZaR", "qcH7HKgKdAybLTWn0rmK7JyCE0S9C8rn", "oNJ0dA1Zpt4CixMfeWT18n5RxX88Y0E3", "FZ8N3xW3PfzdZjJWrErZ2QIuE13XuJtD", "DvPOKoiXqOiYMgjx6IqCziqOSBLzEcJY", "MpMZeZ7xc490HXAXJonG5r1KTyiIoUHH", "NGMd8PbmdSzgSLgNcWdVjgLa", "jY1Ixh6DMe9BpV8yAbg842YJP45AQ2Eb"};
    public final InterfaceC2603ie A00;

    public Cif(InterfaceC2603ie interfaceC2603ie) {
        this.A00 = interfaceC2603ie;
    }

    private int A00(List<C2581iH> list) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size).A00 != 8) {
                z = true;
            } else if (z) {
                return size;
            }
        }
        return -1;
    }

    private void A01(List<C2581iH> list, int i, int i2) {
        C2581iH c2581iH = list.get(i);
        C2581iH c2581iH2 = list.get(i2);
        switch (c2581iH2.A00) {
            case 1:
                A02(list, i, c2581iH, i2, c2581iH2);
                break;
            case 2:
                A03(list, i, c2581iH, i2, c2581iH2);
                break;
            case 4:
                A04(list, i, c2581iH, i2, c2581iH2);
                break;
        }
    }

    private void A02(List<C2581iH> list, int i, C2581iH c2581iH, int i2, C2581iH c2581iH2) {
        int i3 = c2581iH.A01 < c2581iH2.A02 ? 0 - 1 : 0;
        if (c2581iH.A02 < c2581iH2.A02) {
            i3++;
        }
        if (c2581iH2.A02 <= c2581iH.A02) {
            c2581iH.A02 += c2581iH2.A01;
        }
        if (c2581iH2.A02 <= c2581iH.A01) {
            c2581iH.A01 += c2581iH2.A01;
        }
        c2581iH2.A02 += i3;
        list.set(i, c2581iH2);
        list.set(i2, c2581iH);
    }

    private final void A03(List<C2581iH> list, int i, C2581iH c2581iH, int i2, C2581iH c2581iH2) {
        boolean z;
        C2581iH c2581iHADb = null;
        boolean z2 = false;
        if (c2581iH.A02 < c2581iH.A01) {
            z = false;
            if (c2581iH2.A02 == c2581iH.A02 && c2581iH2.A01 == c2581iH.A01 - c2581iH.A02) {
                z2 = true;
            }
        } else {
            z = true;
            if (c2581iH2.A02 == c2581iH.A01 + 1 && c2581iH2.A01 == c2581iH.A02 - c2581iH.A01) {
                z2 = true;
            }
        }
        if (c2581iH.A01 < c2581iH2.A02) {
            c2581iH2.A02--;
        } else if (c2581iH.A01 < c2581iH2.A02 + c2581iH2.A01) {
            c2581iH2.A01--;
            c2581iH.A00 = 2;
            c2581iH.A01 = 1;
            int i3 = c2581iH2.A01;
            if (A01[6].length() == 11) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[2] = "8AUTweiK2qHuqKAjuAP9RAHRjtqC9cI5";
            strArr[3] = "fxjAamJyQJjVOLb9u9QxKoC9co41mLuZ";
            if (i3 == 0) {
                list.remove(i2);
                this.A00.AIj(c2581iH2);
                return;
            }
            return;
        }
        if (c2581iH.A02 <= c2581iH2.A02) {
            c2581iH2.A02++;
        } else if (c2581iH.A02 < c2581iH2.A02 + c2581iH2.A01) {
            c2581iHADb = this.A00.ADb(2, c2581iH.A02 + 1, (c2581iH2.A02 + c2581iH2.A01) - c2581iH.A02, null);
            c2581iH2.A01 = c2581iH.A02 - c2581iH2.A02;
        }
        if (z2) {
            list.set(i, c2581iH2);
            list.remove(i2);
            this.A00.AIj(c2581iH);
            return;
        }
        if (z) {
            if (c2581iHADb != null) {
                if (c2581iH.A02 > c2581iHADb.A02) {
                    c2581iH.A02 -= c2581iHADb.A01;
                }
                if (c2581iH.A01 > c2581iHADb.A02) {
                    c2581iH.A01 -= c2581iHADb.A01;
                }
            }
            if (c2581iH.A02 > c2581iH2.A02) {
                c2581iH.A02 -= c2581iH2.A01;
            }
            if (c2581iH.A01 > c2581iH2.A02) {
                c2581iH.A01 -= c2581iH2.A01;
            }
        } else {
            if (c2581iHADb != null) {
                if (c2581iH.A02 >= c2581iHADb.A02) {
                    c2581iH.A02 -= c2581iHADb.A01;
                }
                if (c2581iH.A01 >= c2581iHADb.A02) {
                    c2581iH.A01 -= c2581iHADb.A01;
                }
            }
            if (c2581iH.A02 >= c2581iH2.A02) {
                c2581iH.A02 -= c2581iH2.A01;
            }
            if (c2581iH.A01 >= c2581iH2.A02) {
                c2581iH.A01 -= c2581iH2.A01;
            }
        }
        list.set(i, c2581iH2);
        String[] strArr2 = A01;
        if (strArr2[1].charAt(7) == strArr2[5].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr3 = A01;
        strArr3[1] = "R1vl9Esi4EQuoIO0IEs3BYKA9Bp2yfIo";
        strArr3[5] = "ll7MLLjNdpT1F8Cd0W3dCYnGe1w6KT9M";
        if (c2581iH.A02 != c2581iH.A01) {
            list.set(i2, c2581iH);
        } else {
            list.remove(i2);
        }
        if (c2581iHADb != null) {
            list.add(i, c2581iHADb);
        }
    }

    private final void A04(List<C2581iH> list, int i, C2581iH c2581iH, int i2, C2581iH c2581iH2) {
        C2581iH c2581iHADb = null;
        C2581iH c2581iHADb2 = null;
        if (c2581iH.A01 < c2581iH2.A02) {
            c2581iH2.A02--;
        } else if (c2581iH.A01 < c2581iH2.A02 + c2581iH2.A01) {
            c2581iH2.A01--;
            c2581iHADb = this.A00.ADb(4, c2581iH.A02, 1, c2581iH2.A03);
        }
        if (c2581iH.A02 <= c2581iH2.A02) {
            c2581iH2.A02++;
        } else if (c2581iH.A02 < c2581iH2.A02 + c2581iH2.A01) {
            int i3 = (c2581iH2.A02 + c2581iH2.A01) - c2581iH.A02;
            c2581iHADb2 = this.A00.ADb(4, c2581iH.A02 + 1, i3, c2581iH2.A03);
            c2581iH2.A01 -= i3;
        }
        list.set(i2, c2581iH);
        if (c2581iH2.A01 > 0) {
            list.set(i, c2581iH2);
        } else {
            list.remove(i);
            this.A00.AIj(c2581iH2);
        }
        if (c2581iHADb != null) {
            list.add(i, c2581iHADb);
        }
        if (c2581iHADb2 != null) {
            list.add(i, c2581iHADb2);
        }
    }

    public final void A05(List<C2581iH> list) {
        while (true) {
            int iA00 = A00(list);
            if (iA00 == -1) {
                return;
            } else {
                A01(list, iA00, iA00 + 1);
            }
        }
    }
}
