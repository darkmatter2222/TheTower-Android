.class public final Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;
.super Ljava/lang/Object;
.source "RealtimePipeline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;",
        "",
        "<init>",
        "()V",
        "getChangeType",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;",
        "type",
        "Lcom/google/firebase/firestore/DocumentChange$Type;",
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

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getChangeType(Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;Lcom/google/firebase/firestore/DocumentChange$Type;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion;->getChangeType(Lcom/google/firebase/firestore/DocumentChange$Type;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    move-result-object p0

    return-object p0
.end method

.method private final getChangeType(Lcom/google/firebase/firestore/DocumentChange$Type;)Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;
    .locals 1

    .line 282
    sget-object v0, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentChange$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 285
    sget-object p1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->REMOVED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object p1

    .line 282
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 284
    :cond_1
    sget-object p1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->MODIFIED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object p1

    .line 283
    :cond_2
    sget-object p1, Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;->ADDED:Lcom/google/firebase/firestore/RealtimePipeline$Snapshot$ResultChange$ChangeType;

    return-object p1
.end method
