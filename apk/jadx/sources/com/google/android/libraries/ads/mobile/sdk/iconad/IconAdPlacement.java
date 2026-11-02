package com.google.android.libraries.ads.mobile.sdk.iconad;

import p005kotlin.Metadata;
import p005kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement[]) from 0x006e: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.iconad.IconAdPlacement[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "", "", "a", "I", "getValue", "()I", "value", "UNSPECIFIED", "BROWSER", "FOLDER", "HOME", "LOCKSCREEN", "MINUS_ONE_SCREEN", "NOTIFICATION", "SEARCH", "SHARE", "STORE", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class IconAdPlacement {
    UNSPECIFIED(1),
    BROWSER(2),
    FOLDER(3),
    HOME(4),
    LOCKSCREEN(5),
    MINUS_ONE_SCREEN(6),
    NOTIFICATION(7),
    SEARCH(8),
    SHARE(9),
    STORE(10);


    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int value;

    static {
        EnumEntriesKt.enumEntries(iconAdPlacementArr);
    }

    private IconAdPlacement(int i) {
        super(str, i);
        this.value = i;
    }

    public static IconAdPlacement[] values() {
        return (IconAdPlacement[]) b.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
