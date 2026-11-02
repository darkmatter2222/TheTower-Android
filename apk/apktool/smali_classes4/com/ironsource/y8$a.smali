.class public Lcom/ironsource/y8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/content/Context;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/ironsource/y8$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ironsource/y8$a;->d:Landroid/content/Context;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/ironsource/y8;
    .locals 2

    .line 3
    new-instance v0, Lcom/ironsource/y8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/y8;-><init>(Lcom/ironsource/y8$a;Lcom/ironsource/y8-IA;)V

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method e(Ljava/lang/String;)Lcom/ironsource/y8$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/y8$a;->e:Ljava/lang/String;

    return-object p0
.end method
