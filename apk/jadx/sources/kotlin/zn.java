package kotlin;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.common.base.StandardSystemProperty;
import com.google.common.io.PatternFilenameFilter;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zn {
    public static final Pattern c = Pattern.compile(".*\\.so$", 2);
    public final Context a;
    public final x9 b;

    public zn(Context context, x9 x9Var) {
        this.a = context;
        this.b = x9Var;
    }

    public final yn a() {
        yn ynVar;
        File file = new File(new File(this.a.getApplicationInfo().dataDir), "lib");
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles(new PatternFilenameFilter(c));
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                x9 x9Var = this.b;
                if (x9Var != null) {
                    ((st1) ((y9) x9Var).a).a(5017, -1L, null, "No .so");
                    TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                    taskCompletionSource.setResult(Boolean.TRUE);
                    taskCompletionSource.getTask();
                }
                ynVar = yn.UNKNOWN;
            } else {
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileArrListFiles[0]);
                    try {
                        byte[] bArr = new byte[20];
                        if (fileInputStream.read(bArr) == 20) {
                            byte[] bArr2 = {0, 0};
                            if (bArr[5] == 2) {
                                a(null, bArr);
                                ynVar = yn.UNSUPPORTED;
                            } else {
                                bArr2[0] = bArr[19];
                                bArr2[1] = bArr[18];
                                short s = ByteBuffer.wrap(bArr2).getShort();
                                if (s == 3) {
                                    ynVar = yn.X86;
                                } else if (s == 40) {
                                    ynVar = yn.ARM7;
                                } else if (s == 62) {
                                    ynVar = yn.X86_64;
                                } else if (s == 183) {
                                    ynVar = yn.ARM64;
                                } else if (s != 243) {
                                    a(null, bArr);
                                    ynVar = yn.UNSUPPORTED;
                                } else {
                                    ynVar = yn.RISCV64;
                                }
                            }
                            fileInputStream.close();
                        } else {
                            fileInputStream.close();
                            ynVar = yn.UNSUPPORTED;
                        }
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (IOException e) {
                    a(e.toString(), null);
                }
            }
        } else {
            x9 x9Var2 = this.b;
            if (x9Var2 != null) {
                ((st1) ((y9) x9Var2).a).a(5017, -1L, null, "No lib/");
                TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
                taskCompletionSource2.setResult(Boolean.TRUE);
                taskCompletionSource2.getTask();
            }
            ynVar = yn.UNKNOWN;
        }
        if (ynVar == yn.UNKNOWN) {
            HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
            String strValue = StandardSystemProperty.OS_ARCH.value();
            if (TextUtils.isEmpty(strValue) || !hashSet.contains(strValue)) {
                try {
                    String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                    if (strArr == null || strArr.length <= 0) {
                        strValue = Build.CPU_ABI;
                        if (strValue == null) {
                            strValue = Build.CPU_ABI2;
                        }
                    } else {
                        strValue = strArr[0];
                    }
                } catch (IllegalAccessException e2) {
                    x9 x9Var3 = this.b;
                    if (x9Var3 != null) {
                        x9Var3.a(2024, 0L, e2);
                    }
                } catch (NoSuchFieldException e3) {
                    x9 x9Var4 = this.b;
                    if (x9Var4 != null) {
                        x9Var4.a(2024, 0L, e3);
                    }
                }
            }
            if (TextUtils.isEmpty(strValue)) {
                a("Empty dev arch", null);
                ynVar = yn.UNSUPPORTED;
            } else if (strValue.equalsIgnoreCase("i686") || strValue.equalsIgnoreCase("x86")) {
                ynVar = yn.X86;
            } else if (strValue.equalsIgnoreCase("x86_64")) {
                ynVar = yn.X86_64;
            } else if (strValue.equalsIgnoreCase("arm64-v8a")) {
                ynVar = yn.ARM64;
            } else if (strValue.equalsIgnoreCase("armeabi-v7a") || strValue.equalsIgnoreCase("armv71")) {
                ynVar = yn.ARM7;
            } else if (strValue.equalsIgnoreCase("riscv64")) {
                ynVar = yn.RISCV64;
            } else {
                a(strValue, null);
                ynVar = yn.UNSUPPORTED;
            }
        }
        x9 x9Var5 = this.b;
        if (x9Var5 != null) {
            ((st1) ((y9) x9Var5).a).a(5018, -1L, null, ynVar.name());
            TaskCompletionSource taskCompletionSource3 = new TaskCompletionSource();
            taskCompletionSource3.setResult(Boolean.TRUE);
            taskCompletionSource3.getTask();
        }
        return ynVar;
    }

    public final void a(String str, byte[] bArr) {
        if (this.b == null) {
            return;
        }
        StringBuilder sb = new StringBuilder("os.arch:");
        sb.append(StandardSystemProperty.OS_ARCH.value()).append(";");
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                sb.append("supported_abis:").append(Arrays.toString(strArr)).append(";");
            }
        } catch (IllegalAccessException | NoSuchFieldException unused) {
        }
        sb.append("CPU_ABI:").append(Build.CPU_ABI).append(";CPU_ABI2:");
        sb.append(Build.CPU_ABI2).append(";");
        if (bArr != null) {
            sb.append("ELF:").append(Arrays.toString(bArr)).append(";");
        }
        if (str != null) {
            sb.append("dbg:").append(str).append(";");
        }
        x9 x9Var = this.b;
        ((st1) ((y9) x9Var).a).a(4007, -1L, null, sb.toString());
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        taskCompletionSource.setResult(Boolean.TRUE);
        taskCompletionSource.getTask();
    }
}
