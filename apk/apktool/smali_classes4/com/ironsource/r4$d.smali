.class Lcom/ironsource/r4$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/r4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/r4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/r4;-><init>(Lcom/ironsource/r4-IA;)V

    sput-object v0, Lcom/ironsource/r4$d;->a:Lcom/ironsource/r4;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
