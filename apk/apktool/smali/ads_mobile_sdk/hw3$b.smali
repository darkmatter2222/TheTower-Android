.class final Lads_mobile_sdk/hw3$b;
.super Lads_mobile_sdk/hw3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/hw3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 937
    invoke-direct {p0, p1}, Lads_mobile_sdk/hw3$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;JD)V
    .locals 6

    .line 1005
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public a(Ljava/lang/Object;JF)V
    .locals 0

    .line 2000
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/hw3$e;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public a(Ljava/lang/Object;JZ)V
    .locals 1

    .line 2005
    sget-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    if-eqz v0, :cond_0

    .line 2006
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/hw3;->-$$Nest$smb(Ljava/lang/Object;JZ)V

    return-void

    .line 2008
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lads_mobile_sdk/hw3;->-$$Nest$smc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)Z
    .locals 1

    .line 2001
    sget-boolean v0, Lads_mobile_sdk/hw3;->w:Z

    if-eqz v0, :cond_0

    .line 2002
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/hw3;->-$$Nest$smb(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 2004
    :cond_0
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/hw3;->-$$Nest$smc(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;J)D
    .locals 0

    .line 1000
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->e(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public b()Z
    .locals 1

    .line 2017
    invoke-super {p0}, Lads_mobile_sdk/hw3$e;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;J)F
    .locals 0

    .line 990
    invoke-virtual {p0, p1, p2, p3}, Lads_mobile_sdk/hw3$e;->d(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method
