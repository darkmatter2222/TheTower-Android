.class public final Lcom/tapjoy/internal/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Lcom/tapjoy/internal/if;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/tapjoy/internal/ih;

.field public final b:Landroid/graphics/Point;

.field public final c:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/tapjoy/internal/if$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/if$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/if;->d:Lcom/tapjoy/internal/bc;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/ih;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tapjoy/internal/if;->a:Lcom/tapjoy/internal/ih;

    .line 19
    iput-object p2, p0, Lcom/tapjoy/internal/if;->b:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/tapjoy/internal/if;->c:Landroid/graphics/Point;

    return-void
.end method
