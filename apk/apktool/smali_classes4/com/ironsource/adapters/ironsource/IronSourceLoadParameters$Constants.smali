.class public final Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants"
.end annotation


# static fields
.field public static final ADM_KEY:Ljava/lang/String; = "adm"

.field public static final DEMAND_ONLY:Ljava/lang/String; = "demandOnly"

.field public static final INSTANCE:Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;

.field public static final ONE_FLOW_KEY:Ljava/lang/String; = "isOneFlow"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;

    invoke-direct {v0}, Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;->INSTANCE:Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
