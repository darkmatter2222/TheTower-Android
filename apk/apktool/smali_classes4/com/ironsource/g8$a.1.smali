.class public Lcom/ironsource/g8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/g8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/g8$a$a;
    }
.end annotation


# static fields
.field private static final h:I = 0x3a98

.field private static final i:I = 0x3a98

.field private static final j:Ljava/lang/String; = "UTF-8"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ironsource/g8$a$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/ironsource/g8$a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/g8$a;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/ironsource/g8$a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/g8$a;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/ironsource/g8$a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/g8$a;->c:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/ironsource/g8$a$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ironsource/g8$a;->g:Ljava/util/ArrayList;

    .line 6
    iget v0, p1, Lcom/ironsource/g8$a$a;->e:I

    iput v0, p0, Lcom/ironsource/g8$a;->d:I

    .line 7
    iget v0, p1, Lcom/ironsource/g8$a$a;->f:I

    iput v0, p0, Lcom/ironsource/g8$a;->e:I

    .line 8
    iget-object p1, p1, Lcom/ironsource/g8$a$a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/g8$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/g8$a;->b:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
