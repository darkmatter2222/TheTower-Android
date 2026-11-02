.class public abstract Lcom/tapjoy/internal/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ej$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/tapjoy/internal/ej<",
        "TM;TB;>;B:",
        "Lcom/tapjoy/internal/ej$a<",
        "TM;TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient a:I

.field protected transient b:I

.field private final transient c:Lcom/tapjoy/internal/el;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/el<",
            "TM;>;"
        }
    .end annotation
.end field

.field private final transient d:Lcom/tapjoy/internal/je;


# direct methods
.method protected constructor <init>(Lcom/tapjoy/internal/el;Lcom/tapjoy/internal/je;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tapjoy/internal/el<",
            "TM;>;",
            "Lcom/tapjoy/internal/je;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/tapjoy/internal/ej;->a:I

    .line 40
    iput v0, p0, Lcom/tapjoy/internal/ej;->b:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 45
    iput-object p1, p0, Lcom/tapjoy/internal/ej;->c:Lcom/tapjoy/internal/el;

    .line 46
    iput-object p2, p0, Lcom/tapjoy/internal/ej;->d:Lcom/tapjoy/internal/je;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unknownFields == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "adapter == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/je;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/tapjoy/internal/ej;->d:Lcom/tapjoy/internal/je;

    if-eqz v0, :cond_0

    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/je;->b:Lcom/tapjoy/internal/je;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-static {p0}, Lcom/tapjoy/internal/el;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
