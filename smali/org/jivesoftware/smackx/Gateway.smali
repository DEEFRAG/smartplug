.class public Lorg/jivesoftware/smackx/Gateway;
.super Ljava/lang/Object;
.source "Gateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/Gateway$1;,
        Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;
    }
.end annotation


# instance fields
.field private connection:Lorg/jivesoftware/smack/Connection;

.field private entityJID:Ljava/lang/String;

.field private identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

.field private info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

.field private registerInfo:Lorg/jivesoftware/smack/packet/Registration;

.field private roster:Lorg/jivesoftware/smack/Roster;

.field private sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    .line 43
    invoke-virtual {p1}, Lorg/jivesoftware/smack/Connection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    .line 44
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    .line 45
    iput-object p2, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    .line 46
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/Gateway;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 51
    iput-object p4, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/Gateway;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Roster;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/Gateway;)Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private discoverInfo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->sdManager:Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->getIdentities()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 59
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gateway"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    .line 64
    :cond_1
    return-void
.end method

.method private getIdentity()Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    return-object v0
.end method

.method private getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->registerInfo:Lorg/jivesoftware/smack/packet/Registration;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->refreshRegisterInfo()V

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->registerInfo:Lorg/jivesoftware/smack/packet/Registration;

    return-object v0
.end method

.method private refreshRegisterInfo()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 82
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setFrom(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 84
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 88
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 89
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 90
    instance-of v1, v0, Lorg/jivesoftware/smack/packet/Registration;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    check-cast v0, Lorg/jivesoftware/smack/packet/Registration;

    .line 92
    iput-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->registerInfo:Lorg/jivesoftware/smack/packet/Registration;

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public canRegister()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->info:Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    const-string v1, "jabber:iq:register"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Registration;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getFieldNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getInstructions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/Gateway;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getRequiredFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->discoverInfo()V

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->identity:Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/Gateway;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 289
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/Gateway;->login(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 290
    return-void
.end method

.method public login(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setType(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 299
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 302
    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 310
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 313
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/Gateway;->register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getRegisterInfo()Lorg/jivesoftware/smack/packet/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You are already registered with this gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Registration;->setFrom(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 211
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Registration;->setUsername(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/packet/Registration;->setPassword(Ljava/lang/String;)V

    .line 213
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 218
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 219
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 221
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 222
    if-eqz v0, :cond_4

    instance-of v1, v0, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v1, :cond_4

    .line 223
    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 224
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 225
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 227
    :cond_2
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_3

    .line 228
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 230
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v1, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/jivesoftware/smackx/Gateway$GatewayPresenceListener;-><init>(Lorg/jivesoftware/smackx/Gateway;Lorg/jivesoftware/smackx/Gateway$1;)V

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v3, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/Connection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jivesoftware/smackx/Gateway;->getIdentity()Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smack/Roster;->createEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 237
    return-void

    .line 235
    :cond_4
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Packet reply timeout"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregister()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lorg/jivesoftware/smack/packet/Registration;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Registration;-><init>()V

    .line 256
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Connection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setFrom(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setTo(Ljava/lang/String;)V

    .line 258
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Registration;->setRemove(Z)V

    .line 260
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    new-instance v2, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Registration;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/Connection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lorg/jivesoftware/smackx/Gateway;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 263
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 264
    invoke-virtual {v1}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 265
    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v1, :cond_2

    .line 266
    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 267
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 270
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_1

    .line 271
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v1

    .line 273
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->entityJID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lorg/jivesoftware/smackx/Gateway;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Roster;->removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V

    .line 279
    return-void

    .line 277
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    const-string v1, "Packet reply timeout"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
