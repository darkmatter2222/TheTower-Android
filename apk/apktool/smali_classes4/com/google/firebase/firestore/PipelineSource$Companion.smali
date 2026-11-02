.class public final Lcom/google/firebase/firestore/PipelineSource$Companion;
.super Ljava/lang/Object;
.source "Pipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/PipelineSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/google/firebase/firestore/PipelineSource$Companion;",
        "",
        "<init>",
        "()V",
        "subcollection",
        "Lcom/google/firebase/firestore/Pipeline;",
        "path",
        "",
        "source",
        "Lcom/google/firebase/firestore/pipeline/SubcollectionSource;",
        "com.google.firebase-firebase-firestore"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/PipelineSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final subcollection(Lcom/google/firebase/firestore/pipeline/SubcollectionSource;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1303
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    const/4 v1, 0x0

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    invoke-direct {v0, v1, v1, p1}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v0
.end method

.method public final subcollection(Ljava/lang/String;)Lcom/google/firebase/firestore/Pipeline;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1282
    new-instance v0, Lcom/google/firebase/firestore/Pipeline;

    sget-object v1, Lcom/google/firebase/firestore/pipeline/SubcollectionSource;->Companion:Lcom/google/firebase/firestore/pipeline/SubcollectionSource$Companion;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/pipeline/SubcollectionSource$Companion;->of(Ljava/lang/String;)Lcom/google/firebase/firestore/pipeline/SubcollectionSource;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/pipeline/Stage;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lcom/google/firebase/firestore/Pipeline;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/UserDataReader;Lcom/google/firebase/firestore/pipeline/Stage;)V

    return-object v0
.end method
