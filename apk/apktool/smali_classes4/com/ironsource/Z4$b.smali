.class public final Lcom/ironsource/Z4$b;
.super Lcom/ironsource/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lcom/ironsource/Z4$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/Z4$b;

    invoke-direct {v0}, Lcom/ironsource/Z4$b;-><init>()V

    sput-object v0, Lcom/ironsource/Z4$b;->b:Lcom/ironsource/Z4$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "show_flow"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
