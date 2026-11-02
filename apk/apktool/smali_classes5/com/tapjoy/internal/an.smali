.class public abstract Lcom/tapjoy/internal/an;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lcom/tapjoy/internal/ar<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/tapjoy/internal/an$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/an$1;-><init>(Lcom/tapjoy/internal/an;)V

    return-object v0
.end method
