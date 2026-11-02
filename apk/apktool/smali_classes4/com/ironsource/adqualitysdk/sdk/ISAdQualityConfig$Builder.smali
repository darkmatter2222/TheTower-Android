.class public Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final ﮌ:Ljava/util/HashMap;

.field public ﮐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

.field public ﱟ:Z

.field public ﱡ:Z

.field public ﺙ:Ljava/lang/String;

.field public final ﻏ:Ljava/util/HashSet;

.field public ﻐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

.field public ﻛ:Z

.field public ｋ:Z

.field public ﾇ:Z

.field public ﾒ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﾒ:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﾇ:Z

    .line 4
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ｋ:Z

    .line 5
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻛ:Z

    .line 6
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻏ:Ljava/util/HashSet;

    .line 8
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﺙ:Ljava/lang/String;

    .line 9
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﱡ:Z

    .line 10
    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﱟ:Z

    .line 11
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;->NONE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮌ:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻏ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﾒ:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﾇ:Z

    iget-boolean v3, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ｋ:Z

    iget-boolean v4, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻛ:Z

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    iget-object v6, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻏ:Ljava/util/HashSet;

    iget-object v7, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﺙ:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﱡ:Z

    iget-boolean v9, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﱟ:Z

    iget-object v10, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    iget-object v11, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮌ:Ljava/util/HashMap;

    invoke-direct/range {v0 .. v11}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;-><init>(Ljava/lang/String;ZZZLcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;Ljava/util/HashSet;Ljava/lang/String;ZZLcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public removeAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻏ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->addAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCoppa(Z)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﱡ:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﱟ:Z

    return-object p0
.end method

.method public setDeviceIdType(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityDeviceIdType;

    return-object p0
.end method

.method public setInitializationSource(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﺙ:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setInitializationSource( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ) init source must have length of 1-20"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ISAdQualityConfig"

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLogLevel(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p0
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    const-string v0, " ) the length of both the key and the value should be between 1 and 64 characters."

    const-string v1, " ) limited to 5 meta data values. Ignoring meta data value."

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ϝ;->ﾒ:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮌ:Ljava/util/HashMap;

    invoke-static {v2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ϝ;->ﾒ(Ljava/util/AbstractMap;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " , "

    const-string v4, "ISAdQualityConfig"

    const-string v5, "setMetaData( "

    if-eqz v2, :cond_1

    .line 11
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/16 v1, 0x40

    .line 12
    invoke-static {p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-static {p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᗮ;->ﾒ(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﮌ:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_1
    return-object p0
.end method

.method public setMetaData(Lorg/json/JSONObject;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    goto :goto_1

    .line 7
    :cond_0
    const-string v3, "ISAdQualityConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMetaData( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " , "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) value must be a string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object p0
.end method

.method public setTestMode(Z)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ｋ:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﻛ:Z

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﾒ:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->ﾇ:Z

    return-object p0
.end method
