.class final Lads_mobile_sdk/du$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/du;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field private final a:Lads_mobile_sdk/oy;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    new-array p1, p1, [B

    iput-object p1, p0, Lads_mobile_sdk/du$h;->b:[B

    .line 1449
    invoke-static {p1}, Lads_mobile_sdk/oy;->b([B)Lads_mobile_sdk/oy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/du$h;->a:Lads_mobile_sdk/oy;

    return-void
.end method

.method synthetic constructor <init>(ILads_mobile_sdk/du-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lads_mobile_sdk/du$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Lads_mobile_sdk/du;
    .locals 2

    .line 1453
    iget-object v0, p0, Lads_mobile_sdk/du$h;->a:Lads_mobile_sdk/oy;

    invoke-virtual {v0}, Lads_mobile_sdk/oy;->a()V

    .line 1458
    new-instance v0, Lads_mobile_sdk/du$k;

    iget-object v1, p0, Lads_mobile_sdk/du$h;->b:[B

    invoke-direct {v0, v1}, Lads_mobile_sdk/du$k;-><init>([B)V

    return-object v0
.end method

.method public b()Lads_mobile_sdk/oy;
    .locals 1

    .line 1462
    iget-object v0, p0, Lads_mobile_sdk/du$h;->a:Lads_mobile_sdk/oy;

    return-object v0
.end method
