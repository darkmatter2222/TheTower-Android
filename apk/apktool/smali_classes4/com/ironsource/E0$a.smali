.class Lcom/ironsource/E0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/E0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/ironsource/D5;Lcom/ironsource/D5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ironsource/D5;->c()I

    move-result p1

    iput p1, p0, Lcom/ironsource/E0$a;->a:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lcom/ironsource/E0$a;->a:I

    :goto_0
    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/ironsource/D5;->c()I

    move-result p1

    iput p1, p0, Lcom/ironsource/E0$a;->b:I

    return-void

    .line 10
    :cond_1
    iput v0, p0, Lcom/ironsource/E0$a;->b:I

    return-void
.end method


# virtual methods
.method a(Lcom/ironsource/E0$b;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/E0$b;->a:Lcom/ironsource/E0$b;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/ironsource/E0$a;->a:I

    return p1

    :cond_0
    iget p1, p0, Lcom/ironsource/E0$a;->b:I

    return p1
.end method
