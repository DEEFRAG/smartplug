.class Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
.super Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.source "NioSocketSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionConfigImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;


# direct methods
.method private constructor <init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession;
    .param p2, "x1"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)V

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 2

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getReceiveBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .locals 2

    .prologue
    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getSoLinger()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getTrafficClass()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isKeepAlive()Z
    .locals 2

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getKeepAlive()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isOobInline()Z
    .locals 2

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getOOBInline()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getReuseAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-virtual {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 195
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getTcpNoDelay()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setKeepAlive(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setOobInline(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setOOBInline(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReceiveBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setReuseAddress(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSoLinger(I)V
    .locals 4
    .param p1, "linger"    # I

    .prologue
    .line 179
    if-gez p1, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpNoDelay(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)V
    .locals 2
    .param p1, "tc"    # I

    .prologue
    .line 225
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;->this$0:Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    # invokes: Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
