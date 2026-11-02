.class public final Lcom/ironsource/l1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/l1$a;

.field public static final b:I = 0x1

.field public static final c:I = 0x1

.field public static final d:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/l1$a;

    invoke-direct {v0}, Lcom/ironsource/l1$a;-><init>()V

    sput-object v0, Lcom/ironsource/l1$a;->a:Lcom/ironsource/l1$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
