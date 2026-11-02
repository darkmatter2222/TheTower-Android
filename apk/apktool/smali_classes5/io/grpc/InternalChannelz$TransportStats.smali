.class public final Lio/grpc/InternalChannelz$TransportStats;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransportStats"
.end annotation


# instance fields
.field public final keepAlivesSent:J

.field public final lastLocalStreamCreatedTimeNanos:J

.field public final lastMessageReceivedTimeNanos:J

.field public final lastMessageSentTimeNanos:J

.field public final lastRemoteStreamCreatedTimeNanos:J

.field public final localFlowControlWindow:J

.field public final messagesReceived:J

.field public final messagesSent:J

.field public final remoteFlowControlWindow:J

.field public final streamsFailed:J

.field public final streamsStarted:J

.field public final streamsSucceeded:J


# direct methods
.method public constructor <init>(JJJJJJJJJJJJ)V
    .locals 0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput-wide p1, p0, Lio/grpc/InternalChannelz$TransportStats;->streamsStarted:J

    .line 1087
    iput-wide p3, p0, Lio/grpc/InternalChannelz$TransportStats;->lastLocalStreamCreatedTimeNanos:J

    .line 1088
    iput-wide p5, p0, Lio/grpc/InternalChannelz$TransportStats;->lastRemoteStreamCreatedTimeNanos:J

    .line 1089
    iput-wide p7, p0, Lio/grpc/InternalChannelz$TransportStats;->streamsSucceeded:J

    .line 1090
    iput-wide p9, p0, Lio/grpc/InternalChannelz$TransportStats;->streamsFailed:J

    .line 1091
    iput-wide p11, p0, Lio/grpc/InternalChannelz$TransportStats;->messagesSent:J

    .line 1092
    iput-wide p13, p0, Lio/grpc/InternalChannelz$TransportStats;->messagesReceived:J

    move-wide p1, p15

    .line 1093
    iput-wide p1, p0, Lio/grpc/InternalChannelz$TransportStats;->keepAlivesSent:J

    move-wide/from16 p1, p17

    .line 1094
    iput-wide p1, p0, Lio/grpc/InternalChannelz$TransportStats;->lastMessageSentTimeNanos:J

    move-wide/from16 p1, p19

    .line 1095
    iput-wide p1, p0, Lio/grpc/InternalChannelz$TransportStats;->lastMessageReceivedTimeNanos:J

    move-wide/from16 p1, p21

    .line 1096
    iput-wide p1, p0, Lio/grpc/InternalChannelz$TransportStats;->localFlowControlWindow:J

    move-wide/from16 p1, p23

    .line 1097
    iput-wide p1, p0, Lio/grpc/InternalChannelz$TransportStats;->remoteFlowControlWindow:J

    return-void
.end method
