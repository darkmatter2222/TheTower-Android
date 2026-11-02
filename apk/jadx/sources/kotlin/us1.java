package kotlin;

import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class us1 implements r41 {
    public final j12 a;
    public final q52 b;
    public final AtomicBoolean c;

    public us1(j12 nativeAdCore, q52 nativeJavascriptEngine) {
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        this.a = nativeAdCore;
        this.b = nativeJavascriptEngine;
        this.c = new AtomicBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00d2 A[Catch: all -> 0x0110, TryCatch #0 {all -> 0x0110, blocks: (B:41:0x00c7, B:43:0x00d2, B:44:0x00e3), top: B:89:0x00c7 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00e3 A[Catch: all -> 0x0110, TRY_LEAVE, TryCatch #0 {all -> 0x0110, blocks: (B:41:0x00c7, B:43:0x00d2, B:44:0x00e3), top: B:89:0x00c7 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x011f A[Catch: all -> 0x0045, TRY_LEAVE, TryCatch #4 {all -> 0x0045, blocks: (B:13:0x0040, B:53:0x0119, B:55:0x011f), top: B:95:0x0040 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0136 A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:66:0x013a A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0145 A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0149 A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:75:0x014d A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:76:0x014e A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0154 A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:80:0x015c A[Catch: all -> 0x0165, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0164 A[Catch: all -> 0x0165, TRY_LEAVE, TryCatch #3 {all -> 0x0165, blocks: (B:62:0x012f, B:64:0x0136, B:66:0x013a, B:68:0x013e, B:69:0x0141, B:71:0x0145, B:73:0x0149, B:75:0x014d, B:76:0x014e, B:77:0x0153, B:78:0x0154, B:79:0x015b, B:80:0x015c, B:81:0x0163, B:82:0x0164), top: B:94:0x012f }] */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x010a, code lost:
    
        if (r0.a(r2, "sendMessageToNativeJs", r10) == r5) goto L46;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v8, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // kotlin.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.r31 r18, java.util.Map r19, p005kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.us1.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_LOAD_OVERLAY_HTML;
    }
}
