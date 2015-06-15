.class public abstract Lorg/apache/mina/proxy/handlers/ProxyRequest;
.super Ljava/lang/Object;
.source "ProxyRequest.java"


# instance fields
.field private endpointAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 1
    .param p1, "endpointAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    .line 51
    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    .line 52
    return-void
.end method


# virtual methods
.method public getEndpointAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/ProxyRequest;->endpointAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method
