.class public final Lcom/ironsource/Rb$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Rb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Rb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/ironsource/Rb;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 2
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 4
    iget v1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 5
    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 6
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    .line 7
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9
    new-instance v3, Lcom/ironsource/Rb;

    invoke-direct {v3, v1, v2, v0}, Lcom/ironsource/Rb;-><init>(III)V

    return-object v3
.end method
