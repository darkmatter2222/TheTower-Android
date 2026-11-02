.class public final Lcom/ironsource/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/ironsource/i2;

.field public static final b:Ljava/lang/String; = "trials_fail"

.field public static final c:Ljava/lang/String; = "parsing"

.field public static final d:Ljava/lang/String; = "other"

.field public static final e:Ljava/lang/String; = "disabled"

.field public static final f:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/i2;

    invoke-direct {v0}, Lcom/ironsource/i2;-><init>()V

    sput-object v0, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/i2;ZLjava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    const-string p1, "-1"

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "fallback_"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZLjava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 5
    const-string p1, "disabled"

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_9

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3f0

    if-eq p1, v0, :cond_9

    :goto_1
    if-nez p2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_4

    goto :goto_6

    :cond_4
    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_8

    :goto_3
    if-nez p2, :cond_6

    goto :goto_4

    .line 13
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    :goto_4
    const-string p1, "other"

    return-object p1

    .line 15
    :cond_8
    :goto_5
    const-string p1, "trials_fail"

    return-object p1

    .line 16
    :cond_9
    :goto_6
    const-string p1, "parsing"

    return-object p1
.end method
