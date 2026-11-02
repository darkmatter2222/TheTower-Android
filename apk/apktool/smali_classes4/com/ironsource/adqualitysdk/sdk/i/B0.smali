.class public final Lcom/ironsource/adqualitysdk/sdk/i/B0;
.super Lcom/ironsource/adqualitysdk/sdk/i/є;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/z0;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final ﮌ:Ljava/lang/String;


# instance fields
.field public ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/A0;

.field public final ﱟ:Ljava/util/WeakHashMap;

.field public ﱡ:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "mlWG1Ny8dteoS6nU+6pO2qFZmg==\n"

    const-string v1, "zTzosLPLIL4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮌ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/є;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᙆ;)V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱟ:Ljava/util/WeakHashMap;

    .line 4
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/A0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/A0;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/A0;

    .line 8
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static ﾒ(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 3

    .line 24
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 25
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 31
    :cond_0
    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ﾒ(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 32
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 33
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 39
    :cond_0
    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱡ:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱟ:Ljava/util/WeakHashMap;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p2, p4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    .line 5
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p4, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮌ:Ljava/lang/String;

    const-string p3, "tEghermU+/zRVT1Zqs3954V5O3Sl0/c=\n"

    const-string p4, "8TpTFcu0kpI=\n"

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p2, p3, p1, p4}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_1
    return-void
.end method

.method public final ﾇ(Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 5
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/b0;
    .locals 1

    .line 6
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/d0;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/d0;-><init>()V

    return-object v0
.end method

.method public final ﾇ(Landroid/view/View;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱡ:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﻛ(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final ﾇ(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 2
    const-class v1, Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/A0;

    .line 3
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﭸ:Ljava/lang/String;

    .line 4
    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ӵ;->ﮌ:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/C;->ﾇ(Landroid/view/View;Ljava/lang/Class;Ljava/lang/String;ZZLjava/util/List;Ljava/util/List;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᐜ;
    .locals 0

    return-object p0
.end method

.method public final ﾒ(Landroid/view/View;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱡ:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱟ:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱟ:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﾒ(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/A0;

    .line 17
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﭴ:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/A0;

    .line 20
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﭴ:Ljava/lang/String;

    .line 21
    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﾒ(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public final ﾒ(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/A0;

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/A0;-><init>(Lorg/json/JSONObject;)V

    .line 2
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ӵ;

    .line 3
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/A0;

    .line 4
    :try_start_0
    iget-object p1, v0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﮉ:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﱡ:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᴽ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/z0;)V

    return-void

    :catch_0
    move-exception p1

    .line 7
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/B0;->ﮌ:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5Ubmw50Y14TTQPHChlbczdRbtMmZXdWZ0xTy3oBVmw==\n"

    const-string v4, "oDSUrO84u+0=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/A0;->ﮉ:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "QTY=\n"

    const-string v3, "exYdKr5hjjA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ｋ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
