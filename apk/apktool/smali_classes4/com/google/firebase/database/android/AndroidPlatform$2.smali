.class Lcom/google/firebase/database/android/AndroidPlatform$2;
.super Ljava/lang/Object;
.source "AndroidPlatform.java"

# interfaces
.implements Lcom/google/firebase/FirebaseApp$BackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/android/AndroidPlatform;->newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/android/AndroidPlatform;

.field final synthetic val$connection:Lcom/google/firebase/database/connection/PersistentConnection;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/android/AndroidPlatform;Lcom/google/firebase/database/connection/PersistentConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->this$0:Lcom/google/firebase/database/android/AndroidPlatform;

    iput-object p2, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->val$connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundStateChanged(Z)V
    .locals 1

    .line 126
    const-string v0, "app_in_background"

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->val$connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-interface {p1, v0}, Lcom/google/firebase/database/connection/PersistentConnection;->interrupt(Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/database/android/AndroidPlatform$2;->val$connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-interface {p1, v0}, Lcom/google/firebase/database/connection/PersistentConnection;->resume(Ljava/lang/String;)V

    return-void
.end method
