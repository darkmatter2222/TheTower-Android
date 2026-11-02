package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import java.util.Spliterator;
import java.util.Spliterators;
import javax.annotation.CheckForNull;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.39, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AnonymousClass39 extends AbstractList<Integer> implements RandomAccess, Serializable {
    public static byte[] A03;
    public static final long serialVersionUID = 0;
    public final int A00;
    public final int A01;
    public final int[] A02;

    static {
        A04();
    }

    public AnonymousClass39(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public AnonymousClass39(int[] iArr, int i, int i2) {
        this.A02 = iArr;
        this.A01 = i;
        this.A00 = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Integer get(int i) {
        AbstractC1995Wu.A00(i, size());
        return Integer.valueOf(this.A02[this.A01 + i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final Integer set(int i, Integer num) {
        AbstractC1995Wu.A00(i, size());
        int i2 = this.A02[this.A01 + i];
        this.A02[this.A01 + i] = ((Integer) AbstractC1995Wu.A04(num)).intValue();
        return Integer.valueOf(i2);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 89);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public final Spliterator.OfInt spliterator() {
        return Spliterators.spliterator(this.A02, this.A01, this.A00, 0);
    }

    public static void A04() {
        A03 = new byte[]{Ascii.SYN, Ascii.SUB};
    }

    public final int[] A05() {
        return Arrays.copyOfRange(this.A02, this.A01, this.A00);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@CheckForNull Object obj) {
        return (obj instanceof Integer) && AnonymousClass19.A04(this.A02, ((Integer) obj).intValue(), this.A01, this.A00) != -1;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AnonymousClass39)) {
            return super.equals(obj);
        }
        AnonymousClass39 anonymousClass39 = (AnonymousClass39) obj;
        int size = size();
        if (anonymousClass39.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (this.A02[this.A01 + i] != anonymousClass39.A02[anonymousClass39.A01 + i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA00 = 1;
        for (int i = this.A01; i < this.A00; i++) {
            iA00 = (iA00 * 31) + AnonymousClass19.A00(this.A02[i]);
        }
        return iA00;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(@CheckForNull Object obj) {
        int iA04;
        if (!(obj instanceof Integer) || (iA04 = AnonymousClass19.A04(this.A02, ((Integer) obj).intValue(), this.A01, this.A00)) < 0) {
            return -1;
        }
        return iA04 - this.A01;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
        int iA05;
        if (!(obj instanceof Integer) || (iA05 = AnonymousClass19.A05(this.A02, ((Integer) obj).intValue(), this.A01, this.A00)) < 0) {
            return -1;
        }
        return iA05 - this.A01;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.A00 - this.A01;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List<Integer> subList(int i, int i2) {
        AbstractC1995Wu.A0B(i, i2, size());
        return i == i2 ? Collections.emptyList() : new AnonymousClass39(this.A02, this.A01 + i, this.A01 + i2);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder(size() * 5);
        sb.append(AbstractJsonLexerKt.BEGIN_LIST).append(this.A02[this.A01]);
        for (int i = this.A01 + 1; i < this.A00; i++) {
            sb.append(A02(0, 2, 99)).append(this.A02[i]);
        }
        return sb.append(AbstractJsonLexerKt.END_LIST).toString();
    }
}
