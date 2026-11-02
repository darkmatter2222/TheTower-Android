.class final Lads_mobile_sdk/er0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/er0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    .line 274
    iput p2, p0, Lads_mobile_sdk/er0$b;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 284
    instance-of v0, p1, Lads_mobile_sdk/er0$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 287
    :cond_0
    check-cast p1, Lads_mobile_sdk/er0$b;

    .line 288
    iget-object v0, p0, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    iget-object v2, p1, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lads_mobile_sdk/er0$b;->b:I

    iget p1, p1, Lads_mobile_sdk/er0$b;->b:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 279
    iget-object v0, p0, Lads_mobile_sdk/er0$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lads_mobile_sdk/er0$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method
