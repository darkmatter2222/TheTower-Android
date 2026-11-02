package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ph1 extends SuspendLambda implements Function2 {
    public rr3 a;
    public rr3 b;
    public lh1 c;
    public uj2 d;
    public int e;
    public final /* synthetic */ th1 f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ph1(th1 th1Var, int i, Continuation continuation) {
        super(2, continuation);
        this.f = th1Var;
        this.g = i;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ph1(this.f, this.g, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new ph1(this.f, this.g, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:129:0x0291 A[Catch: all -> 0x02ae, TRY_LEAVE, TryCatch #9 {all -> 0x02ae, blocks: (B:127:0x027c, B:129:0x0291), top: B:181:0x027c }] */
    /* JADX WARN: Code duplicated, block: B:139:0x02ba A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x02be A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x02c9 A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02cd A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:150:0x02d1 A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:151:0x02d2 A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x02d8 A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:155:0x02e0 A[Catch: all -> 0x02e9, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x02e8 A[Catch: all -> 0x02e9, TRY_LEAVE, TryCatch #6 {all -> 0x02e9, blocks: (B:137:0x02b3, B:139:0x02ba, B:141:0x02be, B:143:0x02c2, B:144:0x02c5, B:146:0x02c9, B:148:0x02cd, B:150:0x02d1, B:151:0x02d2, B:152:0x02d7, B:153:0x02d8, B:154:0x02df, B:155:0x02e0, B:156:0x02e7, B:157:0x02e8), top: B:176:0x02b3 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0166 A[Catch: all -> 0x0172, TRY_LEAVE, TryCatch #2 {all -> 0x0172, blocks: (B:58:0x0151, B:60:0x0166), top: B:168:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0180 A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0184 A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x018f A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0193 A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x0197 A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0198 A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x019e A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x01a6 A[Catch: all -> 0x01af, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x01ae A[Catch: all -> 0x01af, TRY_LEAVE, TryCatch #10 {all -> 0x01af, blocks: (B:67:0x0179, B:69:0x0180, B:71:0x0184, B:73:0x0188, B:74:0x018b, B:76:0x018f, B:78:0x0193, B:80:0x0197, B:81:0x0198, B:82:0x019d, B:83:0x019e, B:84:0x01a5, B:85:0x01a6, B:86:0x01ad, B:87:0x01ae), top: B:183:0x0179 }] */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0275, code lost:
    
        if (kotlin.zd3.a(r1, r2, r11) == r12) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0145, code lost:
    
        if (kotlin.zd3.a(r1, r2, r11) == r12) goto L125;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instruction units count: 753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ph1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
