.class public final Lcom/ironsource/sdk/controller/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/m;I)V
    .locals 1

    const-string v0, "jsMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcom/ironsource/sdk/controller/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/m$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "script"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/sdk/controller/m$b;->b:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/ironsource/sdk/controller/m$b;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 2
    iget v0, p0, Lcom/ironsource/sdk/controller/m$b;->a:I

    sget-object v1, Lcom/ironsource/t8$d;->b:Lcom/ironsource/t8$d;

    invoke-virtual {v1}, Lcom/ironsource/t8$d;->b()I

    move-result v1

    const-string v2, "console.log(\"JS exception: \" + JSON.stringify(e));"

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/ironsource/sdk/controller/m$b;->a:I

    sget-object v1, Lcom/ironsource/t8$d;->c:Lcom/ironsource/t8$d;

    invoke-virtual {v1}, Lcom/ironsource/t8$d;->b()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 5
    iget v0, p0, Lcom/ironsource/sdk/controller/m$b;->a:I

    sget-object v1, Lcom/ironsource/t8$d;->e:Lcom/ironsource/t8$d;

    invoke-virtual {v1}, Lcom/ironsource/t8$d;->b()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    const-string v2, "empty"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "try{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/ironsource/sdk/controller/m$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    const-string v1, "}catch(e){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
