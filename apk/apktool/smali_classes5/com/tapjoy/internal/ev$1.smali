.class final Lcom/tapjoy/internal/ev$1;
.super Lcom/tapjoy/internal/ge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ev;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ev;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/tapjoy/internal/ev$1;->a:Lcom/tapjoy/internal/ev;

    invoke-direct {p0}, Lcom/tapjoy/internal/ge;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/tapjoy/internal/ev$1;->a:Lcom/tapjoy/internal/ev;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/ev;->a(Lcom/tapjoy/internal/ev;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    return p1
.end method
