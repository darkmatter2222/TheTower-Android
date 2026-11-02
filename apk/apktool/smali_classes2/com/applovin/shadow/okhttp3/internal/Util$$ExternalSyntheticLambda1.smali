.class public final synthetic Lcom/applovin/shadow/okhttp3/internal/Util$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/EventListener$Factory;


# instance fields
.field public final synthetic f$0:Lcom/applovin/shadow/okhttp3/EventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/shadow/okhttp3/EventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/Util$$ExternalSyntheticLambda1;->f$0:Lcom/applovin/shadow/okhttp3/EventListener;

    return-void
.end method


# virtual methods
.method public final create(Lcom/applovin/shadow/okhttp3/Call;)Lcom/applovin/shadow/okhttp3/EventListener;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/Util$$ExternalSyntheticLambda1;->f$0:Lcom/applovin/shadow/okhttp3/EventListener;

    invoke-static {v0, p1}, Lcom/applovin/shadow/okhttp3/internal/Util;->$r8$lambda$Ws9z36z_NyqlYa8Ut2RF642VcSo(Lcom/applovin/shadow/okhttp3/EventListener;Lcom/applovin/shadow/okhttp3/Call;)Lcom/applovin/shadow/okhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method
