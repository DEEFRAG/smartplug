.class Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;
.super Ljava/lang/Object;
.source "VmPipeConnector.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/vmpipe/VmPipeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalAddressReclaimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener",
        "<",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;

    .prologue
    .line 172
    invoke-direct {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 3
    .param p1, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 174
    # getter for: Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;
    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->access$100()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 175
    :try_start_0
    # getter for: Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;
    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->access$100()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/future/IoFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
