.class public final Lcom/tapjoy/internal/dg;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tapjoy/internal/dg;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/dg;

    invoke-direct {v0}, Lcom/tapjoy/internal/dg;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dg;->b:Lcom/tapjoy/internal/dg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dg;
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/dg;->b:Lcom/tapjoy/internal/dg;

    return-object v0
.end method
