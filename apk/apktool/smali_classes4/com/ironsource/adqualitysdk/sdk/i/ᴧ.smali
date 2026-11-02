.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﻏ:Ljava/util/List;

.field public ﻐ:Ljava/util/List;

.field public ﻛ:Ljava/util/Map;

.field public ｋ:Ljava/util/List;

.field public ﾇ:Ljava/util/List;

.field public ﾒ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;->ﾒ:I

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;->ﾇ:Ljava/util/List;

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;->ｋ:Ljava/util/List;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;->ﻛ:Ljava/util/Map;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;->ﻐ:Ljava/util/List;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴧ;->ﻏ:Ljava/util/List;

    return-void
.end method
