.class final Lcom/tapjoy/TapjoyConnectCore$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyConnectCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/appset/AppSetIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJTaskHandler;

.field final synthetic b:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyConnectCore;Lcom/tapjoy/TJTaskHandler;)V
    .locals 0

    .line 1013
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$3;->b:Lcom/tapjoy/TapjoyConnectCore;

    iput-object p2, p0, Lcom/tapjoy/TapjoyConnectCore$3;->a:Lcom/tapjoy/TJTaskHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1013
    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 2017
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v0

    .line 2021
    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/lang/String;

    .line 2022
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->g:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Scope: %d. AppSetId: %s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapjoyConnect"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$3;->a:Lcom/tapjoy/TJTaskHandler;

    invoke-interface {p1}, Lcom/tapjoy/TJTaskHandler;->onComplete()V

    return-void
.end method
