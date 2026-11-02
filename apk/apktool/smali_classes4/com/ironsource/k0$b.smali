.class public final Lcom/ironsource/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/k0$b;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/k0$b;

    invoke-direct {v0}, Lcom/ironsource/k0$b;-><init>()V

    sput-object v0, Lcom/ironsource/k0$b;->a:Lcom/ironsource/k0$b;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/ironsource/k0$b;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ironsource/k0$b;->b:Z

    return v0
.end method
