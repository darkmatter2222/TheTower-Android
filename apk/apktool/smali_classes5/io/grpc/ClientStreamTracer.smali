.class public abstract Lio/grpc/ClientStreamTracer;
.super Lio/grpc/StreamTracer;
.source "ClientStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ClientStreamTracer$StreamInfo;,
        Lio/grpc/ClientStreamTracer$Factory;
    }
.end annotation


# static fields
.field public static final NAME_RESOLUTION_DELAYED:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "io.grpc.ClientStreamTracer.NAME_RESOLUTION_DELAYED"

    .line 35
    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/ClientStreamTracer;->NAME_RESOLUTION_DELAYED:Lio/grpc/CallOptions$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/grpc/StreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public createPendingStream()V
    .locals 0

    return-void
.end method

.method public inboundHeaders()V
    .locals 0

    return-void
.end method

.method public inboundTrailers(Lio/grpc/Metadata;)V
    .locals 0

    return-void
.end method

.method public outboundHeaders()V
    .locals 0

    return-void
.end method

.method public streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V
    .locals 0

    return-void
.end method
