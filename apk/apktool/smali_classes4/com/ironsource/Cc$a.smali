.class public final Lcom/ironsource/Cc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Cc$a;

.field public static final b:Ljava/lang/String; = "adm"

.field public static final c:Ljava/lang/String; = "isOneFlow"

.field public static final d:Ljava/lang/String; = "isMultipleAdObjects"

.field public static final e:Ljava/lang/String; = "adsInternalInfo"

.field public static final f:Ljava/lang/String; = "success"

.field public static final g:Ljava/lang/String; = "error"

.field public static final h:Ljava/lang/String; = "data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ironsource/Cc$a;

    invoke-direct {v0}, Lcom/ironsource/Cc$a;-><init>()V

    sput-object v0, Lcom/ironsource/Cc$a;->a:Lcom/ironsource/Cc$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
