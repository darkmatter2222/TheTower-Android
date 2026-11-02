package androidx.webkit;

/* JADX INFO: loaded from: classes2.dex */
public class PrefetchNetworkException extends PrefetchException {
    public static final int NO_HTTP_RESPONSE_STATUS_CODE = 0;
    public final int httpResponseStatusCode;

    public PrefetchNetworkException() {
        this(0);
    }

    public PrefetchNetworkException(int i) {
        this.httpResponseStatusCode = i;
    }

    public PrefetchNetworkException(String str) {
        this(str, 0);
    }

    public PrefetchNetworkException(String str, int i) {
        super(str);
        this.httpResponseStatusCode = i;
    }
}
