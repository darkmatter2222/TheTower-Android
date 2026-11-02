.class public Lcom/google/firebase/firestore/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/Logger$Level;
    }
.end annotation


# static fields
.field private static logLevel:Lcom/google/firebase/firestore/util/Logger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->WARN:Lcom/google/firebase/firestore/util/Logger$Level;

    sput-object v0, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->DEBUG:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/google/firebase/firestore/util/Logger;->doLog(Lcom/google/firebase/firestore/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs doLog(Lcom/google/firebase/firestore/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 41
    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 42
    const-string v0, "26.6.0"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "(%s) [%s]: "

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 46
    array-length v0, p3

    if-lez v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 47
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 48
    aget-object v2, p3, v1

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 51
    :cond_0
    instance-of v3, v2, Lcom/google/protobuf/MessageLite;

    if-eqz v3, :cond_2

    .line 52
    move-object v3, v2

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v3

    const/high16 v4, 0x20000

    if-le v3, v4, :cond_3

    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x100000

    if-lt v3, v4, :cond_1

    int-to-double v3, v3

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    .line 60
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f MB"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    int-to-double v3, v3

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.1f KB"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    :goto_1
    const-string v4, "<%s truncated for logging (Size: %s)>"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 66
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    goto :goto_2

    .line 70
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1000

    if-le v3, v4, :cond_3

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "... <String truncated>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_4
    array-length v0, p3

    if-lez v0, :cond_5

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 80
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    sget-object p2, Lcom/google/firebase/firestore/util/Logger$1;->$SwitchMap$com$google$firebase$firestore$util$Logger$Level:[I

    invoke-virtual {p0}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const-string p2, "Firestore"

    const/4 p3, 0x1

    if-eq p0, p3, :cond_8

    const/4 p3, 0x2

    if-eq p0, p3, :cond_7

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    goto :goto_3

    .line 89
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to log something on level NONE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_7
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_8
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 2

    .line 37
    sget-object v0, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/firebase/firestore/util/Logger$Level;->DEBUG:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/Logger$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setLogLevel(Lcom/google/firebase/firestore/util/Logger$Level;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/google/firebase/firestore/util/Logger;->logLevel:Lcom/google/firebase/firestore/util/Logger$Level;

    return-void
.end method

.method public static varargs warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 95
    sget-object v0, Lcom/google/firebase/firestore/util/Logger$Level;->WARN:Lcom/google/firebase/firestore/util/Logger$Level;

    invoke-static {v0, p0, p1, p2}, Lcom/google/firebase/firestore/util/Logger;->doLog(Lcom/google/firebase/firestore/util/Logger$Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
