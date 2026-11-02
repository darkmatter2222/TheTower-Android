package internal.org.chromium.build;

/* JADX INFO: loaded from: classes5.dex */
public class NullUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    private NullUtil() {
    }

    public static <T> T assertNonNull(T t) {
        return t;
    }

    public static <T> T assumeNonNull(T t) {
        return t;
    }
}
