.class public final Lcom/ironsource/kb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/kb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ironsource/kb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ironsource/kb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/kb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/ob;)Lcom/ironsource/kb$a;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    invoke-virtual {v0, p1}, Lcom/ironsource/kb;->a(Lcom/ironsource/ob;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/kb$a;
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    invoke-static {v0, p1}, Lcom/ironsource/kb;->a(Lcom/ironsource/kb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a()Lcom/ironsource/kb;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/ironsource/kb$a;
    .locals 1

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb$a;->a:Lcom/ironsource/kb;

    invoke-static {v0, p1}, Lcom/ironsource/kb;->b(Lcom/ironsource/kb;Ljava/lang/String;)V

    return-object p0
.end method
