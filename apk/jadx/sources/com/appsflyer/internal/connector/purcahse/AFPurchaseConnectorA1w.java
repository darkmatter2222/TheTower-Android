package com.appsflyer.internal.connector.purcahse;

import com.ironsource.InterfaceC3664je;
import com.ironsource.InterfaceC3669k1;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AFPurchaseConnectorA1w {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    public static final Map PurchaseClientCompanion;
    private static long PurchaseClientInAppPurchaseValidationResultListener;
    private static long PurchaseClientPurchaseEventDataSource;
    private static long PurchaseClientSubscriptionPurchaseEventDataSource;
    private static byte[] build;
    private static Object getVERSION_NAMEannotations;
    private static byte onNewPurchases;
    private static byte[] setAfClient;
    private static Object setConnector;
    public static final Map setSubscriptionValidationResultListener;

    /* JADX WARN: Code duplicated, block: B:12:0x0066  */
    /* JADX WARN: Code duplicated, block: B:14:0x007a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x007a -> B:15:0x008e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    private static java.lang.String $$c(byte r12, int r13, short r14) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1w.$$c(byte, int, short):java.lang.String");
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 82361. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    static {
        /*
            Method dump skipped, instruction units count: 8236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.connector.purcahse.AFPurchaseConnectorA1w.<clinit>():void");
    }

    private AFPurchaseConnectorA1w() {
    }

    public static int getQuantity(int i) throws Throwable {
        int i2 = 2 % 2;
        int i3 = $10;
        int i4 = ((i3 | 3) << 1) - (i3 ^ 3);
        $11 = i4 % 128;
        int i5 = i4 % 2;
        Object obj = getVERSION_NAMEannotations;
        int i6 = ((i3 | 21) << 1) - (i3 ^ 21);
        $11 = i6 % 128;
        int i7 = i6 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i)};
            byte[] bArr = $$a;
            int iIntValue = ((Integer) Class.forName($$c((byte) (-bArr[19]), bArr[261], (short) 645), true, (ClassLoader) setConnector).getMethod($$c(bArr[91], bArr[66], bArr[7]), Integer.TYPE).invoke(obj, objArr)).intValue();
            int i8 = $11;
            int i9 = ((i8 | 73) << 1) - (i8 ^ 73);
            $10 = i9 % 128;
            if (i9 % 2 != 0) {
                int i10 = 77 / 0;
            }
            return iIntValue;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static Object getQuantity(int i, int i2, char c) throws Throwable {
        int i3 = 2 % 2;
        int i4 = $11;
        int i5 = i4 + 13;
        $10 = i5 % 128;
        int i6 = i5 % 2;
        Object obj = getVERSION_NAMEannotations;
        int i7 = ((i4 | 117) << 1) - (i4 ^ 117);
        int i8 = i7 % 128;
        $10 = i8;
        int i9 = i7 % 2;
        int i10 = (i8 ^ InterfaceC3669k1.d.b.k) + ((i8 & InterfaceC3669k1.d.b.k) << 1);
        $11 = i10 % 128;
        int i11 = i10 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i), Integer.valueOf(i2), Character.valueOf(c)};
            byte[] bArr = $$a;
            Class<?> cls = Class.forName($$c((byte) (-bArr[19]), bArr[261], (short) 645), true, (ClassLoader) setConnector);
            byte b = bArr[2];
            byte b2 = bArr[6];
            Object objInvoke = cls.getMethod($$c(b, b2, b2), Integer.TYPE, Integer.TYPE, Character.TYPE).invoke(obj, objArr);
            int i12 = $11;
            int i13 = ((i12 | 25) << 1) - (i12 ^ 25);
            $10 = i13 % 128;
            if (i13 % 2 == 0) {
                return objInvoke;
            }
            Object obj2 = null;
            obj2.hashCode();
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    static void init$0() {
        int i;
        int i2 = 2 % 2;
        int i3 = $10;
        int i4 = ((i3 | 57) << 1) - (i3 ^ 57);
        $11 = i4 % 128;
        if (i4 % 2 == 0) {
            byte[] bArr = new byte[InterfaceC3664je.c.e];
            System.arraycopy("tQ(è\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾\u0018/\u0000\u0006\u0006\u000eö\u0003\f\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ\u0015\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006ÒóFâ\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ5Ï\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u0014\u0003ò\u001bí\u000f\u0004\f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ8\u000f\u0002\u0003ú\u0001\u0014þ\u0006¿E\b\u0000ô\u0001\n\u000eõÌ\u0016\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006Òó:\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ8\u000f\u0002\u0003ú\u0001\u0014þ\u0006¿E\b\u0000ô\u0001\n\u000eõÌ\u0016\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006ÒóFâ\u0003þÞ,ÿ\u0002â\u0017\u0012û\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ\u0015\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006ÒóI°N5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ6Îî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸(Ö2\u0003ã(\u0000ô\bü\u0015õã4ò\f\t\u0001\u0012à'ï\u0010\tø\u000e\b".getBytes("ISO-8859-1"), 0, bArr, 0, InterfaceC3664je.c.e);
            $$a = bArr;
            i = 21749;
        } else {
            byte[] bArr2 = new byte[InterfaceC3664je.c.e];
            System.arraycopy("tQ(è\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾\u0018/\u0000\u0006\u0006\u000eö\u0003\f\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ\u0015\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006ÒóFâ\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ5Ï\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u0014\u0003ò\u001bí\u000f\u0004\f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ8\u000f\u0002\u0003ú\u0001\u0014þ\u0006¿E\b\u0000ô\u0001\n\u000eõÌ\u0016\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006Òó:\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ8\u000f\u0002\u0003ú\u0001\u0014þ\u0006¿E\b\u0000ô\u0001\n\u000eõÌ\u0016\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006ÒóFâ\u0003þÞ,ÿ\u0002â\u0017\u0012û\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ\u0015\b\r(\u0000ô\bü\u0015õá/\u0002\u0003ú\u0001\u0014þ\u0006ÒóI°N5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ7\u000f\u0002\u0003ú\u0001\u0014þ\u0006ÀD\b\u0000ô\u0001\n\u000eõÍ6Îî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸(Ö2\u0003ã(\u0000ô\bü\u0015õã4ò\f\t\u0001\u0012à'ï\u0010\tø\u000e\b".getBytes("ISO-8859-1"), 0, bArr2, 0, InterfaceC3664je.c.e);
            $$a = bArr2;
            i = 167;
        }
        $$b = i;
    }

    public static int toJsonMap(Object obj) throws Throwable {
        int i = 2 % 2;
        int i2 = $10;
        int i3 = (i2 ^ 119) + ((i2 & 119) << 1);
        int i4 = i3 % 128;
        $11 = i4;
        Object obj2 = null;
        if (i3 % 2 == 0) {
            throw null;
        }
        Object obj3 = getVERSION_NAMEannotations;
        int i5 = i4 + 73;
        $10 = i5 % 128;
        int i6 = i5 % 2;
        try {
            byte[] bArr = $$a;
            int iIntValue = ((Integer) Class.forName($$c((byte) (-bArr[19]), bArr[261], (short) 645), true, (ClassLoader) setConnector).getMethod($$c(bArr[91], bArr[66], bArr[7]), Object.class).invoke(obj3, obj)).intValue();
            int i7 = $11 + 97;
            $10 = i7 % 128;
            if (i7 % 2 == 0) {
                return iIntValue;
            }
            obj2.hashCode();
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }
}
