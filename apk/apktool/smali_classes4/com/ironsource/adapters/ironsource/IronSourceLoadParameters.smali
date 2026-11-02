.class public interface abstract Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Base;,
        Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$Constants;,
        Lcom/ironsource/adapters/ironsource/IronSourceLoadParameters$WithLog;
    }
.end annotation


# virtual methods
.method public abstract config()Lorg/json/JSONObject;
.end method

.method public abstract demandOnly()Z
.end method

.method public abstract value()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
