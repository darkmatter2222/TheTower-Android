.class public abstract Lcom/applovin/impl/n6;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/n6$a;,
        Lcom/applovin/impl/n6$c;,
        Lcom/applovin/impl/n6$b;,
        Lcom/applovin/impl/n6$d;
    }
.end annotation


# instance fields
.field private final g:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final h:Lcom/applovin/impl/n6$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    const-string v0, "TaskProcessVastResponse"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    if-eqz p1, :cond_0

    .line 5
    iput-object p2, p0, Lcom/applovin/impl/n6;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 6
    check-cast p1, Lcom/applovin/impl/n6$a;

    iput-object p1, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/applovin/impl/u8;Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/n6;
    .locals 1

    .line 5
    new-instance v0, Lcom/applovin/impl/n6$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/n6$d;-><init>(Lcom/applovin/impl/u8;Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/n6;
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/n6$a;

    invoke-direct {v0, p1, p2, p4}, Lcom/applovin/impl/n6$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    .line 4
    new-instance p1, Lcom/applovin/impl/n6$b;

    invoke-direct {p1, p0, v0, p3, p4}, Lcom/applovin/impl/n6$b;-><init>(Ljava/lang/String;Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/n6;
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/n6$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/applovin/impl/n6$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    .line 2
    new-instance p0, Lcom/applovin/impl/n6$c;

    invoke-direct {p0, v0, p2, p3}, Lcom/applovin/impl/n6$c;-><init>(Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object p0
.end method


# virtual methods
.method a(Lcom/applovin/impl/a8;)V
    .locals 4

    .line 45
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to process VAST response due to VAST error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    iget-object v1, p0, Lcom/applovin/impl/n6;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    const/4 v3, -0x6

    invoke-static {v0, v1, p1, v3, v2}, Lcom/applovin/impl/h8;->a(Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a8;ILcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method a(Lcom/applovin/impl/u8;)V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    invoke-virtual {v0}, Lcom/applovin/impl/z7;->d()I

    move-result v0

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished parsing XML at depth "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/n6$a;->a(Lcom/applovin/impl/u8;)V

    .line 11
    invoke-static {p1}, Lcom/applovin/impl/h8;->b(Lcom/applovin/impl/u8;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->d5:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 18
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v1, "VAST response is wrapper. Resolving..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_1
    new-instance p1, Lcom/applovin/impl/v6;

    iget-object v0, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    iget-object v1, p0, Lcom/applovin/impl/n6;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/v6;-><init>(Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    .line 21
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reached beyond max wrapper depth of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_3
    sget-object p1, Lcom/applovin/impl/a8;->i:Lcom/applovin/impl/a8;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/n6;->a(Lcom/applovin/impl/a8;)V

    return-void

    .line 31
    :cond_4
    invoke-static {p1}, Lcom/applovin/impl/h8;->a(Lcom/applovin/impl/u8;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 33
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v1, "VAST response is inline. Rendering ad..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_5
    new-instance p1, Lcom/applovin/impl/q6;

    iget-object v0, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    iget-object v1, p0, Lcom/applovin/impl/n6;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/q6;-><init>(Lcom/applovin/impl/z7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    .line 36
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void

    .line 41
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v1, "VAST response is an error"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_7
    sget-object p1, Lcom/applovin/impl/a8;->j:Lcom/applovin/impl/a8;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/n6;->a(Lcom/applovin/impl/a8;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Lcom/applovin/impl/u8;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, v0}, Lcom/applovin/impl/v8;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/u8;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Failed to process VAST response"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/applovin/impl/a8;->f:Lcom/applovin/impl/a8;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/n6;->a(Lcom/applovin/impl/a8;)V

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->v5:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->getRegexMatches(Ljava/util/regex/Matcher;I)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<VAST>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</VAST>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/applovin/impl/n6;->b(Ljava/lang/String;)Lcom/applovin/impl/u8;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/applovin/impl/n6;->h:Lcom/applovin/impl/n6$a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/n6$a;->a(Lcom/applovin/impl/u8;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
