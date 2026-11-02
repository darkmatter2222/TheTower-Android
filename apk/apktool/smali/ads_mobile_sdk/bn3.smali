.class public final Lads_mobile_sdk/bn3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lads_mobile_sdk/rm3;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lads_mobile_sdk/rm3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/bn3;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lads_mobile_sdk/bn3;->b:Lads_mobile_sdk/rm3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 163
    check-cast p1, Landroid/view/MotionEvent;

    .line 164
    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lads_mobile_sdk/bn3;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 328
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/bn3;->b:Lads_mobile_sdk/rm3;

    check-cast v0, Lads_mobile_sdk/rv0;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/rv0;->a(Landroid/view/MotionEvent;)V

    .line 329
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
