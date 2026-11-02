.class public final Lads_mobile_sdk/m9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/xh2;

.field public final b:Lads_mobile_sdk/xh2;

.field public final c:Z

.field public final d:Lads_mobile_sdk/l40;

.field public final e:Lads_mobile_sdk/x91;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lads_mobile_sdk/m9;->d:Lads_mobile_sdk/l40;

    .line 37
    iput-object p2, p0, Lads_mobile_sdk/m9;->e:Lads_mobile_sdk/x91;

    .line 38
    iput-object p3, p0, Lads_mobile_sdk/m9;->a:Lads_mobile_sdk/xh2;

    if-nez p4, :cond_0

    .line 40
    sget-object p1, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    iput-object p1, p0, Lads_mobile_sdk/m9;->b:Lads_mobile_sdk/xh2;

    goto :goto_0

    .line 42
    :cond_0
    iput-object p4, p0, Lads_mobile_sdk/m9;->b:Lads_mobile_sdk/xh2;

    .line 44
    :goto_0
    iput-boolean p5, p0, Lads_mobile_sdk/m9;->c:Z

    return-void
.end method

.method public static a(Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Z)Lads_mobile_sdk/m9;
    .locals 8

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 78
    sget-object v0, Lads_mobile_sdk/xh2;->d:Lads_mobile_sdk/xh2;

    if-eq p2, v0, :cond_4

    .line 81
    sget-object v0, Lads_mobile_sdk/l40;->b:Lads_mobile_sdk/l40;

    const-string v1, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v0, :cond_1

    sget-object v0, Lads_mobile_sdk/xh2;->b:Lads_mobile_sdk/xh2;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lads_mobile_sdk/x91;->b:Lads_mobile_sdk/x91;

    if-ne p1, v0, :cond_3

    sget-object v0, Lads_mobile_sdk/xh2;->b:Lads_mobile_sdk/xh2;

    if-eq p2, v0, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_3
    :goto_1
    new-instance v2, Lads_mobile_sdk/m9;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/m9;-><init>(Lads_mobile_sdk/l40;Lads_mobile_sdk/x91;Lads_mobile_sdk/xh2;Lads_mobile_sdk/xh2;Z)V

    return-object v2

    .line 89
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImpressionType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CreativeType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
