.class public final Lcom/appsflyer/api/PurchaseClient$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/api/PurchaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0005\u001a\u00020\u00048\u0007X\u0087D\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u0012\u0004\u0008\t\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/api/PurchaseClient$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "VERSION_NAME",
        "Ljava/lang/String;",
        "getVERSION_NAME",
        "()Ljava/lang/String;",
        "getVERSION_NAME$annotations"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/appsflyer/api/PurchaseClient$Companion;

.field private static final VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/api/PurchaseClient$Companion;

    invoke-direct {v0}, Lcom/appsflyer/api/PurchaseClient$Companion;-><init>()V

    sput-object v0, Lcom/appsflyer/api/PurchaseClient$Companion;->$$INSTANCE:Lcom/appsflyer/api/PurchaseClient$Companion;

    .line 27
    const-string v0, "2.1.0"

    sput-object v0, Lcom/appsflyer/api/PurchaseClient$Companion;->VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getVERSION_NAME$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getVERSION_NAME()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/appsflyer/api/PurchaseClient$Companion;->VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method
