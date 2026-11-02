.class public final Lcom/tapjoy/internal/fe$a;
.super Lcom/tapjoy/internal/ej$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tapjoy/internal/ej$a<",
        "Lcom/tapjoy/internal/fe;",
        "Lcom/tapjoy/internal/fe$a;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/tapjoy/internal/ej$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/fe;
    .locals 5

    .line 129
    new-instance v0, Lcom/tapjoy/internal/fe;

    iget-object v1, p0, Lcom/tapjoy/internal/fe$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fe$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/fe$a;->e:Ljava/lang/String;

    invoke-super {p0}, Lcom/tapjoy/internal/ej$a;->a()Lcom/tapjoy/internal/je;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tapjoy/internal/fe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/je;)V

    return-object v0
.end method
