.class public Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.super Lorg/apache/mina/filter/util/CommonEventFilter;
.source "MdcInjectionFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    }
.end annotation


# static fields
.field private static final CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private callDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mdcKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    const-string v2, "context"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    .line 82
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    .line 115
    const-class v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "keys":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;>;"
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    .line 82
    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    .line 99
    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    .line 100
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;)V
    .locals 2
    .param p1, "keys"    # [Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    .line 82
    new-instance v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v1, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;>;"
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    .line 112
    return-void
.end method

.method private getAndFillContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 151
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->fillContext(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;)V

    .line 154
    :cond_0
    return-object v0
.end method

.method private static getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 2
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 160
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v0    # "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 162
    .restart local v0    # "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p0, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    return-object v0
.end method

.method public static getProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key should not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v1

    .line 215
    .local v1, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    .local v0, "answer":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 220
    .end local v0    # "answer":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "answer":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static removeProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)V
    .locals 3
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p1}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_0
    if-nez p2, :cond_1

    .line 236
    invoke-static {p0, p1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->removeProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)V

    .line 238
    :cond_1
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 239
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p1, p2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected fillContext(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_2
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/net/InetSocketAddress;

    if-ne v2, v3, :cond_6

    .line 187
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 188
    .local v1, "remoteAddress":Ljava/net/InetSocketAddress;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 190
    .local v0, "localAddress":Ljava/net/InetSocketAddress;
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_3
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_4
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_5
    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v3, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v0    # "localAddress":Ljava/net/InetSocketAddress;
    .end local v1    # "remoteAddress":Ljava/net/InetSocketAddress;
    :cond_6
    return-void
.end method

.method protected filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 8
    .param p1, "event"    # Lorg/apache/mina/core/filterchain/IoFilterEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v5, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, "currentCallDepth":I
    iget-object v5, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getAndFillContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    .line 126
    .local v0, "context":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 129
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->fire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-nez v1, :cond_2

    .line 139
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 147
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    return-void

    .line 144
    :cond_2
    iget-object v5, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 137
    :catchall_0
    move-exception v5

    if-nez v1, :cond_4

    .line 139
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .restart local v4    # "key":Ljava/lang/String;
    invoke-static {v4}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 142
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->remove()V

    .line 144
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    throw v5

    :cond_4
    iget-object v6, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4
.end method
