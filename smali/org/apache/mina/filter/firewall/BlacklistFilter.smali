.class public Lorg/apache/mina/filter/firewall/BlacklistFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "BlacklistFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final blacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    return-void
.end method

.method private blockSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 230
    sget-object v0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Remote address in the blacklist; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    .line 232
    return-void
.end method

.method private isBlocked(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 235
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 236
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    instance-of v4, v2, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_1

    .line 237
    check-cast v2, Ljava/net/InetSocketAddress;

    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 240
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v4, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/filter/firewall/Subnet;

    .line 241
    .local v3, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {v3, v0}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const/4 v4, 0x1

    .line 247
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public block(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adress to block can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 130
    return-void
.end method

.method public block(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 2
    .param p1, "subnet"    # Lorg/apache/mina/filter/firewall/Subnet;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 210
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->isBlocked(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blockSession(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public setBlacklist(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/InetAddress;>;"
    if-nez p1, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addresses"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 100
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 102
    .end local v0    # "address":Ljava/net/InetAddress;
    :cond_1
    return-void
.end method

.method public setBlacklist([Ljava/net/InetAddress;)V
    .locals 4
    .param p1, "addresses"    # [Ljava/net/InetAddress;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addresses"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 60
    aget-object v0, p1, v1

    .line 61
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Ljava/net/InetAddress;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    return-void
.end method

.method public setSubnetBlacklist(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "subnets":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/mina/filter/firewall/Subnet;>;"
    if-nez p1, :cond_0

    .line 113
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Subnets must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/firewall/Subnet;

    .line 117
    .local v1, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    goto :goto_0

    .line 119
    .end local v1    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_1
    return-void
.end method

.method public setSubnetBlacklist([Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 6
    .param p1, "subnets"    # [Lorg/apache/mina/filter/firewall/Subnet;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Subnets must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    iget-object v4, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 77
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/mina/filter/firewall/Subnet;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 78
    .local v3, "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    invoke-virtual {p0, v3}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->block(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "subnet":Lorg/apache/mina/filter/firewall/Subnet;
    :cond_1
    return-void
.end method

.method public unblock(Ljava/net/InetAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adress to unblock can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/firewall/BlacklistFilter;->unblock(Lorg/apache/mina/filter/firewall/Subnet;)V

    .line 152
    return-void
.end method

.method public unblock(Lorg/apache/mina/filter/firewall/Subnet;)V
    .locals 2
    .param p1, "subnet"    # Lorg/apache/mina/filter/firewall/Subnet;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Subnet can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/BlacklistFilter;->blacklist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method
