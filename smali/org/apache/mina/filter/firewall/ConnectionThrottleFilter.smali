.class public Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ConnectionThrottleFilter.java"


# static fields
.field private static final DEFAULT_TIME:J = 0x3e8L

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private allowedInterval:J

.field private final clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;-><init>(J)V

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "allowedInterval"    # J

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 64
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    .line 66
    return-void
.end method


# virtual methods
.method protected isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 11
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    .line 91
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    instance-of v7, v4, Ljava/net/InetSocketAddress;

    if-eqz v7, :cond_0

    move-object v0, v4

    .line 92
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 93
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    .local v2, "now":J
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    sget-object v7, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "This is not a new client"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 98
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 101
    .local v1, "lastConnTime":Ljava/lang/Long;
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v2, v7

    iget-wide v9, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    .line 106
    sget-object v6, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Session connection interval too short"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 117
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "lastConnTime":Ljava/lang/Long;
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return v5

    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "lastConnTime":Ljava/lang/Long;
    .restart local v2    # "now":J
    :cond_1
    move v5, v6

    .line 110
    goto :goto_0

    .line 113
    .end local v1    # "lastConnTime":Ljava/lang/Long;
    :cond_2
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v6

    .line 114
    goto :goto_0
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Connections coming in too fast; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 127
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 128
    return-void
.end method

.method public setAllowedInterval(J)V
    .locals 0
    .param p1, "allowedInterval"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    .line 78
    return-void
.end method
