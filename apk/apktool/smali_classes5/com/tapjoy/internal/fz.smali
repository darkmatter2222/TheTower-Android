.class public final Lcom/tapjoy/internal/fz;
.super Lcom/tapjoy/internal/hu;
.source "SourceFile"


# instance fields
.field private final b:Lcom/tapjoy/internal/gc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gc<",
            "Lcom/tapjoy/internal/hu$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/tapjoy/internal/fz;

    invoke-direct {v0}, Lcom/tapjoy/internal/fz;-><init>()V

    invoke-static {v0}, Lcom/tapjoy/internal/hu;->a(Lcom/tapjoy/internal/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/tapjoy/internal/hu;-><init>()V

    .line 26
    new-instance v0, Lcom/tapjoy/internal/fz$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fz$1;-><init>(Lcom/tapjoy/internal/fz;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fz;->b:Lcom/tapjoy/internal/gc;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/hu$a;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->b:Lcom/tapjoy/internal/gc;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gc;->c(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tapjoy/internal/fz;->b:Lcom/tapjoy/internal/gc;

    .line 1027
    iget-object v0, v0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/gc$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
