.class public final Lcom/ironsource/Ig$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Ig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;

.field private b:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)Lcom/ironsource/Ig$b;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ig$b;->b:Ljava/lang/Double;

    return-object p0
.end method

.method public final a()Lcom/ironsource/Ig;
    .locals 2

    .line 3
    new-instance v0, Lcom/ironsource/Ig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/Ig;-><init>(Lcom/ironsource/Ig$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ig$b;->b:Ljava/lang/Double;

    return-void
.end method

.method public final b(D)Lcom/ironsource/Ig$b;
    .locals 0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ig$b;->a:Ljava/lang/Double;

    return-object p0
.end method

.method public final b()Ljava/lang/Double;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ig$b;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public final b(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ig$b;->a:Ljava/lang/Double;

    return-void
.end method

.method public final c()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ig$b;->a:Ljava/lang/Double;

    return-object v0
.end method
