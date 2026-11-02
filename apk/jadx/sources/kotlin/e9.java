package kotlin;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.ArraysKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.io.FilesKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class e9 {
    public final File a;
    public volatile boolean b;

    public e9(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = new File(context.getCacheDir(), "gma_ad_responses");
    }

    public static String a(String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = content.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
            Intrinsics.checkNotNull(bArrDigest);
            for (byte b : bArrDigest) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                sb.append(str);
            }
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (Exception e) {
            xs3.a("Failed to calculate checksum", e, 4);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007d A[Catch: all -> 0x0088, TRY_LEAVE, TryCatch #2 {all -> 0x0088, blocks: (B:3:0x0012, B:9:0x002e, B:11:0x0034, B:25:0x0079, B:27:0x007d, B:12:0x003e, B:14:0x0044, B:16:0x004e, B:18:0x0054, B:20:0x005e, B:21:0x0068, B:24:0x0070, B:6:0x0018, B:8:0x0024), top: B:60:0x0012, inners: #1 }] */
    public final v01 a(String filename, String str) {
        v01 m01Var;
        v01 j01Var;
        Intrinsics.checkNotNullParameter(filename, "filename");
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_FILE_READ;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            if (!this.b) {
                this.b = this.a.exists();
                if (!this.b) {
                    m01Var = new m01("Cache directory not found", kk1.INTERNAL_ERROR);
                }
                if (m01Var instanceof i01) {
                    xs3.a((i01) m01Var, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
                return m01Var;
            }
            File fileB = b(filename);
            if (fileB == null) {
                m01Var = new m01("Invalid filename", kk1.INTERNAL_ERROR);
            } else if (fileB.exists()) {
                try {
                    String text$default = FilesKt.readText$default(fileB, null, 1, null);
                    if (str == null || Intrinsics.areEqual(a(text$default), str)) {
                        j01Var = new q01(text$default);
                        m01Var = j01Var;
                    } else {
                        m01Var = new m01("Checksum mismatch for file", kk1.INTERNAL_ERROR);
                    }
                } catch (Exception e) {
                    j01Var = new j01(e, null, "Failed to read file", 2);
                }
            } else {
                m01Var = new m01("File not found", kk1.INTERNAL_ERROR);
            }
            if (m01Var instanceof i01) {
                xs3.a((i01) m01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return m01Var;
        } catch (Throwable th) {
            try {
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                    rr3VarA.a(th);
                }
                if (th instanceof TimeoutCancellationException) {
                    throw new i21(th);
                }
                if (th instanceof CancellationException) {
                    throw new wz0(th);
                }
                if (th instanceof w01) {
                    throw th;
                }
                throw new b01(th);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.closeFinally(rr3VarA, th2);
                    throw th3;
                }
            }
        }
    }

    public final List a() {
        List list;
        if (!this.b) {
            this.b = this.a.exists();
            if (!this.b) {
                return CollectionsKt.emptyList();
            }
        }
        File[] fileArrListFiles = this.a.listFiles();
        return (fileArrListFiles == null || (list = ArraysKt.toList(fileArrListFiles)) == null) ? CollectionsKt.emptyList() : list;
    }

    public final v01 b(String filename, String content) {
        v01 m01Var;
        File fileB;
        v01 j01Var;
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(content, "content");
        s11 s11Var = s11.CUI_NAME_PERSISTENT_CACHE_FILE_WRITE;
        WeakHashMap weakHashMap = hs3.a;
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            if (this.b) {
                m01Var = new q01(p005kotlin.Unit.INSTANCE);
            } else {
                if (!this.b) {
                    this.b = this.a.exists();
                    if (!this.b && !this.a.mkdirs()) {
                        m01Var = new m01("Failed to create cache directory");
                    }
                }
                this.b = true;
                m01Var = new q01(p005kotlin.Unit.INSTANCE);
            }
            if (m01Var instanceof i01) {
                j01Var = (i01) m01Var;
            } else {
                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                String strA = a(content);
                if (strA == null) {
                    j01Var = new m01("Failed to calculate checksum");
                } else {
                    File fileB2 = b(filename + ".tmp");
                    if (fileB2 == null || (fileB = b(filename)) == null) {
                        j01Var = new m01("Invalid filename");
                    } else {
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(fileB2);
                            try {
                                byte[] bytes = content.getBytes(Charsets.UTF_8);
                                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                                fileOutputStream.write(bytes);
                                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(fileOutputStream, null);
                                if (fileB2.renameTo(fileB)) {
                                    j01Var = new q01(strA);
                                } else {
                                    fileB2.delete();
                                    j01Var = new m01("Failed to rename temp file");
                                }
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    CloseableKt.closeFinally(fileOutputStream, th);
                                    throw th2;
                                }
                            }
                        } catch (IOException e) {
                            fileB2.delete();
                            j01Var = new j01(e, null, "Failed to write to temp file", 2);
                        }
                    }
                }
            }
            if (j01Var instanceof i01) {
                xs3.a((i01) j01Var, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return j01Var;
        } catch (Throwable th3) {
            try {
                rr3VarA.b(th3);
                if (th3 instanceof v24) {
                    throw th3;
                }
                if (!(th3 instanceof TimeoutCancellationException) && !(th3 instanceof CancellationException)) {
                    rr3VarA.a(th3);
                }
                if (th3 instanceof TimeoutCancellationException) {
                    throw new i21(th3);
                }
                if (th3 instanceof CancellationException) {
                    throw new wz0(th3);
                }
                if (th3 instanceof w01) {
                    throw th3;
                }
                throw new b01(th3);
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.closeFinally(rr3VarA, th4);
                    throw th5;
                }
            }
        }
    }

    public final File b(String str) {
        File file = new File(this.a, str);
        try {
            String canonicalPath = file.getCanonicalPath();
            Intrinsics.checkNotNullExpressionValue(canonicalPath, "getCanonicalPath(...)");
            String canonicalPath2 = this.a.getCanonicalPath();
            Intrinsics.checkNotNullExpressionValue(canonicalPath2, "getCanonicalPath(...)");
            if (StringsKt.startsWith$default(canonicalPath, canonicalPath2, false, 2, (Object) null)) {
                return file;
            }
            xs3.a("Path traversal detected: " + str, null, 6);
            return null;
        } catch (IOException e) {
            xs3.a("Failed to resolve canonical path for " + str, e, 4);
            return null;
        }
    }
}
