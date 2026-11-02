package kotlin;

import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'b' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes.dex */
public final class kj3 {
    public static final kj3 b;
    public static final kj3 c;
    public static final kj3 d;
    public static final kj3 e;
    public static final /* synthetic */ kj3[] f;
    public final long a;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        kj3 kj3Var = new kj3(0, DurationKt.toDuration(30, durationUnit), "FAST");
        b = kj3Var;
        kj3 kj3Var2 = new kj3(1, DurationKt.toDuration(100, durationUnit), "MEDIUM");
        c = kj3Var2;
        kj3 kj3Var3 = new kj3(2, DurationKt.toDuration(300, durationUnit), "SLOW");
        d = kj3Var3;
        kj3 kj3Var4 = new kj3(3, DurationKt.toDuration(1000, durationUnit), "SUPER_SLOW");
        e = kj3Var4;
        kj3[] kj3VarArr = {kj3Var, kj3Var2, kj3Var3, kj3Var4};
        f = kj3VarArr;
        EnumEntriesKt.enumEntries(kj3VarArr);
    }

    public kj3(int i, long j, String str) {
        super(str, i);
        this.a = j;
    }

    public static kj3[] values() {
        return (kj3[]) f.clone();
    }

    public final long d() {
        return this.a;
    }
}
