.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﭝ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FsuqCc9SXT4V\n"

    const-string v1, "ca7eRKomNVE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "tGsYjdvGCEe3fQ==\n"

    const-string v1, "0w5swL6yYCg=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "cn1YFDSUPsxlZ1IRBJQV62RmURElgw==\n"

    const-string v1, "EQ89dUDxc6k=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;-><init>()V

    return-void
.end method

.method public static ﾇ(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x1

    .line 1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 3
    const-class v2, Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮆ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    const-class v2, Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮆ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﺀ;
    .locals 1

    .line 11
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﺀ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﺀ;-><init>()V

    return-object v0
.end method

.method public static ﾒ(Ljava/util/ArrayList;)Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x1

    .line 1
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 4
    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮆ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;)Ljava/util/ArrayList;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_0
    return-object v3

    .line 7
    :cond_1
    const-class v2, Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 8
    invoke-static {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﮆ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;)Ljava/util/ArrayList;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_2
    return-object v3
.end method
