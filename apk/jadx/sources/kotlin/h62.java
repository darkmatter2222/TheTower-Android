package kotlin;

import com.google.gson.JsonObject;
import java.io.Closeable;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class h62 extends SuspendLambda implements Function1 {
    public Object a;
    public Object b;
    public Closeable c;
    public Object d;
    public rr3 e;
    public rr3 f;
    public int g;
    public final /* synthetic */ j62 h;
    public final /* synthetic */ eo2 i;
    public final /* synthetic */ JsonObject j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h62(eo2 eo2Var, j62 j62Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.h = j62Var;
        this.i = eo2Var;
        this.j = jsonObject;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new h62(this.i, this.h, this.j, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((h62) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x01f4 A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:106:0x01f8 A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01fc A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01fd A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0203 A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:113:0x020b A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:115:0x0213 A[Catch: all -> 0x0214, TRY_LEAVE, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00cf A[Catch: all -> 0x006d, TRY_LEAVE, TryCatch #9 {all -> 0x006d, blocks: (B:56:0x0185, B:50:0x013d, B:52:0x0144, B:53:0x0170, B:20:0x0066, B:35:0x00c9, B:37:0x00cf, B:40:0x00d8, B:42:0x00dc, B:92:0x01d7, B:93:0x01dc), top: B:138:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d8 A[Catch: all -> 0x006d, TRY_ENTER, TryCatch #9 {all -> 0x006d, blocks: (B:56:0x0185, B:50:0x013d, B:52:0x0144, B:53:0x0170, B:20:0x0066, B:35:0x00c9, B:37:0x00cf, B:40:0x00d8, B:42:0x00dc, B:92:0x01d7, B:93:0x01dc), top: B:138:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc A[Catch: all -> 0x006d, TRY_LEAVE, TryCatch #9 {all -> 0x006d, blocks: (B:56:0x0185, B:50:0x013d, B:52:0x0144, B:53:0x0170, B:20:0x0066, B:35:0x00c9, B:37:0x00cf, B:40:0x00d8, B:42:0x00dc, B:92:0x01d7, B:93:0x01dc), top: B:138:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0130  */
    /* JADX WARN: Code duplicated, block: B:49:0x0137 A[Catch: all -> 0x018b, TRY_LEAVE, TryCatch #8 {all -> 0x018b, blocks: (B:47:0x0131, B:49:0x0137), top: B:136:0x0131 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0144 A[Catch: all -> 0x006d, TryCatch #9 {all -> 0x006d, blocks: (B:56:0x0185, B:50:0x013d, B:52:0x0144, B:53:0x0170, B:20:0x0066, B:35:0x00c9, B:37:0x00cf, B:40:0x00d8, B:42:0x00dc, B:92:0x01d7, B:93:0x01dc), top: B:138:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0170 A[Catch: all -> 0x006d, TryCatch #9 {all -> 0x006d, blocks: (B:56:0x0185, B:50:0x013d, B:52:0x0144, B:53:0x0170, B:20:0x0066, B:35:0x00c9, B:37:0x00cf, B:40:0x00d8, B:42:0x00dc, B:92:0x01d7, B:93:0x01dc), top: B:138:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x019c A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01a0 A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01ab A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x01af A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01b3 A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01b4 A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01ba A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01c2 A[Catch: all -> 0x01cb, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01ca A[Catch: all -> 0x01cb, TRY_LEAVE, TryCatch #7 {all -> 0x01cb, blocks: (B:63:0x0195, B:65:0x019c, B:67:0x01a0, B:69:0x01a4, B:70:0x01a7, B:72:0x01ab, B:74:0x01af, B:76:0x01b3, B:77:0x01b4, B:78:0x01b9, B:79:0x01ba, B:80:0x01c1, B:81:0x01c2, B:82:0x01c9, B:83:0x01ca), top: B:135:0x0195 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01d7 A[Catch: all -> 0x006d, TRY_ENTER, TryCatch #9 {all -> 0x006d, blocks: (B:56:0x0185, B:50:0x013d, B:52:0x0144, B:53:0x0170, B:20:0x0066, B:35:0x00c9, B:37:0x00cf, B:40:0x00d8, B:42:0x00dc, B:92:0x01d7, B:93:0x01dc), top: B:138:0x0066 }] */
    /* JADX WARN: Code duplicated, block: B:97:0x01e5 A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01e9 A[Catch: all -> 0x0214, TryCatch #3 {all -> 0x0214, blocks: (B:95:0x01de, B:97:0x01e5, B:99:0x01e9, B:101:0x01ed, B:102:0x01f0, B:104:0x01f4, B:106:0x01f8, B:108:0x01fc, B:109:0x01fd, B:110:0x0202, B:111:0x0203, B:112:0x020a, B:113:0x020b, B:114:0x0212, B:115:0x0213), top: B:128:0x01de }] */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0182, code lost:
    
        if (r3 == r0) goto L55;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.h62.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
