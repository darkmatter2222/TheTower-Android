.class final Lcom/tapjoy/internal/ig;
.super Lcom/tapjoy/internal/hy;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gz;


# static fields
.field public static final a:Lcom/tapjoy/internal/bc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bc<",
            "Lcom/tapjoy/internal/ig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/tapjoy/internal/ig$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ig$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ig;->a:Lcom/tapjoy/internal/bc;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tapjoy/internal/hy;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/tapjoy/internal/ig;->b:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/tapjoy/internal/ig;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tapjoy/internal/ig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tapjoy/internal/ig;->c:Ljava/lang/String;

    return-object v0
.end method
