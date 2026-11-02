package kotlin;

import android.content.Context;
import android.net.Uri;
import com.google.common.base.Splitter;
import java.io.ByteArrayInputStream;
import java.net.URL;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class lz1 extends SuspendLambda implements Function2 {
    public String a;
    public mz1 b;
    public r31 c;
    public String d;
    public String e;
    public Context f;
    public rr3 g;
    public rr3 h;
    public int i;
    public final /* synthetic */ mz1 j;
    public final /* synthetic */ String k;
    public final /* synthetic */ r31 l;
    public final /* synthetic */ String m;
    public final /* synthetic */ String n;
    public final /* synthetic */ Context o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz1(mz1 mz1Var, String str, r31 r31Var, String str2, String str3, Context context, Continuation continuation) {
        super(2, continuation);
        this.j = mz1Var;
        this.k = str;
        this.l = r31Var;
        this.m = str2;
        this.n = str3;
        this.o = context;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lz1(this.j, this.k, this.l, this.m, this.n, this.o, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((lz1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0239 A[Catch: all -> 0x0034, TRY_LEAVE, TryCatch #5 {all -> 0x0034, blocks: (B:7:0x0026, B:87:0x01c3, B:89:0x01c9, B:108:0x0233, B:110:0x0239, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214, B:107:0x0223), top: B:147:0x0026 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x024e A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x025d A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0261 A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0265 A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x0266 A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x026c A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0274 A[Catch: all -> 0x027d, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x027c A[Catch: all -> 0x027d, TRY_LEAVE, TryCatch #8 {all -> 0x027d, blocks: (B:115:0x0247, B:117:0x024e, B:119:0x0252, B:121:0x0256, B:122:0x0259, B:124:0x025d, B:126:0x0261, B:128:0x0265, B:129:0x0266, B:130:0x026b, B:131:0x026c, B:132:0x0273, B:133:0x0274, B:134:0x027b, B:135:0x027c), top: B:151:0x0247 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00cc A[Catch: all -> 0x005f, Exception -> 0x011b, TryCatch #6 {Exception -> 0x011b, blocks: (B:29:0x00c6, B:31:0x00cc, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117), top: B:150:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00dd A[Catch: all -> 0x005f, Exception -> 0x011b, TryCatch #6 {Exception -> 0x011b, blocks: (B:29:0x00c6, B:31:0x00cc, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117), top: B:150:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00e1 A[Catch: all -> 0x005f, Exception -> 0x011b, TryCatch #6 {Exception -> 0x011b, blocks: (B:29:0x00c6, B:31:0x00cc, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117), top: B:150:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00f9 A[Catch: all -> 0x005f, Exception -> 0x011b, TryCatch #6 {Exception -> 0x011b, blocks: (B:29:0x00c6, B:31:0x00cc, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117), top: B:150:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:39:0x0102 A[Catch: all -> 0x005f, Exception -> 0x011b, TryCatch #6 {Exception -> 0x011b, blocks: (B:29:0x00c6, B:31:0x00cc, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117), top: B:150:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0117 A[Catch: all -> 0x005f, Exception -> 0x011b, TRY_LEAVE, TryCatch #6 {Exception -> 0x011b, blocks: (B:29:0x00c6, B:31:0x00cc, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117), top: B:150:0x00c6 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x013c A[Catch: all -> 0x005f, TRY_LEAVE, TryCatch #13 {all -> 0x005f, blocks: (B:16:0x0052, B:29:0x00c6, B:31:0x00cc, B:50:0x0136, B:52:0x013c, B:32:0x00dd, B:34:0x00e1, B:36:0x00f9, B:39:0x0102, B:40:0x0117, B:49:0x0126), top: B:152:0x0052 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0150 A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x015f A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0163 A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0167 A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0168 A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x016e A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0176 A[Catch: all -> 0x017f, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x017e A[Catch: all -> 0x017f, TRY_LEAVE, TryCatch #12 {all -> 0x017f, blocks: (B:55:0x0149, B:57:0x0150, B:59:0x0154, B:61:0x0158, B:62:0x015b, B:64:0x015f, B:66:0x0163, B:68:0x0167, B:69:0x0168, B:70:0x016d, B:71:0x016e, B:72:0x0175, B:73:0x0176, B:74:0x017d, B:75:0x017e), top: B:154:0x0149 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01c9 A[Catch: all -> 0x0034, Exception -> 0x0218, TryCatch #3 {Exception -> 0x0218, blocks: (B:87:0x01c3, B:89:0x01c9, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214), top: B:146:0x01c3 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01da A[Catch: all -> 0x0034, Exception -> 0x0218, TryCatch #3 {Exception -> 0x0218, blocks: (B:87:0x01c3, B:89:0x01c9, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214), top: B:146:0x01c3 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01de A[Catch: all -> 0x0034, Exception -> 0x0218, TryCatch #3 {Exception -> 0x0218, blocks: (B:87:0x01c3, B:89:0x01c9, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214), top: B:146:0x01c3 }] */
    /* JADX WARN: Code duplicated, block: B:94:0x01f6 A[Catch: all -> 0x0034, Exception -> 0x0218, TryCatch #3 {Exception -> 0x0218, blocks: (B:87:0x01c3, B:89:0x01c9, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214), top: B:146:0x01c3 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ff A[Catch: all -> 0x0034, Exception -> 0x0218, TryCatch #3 {Exception -> 0x0218, blocks: (B:87:0x01c3, B:89:0x01c9, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214), top: B:146:0x01c3 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0214 A[Catch: all -> 0x0034, Exception -> 0x0218, TRY_LEAVE, TryCatch #3 {Exception -> 0x0218, blocks: (B:87:0x01c3, B:89:0x01c9, B:90:0x01da, B:92:0x01de, B:94:0x01f6, B:97:0x01ff, B:98:0x0214), top: B:146:0x01c3 }] */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        mz1 mz1Var;
        r31 r31Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        Object objA;
        String str;
        String str2;
        String str3;
        Context context;
        mz1 mz1Var2;
        r31 r31Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object objA2;
        String str4;
        String str5;
        String str6;
        Context context2;
        mz1 mz1Var3;
        r31 r31Var3;
        Object obj2;
        v01 v01Var;
        p53 p53VarA;
        ByteArrayInputStream byteArrayInputStreamA;
        Object obj3;
        v01 v01Var2;
        p53 p53VarA2;
        ByteArrayInputStream byteArrayInputStreamA2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.i;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            g83 g83Var = this.j.g;
            s11 s11Var = s11.CUI_NAME_MRAID_STORE_PICTURE;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = this.j.h;
            String str7 = this.k;
            mz1Var = this.j;
            r31Var = this.l;
            String str8 = this.m;
            String str9 = this.n;
            Context context3 = this.o;
            if (hs3.c() == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    URL url = new URL(Uri.parse(str7).toString());
                    e01 e01Var = mz1Var.e;
                    this.a = str7;
                    this.b = mz1Var;
                    this.c = r31Var;
                    this.d = str8;
                    this.e = str9;
                    this.f = context3;
                    this.g = rr3VarA2;
                    this.h = rr3VarA2;
                    this.i = 1;
                    objA2 = e01.a(e01Var, url, null, this, 30);
                    if (objA2 != coroutine_suspended) {
                        str4 = str9;
                        str5 = str7;
                        str6 = str8;
                        rr3Var4 = rr3VarA2;
                        context2 = context3;
                        mz1Var3 = mz1Var;
                        r31Var3 = r31Var;
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            mz1Var3.a("Unable to download image: " + str5, r31Var3, true);
                        } else if (v01Var instanceof q01) {
                            Splitter splitter = f01.a;
                            f01.a(new kz1(str5));
                            p53VarA = ((h81) ((q01) v01Var).a()).a();
                            if (p53VarA != null) {
                                byteArrayInputStreamA = p53VarA.a();
                            } else {
                                byteArrayInputStreamA = null;
                            }
                            if (byteArrayInputStreamA == null) {
                                mz1Var3.a("Unable to download image: " + str5 + ", no responseBody", r31Var3, true);
                            } else {
                                mz1Var3.a(byteArrayInputStreamA, str6, str4, context2, r31Var3);
                            }
                        }
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA2, null);
                    }
                } catch (Exception e) {
                    e = e;
                    rr3Var4 = rr3VarA2;
                    mz1Var.a("Could not store picture: " + e, r31Var, true);
                } catch (Throwable th) {
                    th = th;
                    rr3Var3 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    URL url2 = new URL(Uri.parse(str7).toString());
                    e01 e01Var2 = mz1Var.e;
                    this.a = str7;
                    this.b = mz1Var;
                    this.c = r31Var;
                    this.d = str8;
                    this.e = str9;
                    this.f = context3;
                    this.g = rr3VarA;
                    this.h = rr3VarA;
                    this.i = 2;
                    objA = e01.a(e01Var2, url2, null, this, 30);
                    if (objA != coroutine_suspended) {
                        str = str9;
                        str2 = str7;
                        str3 = str8;
                        rr3Var2 = rr3VarA;
                        context = context3;
                        mz1Var2 = mz1Var;
                        r31Var2 = r31Var;
                        v01Var2 = (v01) objA;
                        if (v01Var2 instanceof i01) {
                            mz1Var2.a("Unable to download image: " + str2, r31Var2, true);
                        } else if (v01Var2 instanceof q01) {
                            Splitter splitter2 = f01.a;
                            f01.a(new kz1(str2));
                            p53VarA2 = ((h81) ((q01) v01Var2).a()).a();
                            if (p53VarA2 != null) {
                                byteArrayInputStreamA2 = p53VarA2.a();
                            } else {
                                byteArrayInputStreamA2 = null;
                            }
                            if (byteArrayInputStreamA2 == null) {
                                mz1Var2.a("Unable to download image: " + str2 + ", no responseBody", r31Var2, true);
                            } else {
                                mz1Var2.a(byteArrayInputStreamA2, str3, str, context, r31Var2);
                            }
                        }
                        obj3 = p005kotlin.Unit.INSTANCE;
                        if (obj3 instanceof i01) {
                            xs3.a((i01) obj3, false);
                        }
                        CloseableKt.closeFinally(rr3VarA, null);
                    }
                } catch (Exception e2) {
                    e = e2;
                    rr3Var2 = rr3VarA;
                    mz1Var.a("Could not store picture: " + e, r31Var, true);
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            rr3VarA2 = this.h;
            rr3Var4 = this.g;
            Context context4 = this.f;
            String str10 = this.e;
            String str11 = this.d;
            r31 r31Var4 = this.c;
            mz1 mz1Var4 = this.b;
            String str12 = this.a;
            try {
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    context2 = context4;
                    str5 = str12;
                    r31Var3 = r31Var4;
                    mz1Var3 = mz1Var4;
                    str4 = str10;
                    str6 = str11;
                    objA2 = obj;
                    try {
                        v01Var = (v01) objA2;
                        if (v01Var instanceof i01) {
                            mz1Var3.a("Unable to download image: " + str5, r31Var3, true);
                        } else if (v01Var instanceof q01) {
                            Splitter splitter3 = f01.a;
                            f01.a(new kz1(str5));
                            p53VarA = ((h81) ((q01) v01Var).a()).a();
                            if (p53VarA != null) {
                                byteArrayInputStreamA = p53VarA.a();
                            } else {
                                byteArrayInputStreamA = null;
                            }
                            if (byteArrayInputStreamA == null) {
                                mz1Var3.a("Unable to download image: " + str5 + ", no responseBody", r31Var3, true);
                            } else {
                                mz1Var3.a(byteArrayInputStreamA, str6, str4, context2, r31Var3);
                            }
                        }
                    } catch (Exception e3) {
                        e = e3;
                        mz1Var4 = mz1Var3;
                        r31Var4 = r31Var3;
                        r31Var = r31Var4;
                        mz1Var = mz1Var4;
                        mz1Var.a("Could not store picture: " + e, r31Var, true);
                    }
                } catch (Exception e4) {
                    e = e4;
                    r31Var = r31Var4;
                    mz1Var = mz1Var4;
                    mz1Var.a("Could not store picture: " + e, r31Var, true);
                    obj2 = p005kotlin.Unit.INSTANCE;
                    if (obj2 instanceof i01) {
                        xs3.a((i01) obj2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA2, null);
                    return p005kotlin.Unit.INSTANCE;
                }
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3VarA2, null);
            } catch (Throwable th3) {
                th = th3;
                rr3Var3 = rr3VarA2;
                rr3VarA2 = rr3Var4;
                try {
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA2.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(rr3Var3, th4);
                        throw th5;
                    }
                }
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3VarA = this.h;
            rr3Var2 = this.g;
            Context context5 = this.f;
            String str13 = this.e;
            String str14 = this.d;
            r31 r31Var5 = this.c;
            mz1 mz1Var5 = this.b;
            String str15 = this.a;
            try {
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    context = context5;
                    str2 = str15;
                    r31Var2 = r31Var5;
                    mz1Var2 = mz1Var5;
                    str = str13;
                    str3 = str14;
                    objA = obj;
                    try {
                        v01Var2 = (v01) objA;
                        if (v01Var2 instanceof i01) {
                            mz1Var2.a("Unable to download image: " + str2, r31Var2, true);
                        } else if (v01Var2 instanceof q01) {
                            Splitter splitter4 = f01.a;
                            f01.a(new kz1(str2));
                            p53VarA2 = ((h81) ((q01) v01Var2).a()).a();
                            if (p53VarA2 != null) {
                                byteArrayInputStreamA2 = p53VarA2.a();
                            } else {
                                byteArrayInputStreamA2 = null;
                            }
                            if (byteArrayInputStreamA2 == null) {
                                mz1Var2.a("Unable to download image: " + str2 + ", no responseBody", r31Var2, true);
                            } else {
                                mz1Var2.a(byteArrayInputStreamA2, str3, str, context, r31Var2);
                            }
                        }
                    } catch (Exception e5) {
                        e = e5;
                        mz1Var5 = mz1Var2;
                        r31Var5 = r31Var2;
                        r31Var = r31Var5;
                        mz1Var = mz1Var5;
                        mz1Var.a("Could not store picture: " + e, r31Var, true);
                    }
                } catch (Exception e6) {
                    e = e6;
                    r31Var = r31Var5;
                    mz1Var = mz1Var5;
                    mz1Var.a("Could not store picture: " + e, r31Var, true);
                    obj3 = p005kotlin.Unit.INSTANCE;
                    if (obj3 instanceof i01) {
                        xs3.a((i01) obj3, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    return p005kotlin.Unit.INSTANCE;
                }
                obj3 = p005kotlin.Unit.INSTANCE;
                if (obj3 instanceof i01) {
                    xs3.a((i01) obj3, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
            } catch (Throwable th6) {
                th = th6;
                rr3Var = rr3VarA;
                rr3VarA = rr3Var2;
                try {
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th7) {
                    try {
                        throw th7;
                    } catch (Throwable th8) {
                        CloseableKt.closeFinally(rr3Var, th7);
                        throw th8;
                    }
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
