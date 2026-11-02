.class Lcom/iab/omid/library/applovin/messagelistener/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/applovin/messagelistener/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/applovin/messagelistener/a;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/applovin/messagelistener/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/applovin/messagelistener/a$a;->a:Lcom/iab/omid/library/applovin/messagelistener/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostMessage(Landroid/webkit/WebView;Landroidx/webkit/WebMessageCompat;Landroid/net/Uri;ZLandroidx/webkit/JavaScriptReplyProxy;)V
    .locals 0

    iget-object p1, p0, Lcom/iab/omid/library/applovin/messagelistener/a$a;->a:Lcom/iab/omid/library/applovin/messagelistener/a;

    invoke-virtual {p2}, Landroidx/webkit/WebMessageCompat;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iab/omid/library/applovin/messagelistener/a;->a(Lcom/iab/omid/library/applovin/messagelistener/a;Ljava/lang/String;)V

    return-void
.end method
