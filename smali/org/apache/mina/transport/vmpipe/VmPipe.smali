.class Lorg/apache/mina/transport/vmpipe/VmPipe;
.super Ljava/lang/Object;
.source "VmPipe.java"


# instance fields
.field private final acceptor:Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

.field private final address:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

.field private final handler:Lorg/apache/mina/core/service/IoHandler;

.field private final listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;


# direct methods
.method constructor <init>(Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/core/service/IoServiceListenerSupport;)V
    .locals 0
    .param p1, "acceptor"    # Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .param p2, "address"    # Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .param p3, "handler"    # Lorg/apache/mina/core/service/IoHandler;
    .param p4, "listeners"    # Lorg/apache/mina/core/service/IoServiceListenerSupport;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->acceptor:Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    .line 42
    iput-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->address:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    .line 43
    iput-object p3, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 44
    iput-object p4, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    .line 45
    return-void
.end method


# virtual methods
.method public getAcceptor()Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->acceptor:Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    return-object v0
.end method

.method public getAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->address:Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipe;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-object v0
.end method
