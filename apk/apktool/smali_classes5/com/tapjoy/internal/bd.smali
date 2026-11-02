.class public final Lcom/tapjoy/internal/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/tapjoy/internal/bd$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/bd$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bd;->a:Lcom/tapjoy/internal/bc;

    .line 32
    new-instance v0, Lcom/tapjoy/internal/bd$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/bd$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bd;->b:Lcom/tapjoy/internal/bc;

    return-void
.end method
