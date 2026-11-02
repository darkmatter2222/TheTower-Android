.class public interface abstract Lcom/applovin/shadow/okhttp3/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/Authenticator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/applovin/shadow/okhttp3/Authenticator;",
        "",
        "authenticate",
        "Lcom/applovin/shadow/okhttp3/Request;",
        "route",
        "Lcom/applovin/shadow/okhttp3/Route;",
        "response",
        "Lcom/applovin/shadow/okhttp3/Response;",
        "Companion",
        "okhttp"
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
.field public static final Companion:Lcom/applovin/shadow/okhttp3/Authenticator$Companion;

.field public static final JAVA_NET_AUTHENTICATOR:Lcom/applovin/shadow/okhttp3/Authenticator;

.field public static final NONE:Lcom/applovin/shadow/okhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/applovin/shadow/okhttp3/Authenticator$Companion;->$$INSTANCE:Lcom/applovin/shadow/okhttp3/Authenticator$Companion;

    sput-object v0, Lcom/applovin/shadow/okhttp3/Authenticator;->Companion:Lcom/applovin/shadow/okhttp3/Authenticator$Companion;

    .line 130
    new-instance v0, Lcom/applovin/shadow/okhttp3/Authenticator$Companion$AuthenticatorNone;

    invoke-direct {v0}, Lcom/applovin/shadow/okhttp3/Authenticator$Companion$AuthenticatorNone;-><init>()V

    check-cast v0, Lcom/applovin/shadow/okhttp3/Authenticator;

    sput-object v0, Lcom/applovin/shadow/okhttp3/Authenticator;->NONE:Lcom/applovin/shadow/okhttp3/Authenticator;

    .line 137
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/authenticator/JavaNetAuthenticator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/applovin/shadow/okhttp3/internal/authenticator/JavaNetAuthenticator;-><init>(Lcom/applovin/shadow/okhttp3/Dns;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/applovin/shadow/okhttp3/Authenticator;

    sput-object v0, Lcom/applovin/shadow/okhttp3/Authenticator;->JAVA_NET_AUTHENTICATOR:Lcom/applovin/shadow/okhttp3/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lcom/applovin/shadow/okhttp3/Route;Lcom/applovin/shadow/okhttp3/Response;)Lcom/applovin/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
