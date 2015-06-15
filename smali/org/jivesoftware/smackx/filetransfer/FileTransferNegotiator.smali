.class public Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
.super Ljava/lang/Object;
.source "FileTransferNegotiator.java"


# static fields
.field public static IBB_ONLY:Z = false

.field private static final NAMESPACE:[Ljava/lang/String;

.field protected static final STREAM_DATA_FIELD_NAME:Ljava/lang/String; = "stream-method"

.field private static final STREAM_INIT_PREFIX:Ljava/lang/String; = "jsi_"

.field private static final randomGenerator:Ljava/util/Random;

.field private static final transferObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/jivesoftware/smack/Connection;",
            "Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private final inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://jabber.org/protocol/si/profile/file-transfer"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "http://jabber.org/protocol/si"

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->randomGenerator:Ljava/util/Random;

    .line 79
    sput-boolean v3, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/Connection;)V
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->configureConnection(Lorg/jivesoftware/smack/Connection;)V

    .line 216
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    .line 217
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 218
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/filetransfer/IBBTransferNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->cleanup(Lorg/jivesoftware/smack/Connection;)V

    return-void
.end method

.method private cleanup(Lorg/jivesoftware/smack/Connection;)V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->cleanup()V

    .line 249
    :cond_0
    return-void
.end method

.method private configureConnection(Lorg/jivesoftware/smack/Connection;)V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$2;-><init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;Lorg/jivesoftware/smack/Connection;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 243
    return-void
.end method

.method private createDefaultInitiationForm()Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 4

    .prologue
    .line 474
    new-instance v0, Lorg/jivesoftware/smackx/packet/DataForm;

    const-string v1, "form"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    .line 475
    new-instance v1, Lorg/jivesoftware/smackx/FormField;

    const-string v2, "stream-method"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 476
    const-string v2, "list-multi"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 477
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 478
    new-instance v2, Lorg/jivesoftware/smackx/FormField$Option;

    const-string v3, "http://jabber.org/protocol/bytestreams"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/FormField$Option;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/FormField;->addOption(Lorg/jivesoftware/smackx/FormField$Option;)V

    .line 480
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/FormField$Option;

    const-string v3, "http://jabber.org/protocol/ibb"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/FormField$Option;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/FormField;->addOption(Lorg/jivesoftware/smackx/FormField$Option;)V

    .line 481
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 482
    return-object v0
.end method

.method public static createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator$1;-><init>()V

    .line 183
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 188
    return-object v0
.end method

.method public static getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;
    .locals 2

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Connection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 98
    :cond_1
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;)V

    .line 104
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V

    .line 105
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->transferObject:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 309
    .line 311
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->getOptions()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField$Option;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField$Option;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v5, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v5, :cond_1

    move v3, v2

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    const-string v5, "http://jabber.org/protocol/ibb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 317
    goto :goto_0

    .line 321
    :cond_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 322
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v2, "No acceptable transfer mechanism"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 324
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 327
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "list-multi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    .line 336
    :goto_1
    return-object v0

    .line 332
    :cond_4
    if-eqz v3, :cond_5

    .line 333
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1

    .line 336
    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1
.end method

.method private getOutgoingNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 443
    .line 445
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v3, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    const-string v5, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v5, :cond_1

    move v3, v2

    .line 448
    goto :goto_0

    .line 450
    :cond_1
    const-string v5, "http://jabber.org/protocol/ibb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 451
    goto :goto_0

    .line 455
    :cond_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 456
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v2, "No acceptable transfer mechanism"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 458
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 461
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 462
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/FaultTolerantNegotiator;-><init>(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    .line 469
    :goto_1
    return-object v0

    .line 465
    :cond_4
    if-eqz v3, :cond_5

    .line 466
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->byteStreamTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1

    .line 469
    :cond_5
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->inbandTransferManager:Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    goto :goto_1
.end method

.method private getStreamMethodField(Lorg/jivesoftware/smackx/packet/DataForm;)Lorg/jivesoftware/smackx/FormField;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 295
    .line 296
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 298
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    const-string v4, "stream-method"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSupportedProtocols()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    const-string v1, "http://jabber.org/protocol/ibb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    sget-boolean v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v1, :cond_0

    .line 200
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;)Z
    .locals 3

    .prologue
    .line 149
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    const-string v2, "http://jabber.org/protocol/ibb"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 156
    const-string v2, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V
    .locals 4

    .prologue
    .line 119
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v1

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->NAMESPACE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    const-string v2, "http://jabber.org/protocol/ibb"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-boolean v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->IBB_ONLY:Z

    if-nez v2, :cond_0

    .line 126
    const-string v2, "http://jabber.org/protocol/bytestreams"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    return-void
.end method


# virtual methods
.method public getNextStreamID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    const-string v1, "jsi_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public negotiateOutgoingTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;-><init>()V

    .line 401
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setSesssionID(Ljava/lang/String;)V

    .line 402
    invoke-static {p3}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setMimeType(Ljava/lang/String;)V

    .line 404
    new-instance v1, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    invoke-direct {v1, p3, p4, p5}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;-><init>(Ljava/lang/String;J)V

    .line 405
    invoke-virtual {v1, p6}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->setDesc(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFile(Lorg/jivesoftware/smackx/packet/StreamInitiation$File;)V

    .line 408
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createDefaultInitiationForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 410
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setFrom(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setTo(Ljava/lang/String;)V

    .line 412
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 414
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v2

    .line 416
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 417
    int-to-long v0, p7

    invoke-virtual {v2, v0, v1}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 418
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 420
    instance-of v0, v1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 421
    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 422
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    check-cast v1, Lorg/jivesoftware/smackx/packet/StreamInitiation;

    .line 424
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFeatureNegotiationForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getStreamMethodField(Lorg/jivesoftware/smackx/packet/DataForm;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getOutgoingNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 428
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 432
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "File transfer response unreadable"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rejectStream(Lorg/jivesoftware/smackx/packet/StreamInitiation;)V
    .locals 5

    .prologue
    .line 346
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v1, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    const-string v2, "Offer Declined"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 349
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 350
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 351
    return-void
.end method

.method public selectStreamNegotiator(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamInitiation()Lorg/jivesoftware/smackx/packet/StreamInitiation;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFeatureNegotiationForm()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getStreamMethodField(Lorg/jivesoftware/smackx/packet/DataForm;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v1

    .line 265
    if-nez v1, :cond_0

    .line 266
    const-string v1, "No stream methods contained in packet."

    .line 267
    new-instance v2, Lorg/jivesoftware/smack/packet/XMPPError;

    sget-object v3, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/XMPPError$Condition;

    invoke-direct {v2, v3, v1}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v3, v4, v0, v5}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 270
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 271
    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 272
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0

    .line 279
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getNegotiator(Lorg/jivesoftware/smackx/FormField;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    return-object v0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getTo()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-static {v2, v3, v0, v4}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->createIQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 284
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 285
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 286
    throw v1
.end method
