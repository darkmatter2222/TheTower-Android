.class public final synthetic Lcom/google/firebase/database/DatabaseKt$snapshots$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/Query;

.field public final synthetic f$1:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$snapshots$1$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/database/ValueEventListener;

    invoke-static {v0, v1}, Lcom/google/firebase/database/DatabaseKt$snapshots$1;->$r8$lambda$c3eI6TsfxO2tdvktF1rgQujZ5OM(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
