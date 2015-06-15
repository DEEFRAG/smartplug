.class Lorg/apache/mina/core/service/AbstractIoService$1;
.super Ljava/lang/Object;
.source "AbstractIoService.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/AbstractIoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/service/AbstractIoService;


# direct methods
.method constructor <init>(Lorg/apache/mina/core/service/AbstractIoService;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService$1;->this$0:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    .locals 4
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .prologue
    .line 104
    move-object v1, p1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoService;

    .line 105
    .local v1, "s":Lorg/apache/mina/core/service/AbstractIoService;
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;

    move-result-object v0

    .line 106
    .local v0, "_stats":Lorg/apache/mina/core/service/IoServiceStatistics;
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastReadTime(J)V

    .line 107
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastWriteTime(J)V

    .line 108
    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastThroughputCalculationTime(J)V

    .line 110
    return-void
.end method

.method public serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    .locals 0
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .prologue
    .line 114
    return-void
.end method

.method public serviceIdle(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 0
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p2, "idleStatus"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 118
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 122
    return-void
.end method

.method public sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 126
    return-void
.end method
