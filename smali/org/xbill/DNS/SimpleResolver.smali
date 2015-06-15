.class public Lorg/xbill/DNS/SimpleResolver;
.super Ljava/lang/Object;
.source "SimpleResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# static fields
.field public static final DEFAULT_EDNS_PAYLOADSIZE:I = 0x500

.field public static final DEFAULT_PORT:I = 0x35

.field private static final DEFAULT_UDPSIZE:S = 0x200s

.field private static defaultResolver:Ljava/lang/String;

.field private static uniqueID:I


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private ignoreTruncation:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private queryOPT:Lorg/xbill/DNS/OPTRecord;

.field private timeoutValue:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private useTCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "localhost"

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/ResolverConfig;->server()Ljava/lang/String;

    move-result-object p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 53
    :cond_0
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 57
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 58
    return-void

    .line 56
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method private applyEDNS(Lorg/xbill/DNS/Message;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0
.end method

.method private maxUDPSize(Lorg/xbill/DNS/Message;)I
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    const/16 v0, 0x200

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v0

    goto :goto_0
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :cond_0
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-nez v1, :cond_1

    .line 189
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "Error parsing message"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    .line 190
    :cond_1
    check-cast v0, Lorg/xbill/DNS/WireParseException;

    throw v0
.end method

.method private sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 330
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lorg/xbill/DNS/SimpleResolver;->getTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->setTimeout(I)V

    .line 333
    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/ZoneTransferIn;->setLocalAddress(Ljava/net/SocketAddress;)V

    .line 335
    :try_start_0
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;
    :try_end_0
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object v0

    .line 341
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 342
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 343
    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 344
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 346
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_0
    return-object v1
.end method

.method public static setDefaultResolver(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V
    .locals 4

    .prologue
    .line 196
    if-nez p4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    invoke-virtual {p4, p2, p3, v0}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v0

    .line 199
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSIG verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method getTSIGKey()Lorg/xbill/DNS/TSIG;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    return-object v0
.end method

.method getTimeout()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    return-wide v0
.end method

.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 228
    const-string v0, "verbose"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    const/16 v1, 0xfc

    if-ne v0, v1, :cond_1

    .line 236
    invoke-direct {p0, p1}, Lorg/xbill/DNS/SimpleResolver;->sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 239
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/xbill/DNS/Message;

    .line 240
    invoke-direct {p0, v6}, Lorg/xbill/DNS/SimpleResolver;->applyEDNS(Lorg/xbill/DNS/Message;)V

    .line 241
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 244
    :cond_2
    const v0, 0xffff

    invoke-virtual {v6, v0}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v2

    .line 245
    invoke-direct {p0, v6}, Lorg/xbill/DNS/SimpleResolver;->maxUDPSize(Lorg/xbill/DNS/Message;)I

    move-result v3

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    add-long/2addr v4, v0

    move v0, v7

    .line 251
    :goto_1
    iget-boolean v1, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    if-nez v1, :cond_3

    array-length v1, v2

    if-le v1, v3, :cond_a

    :cond_3
    move v8, v9

    .line 253
    :goto_2
    if-eqz v8, :cond_4

    .line 254
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static {v0, v1, v2, v4, v5}, Lorg/xbill/DNS/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v0

    .line 263
    :goto_3
    array-length v1, v0

    const/16 v10, 0xc

    if-ge v1, v10, :cond_5

    .line 264
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid DNS header - too short"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v0

    goto :goto_3

    .line 273
    :cond_5
    aget-byte v1, v0, v7

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v10, v0, v9

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v1, v10

    .line 274
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    .line 275
    if-eq v1, v10, :cond_7

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid message id: expected "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "; got id "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v8, :cond_6

    .line 279
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-direct {v1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_6
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 282
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v8

    goto :goto_1

    .line 287
    :cond_7
    invoke-direct {p0, v0}, Lorg/xbill/DNS/SimpleResolver;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v1

    .line 288
    iget-object v10, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-direct {p0, v6, v1, v0, v10}, Lorg/xbill/DNS/SimpleResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V

    .line 289
    if-nez v8, :cond_8

    iget-boolean v0, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v9

    .line 293
    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    .line 295
    goto/16 :goto_0

    :cond_9
    move v0, v8

    goto/16 :goto_1

    :cond_a
    move v8, v0

    goto/16 :goto_2
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    sget v0, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v2, Lorg/xbill/DNS/ResolveThread;

    invoke-direct {v2, p0, p1, v1, p2}, Lorg/xbill/DNS/ResolveThread;-><init>(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Ljava/lang/Object;Lorg/xbill/DNS/ResolverListener;)V

    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 324
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 325
    return-object v1

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 319
    :cond_0
    const-string v0, "(none)"

    goto :goto_0
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 109
    return-void
.end method

.method public setAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 99
    return-void
.end method

.method public setEDNS(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(IIILjava/util/List;)V

    .line 153
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 6

    .prologue
    .line 142
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid EDNS level - must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    const/16 v1, 0x500

    .line 147
    :goto_0
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    const/4 v2, 0x0

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    .line 148
    return-void

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    .line 138
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 128
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    .line 118
    return-void
.end method

.method public setPort(I)V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 90
    return-void
.end method

.method public setTCP(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    .line 133
    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    .line 158
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/SimpleResolver;->setTimeout(II)V

    .line 173
    return-void
.end method

.method public setTimeout(II)V
    .locals 4

    .prologue
    .line 167
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 168
    return-void
.end method
