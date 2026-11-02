.class Lcom/ironsource/S6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/S6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static volatile a:Lcom/ironsource/S6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/S6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/S6;-><init>(Lcom/ironsource/S6-IA;)V

    sput-object v0, Lcom/ironsource/S6$b;->a:Lcom/ironsource/S6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
