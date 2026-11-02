.class public final Lcom/ironsource/Z4$c;
.super Lcom/ironsource/Z4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lcom/ironsource/Z4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/Z4$c;

    invoke-direct {v0}, Lcom/ironsource/Z4$c;-><init>()V

    sput-object v0, Lcom/ironsource/Z4$c;->b:Lcom/ironsource/Z4$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "show_recovery"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Z4;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
