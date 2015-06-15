.class public Lcom/kankunit/smartplugcronus/util/XMPPUtil;
.super Ljava/lang/Object;
.source "XMPPUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;
    }
.end annotation


# static fields
.field public static connection:Lorg/jivesoftware/smack/XMPPConnection;

.field public static isNetConnect:Z

.field private static xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private mac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public static changePassword(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Z
    .locals 2
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getAccountManager()Lorg/jivesoftware/smack/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/AccountManager;->changePassword(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v1, 0x1

    .line 227
    :goto_0
    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteAccount(Lorg/jivesoftware/smack/XMPPConnection;)Z
    .locals 2
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getAccountManager()Lorg/jivesoftware/smack/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/AccountManager;->deleteAccount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    const/4 v1, 0x1

    .line 305
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;-><init>()V

    sput-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    .line 57
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    iput-object p0, v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->context:Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connectionServer()V

    .line 61
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    sget-object v1, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->login(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    :cond_0
    :goto_0
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    return-object v0

    .line 65
    :cond_1
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    iput-object p0, v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->context:Landroid/content/Context;

    .line 66
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->xmppUtil:Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isConnected()Z

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 481
    return-void
.end method


# virtual methods
.method public SendBCMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "messgage"    # Ljava/lang/String;
    .param p4, "groupName"    # Ljava/lang/String;

    .prologue
    .line 317
    :try_start_0
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 318
    .local v1, "m":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1, p3}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@broadcast.xjtu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 320
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "m":Lorg/jivesoftware/smack/packet/Message;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public SendMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "messgage"    # Ljava/lang/String;

    .prologue
    .line 332
    :try_start_0
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v2

    const-string v3, "admin@xjtu"

    .line 333
    new-instance v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil$1;-><init>(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V

    .line 332
    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    .line 340
    .local v0, "mychat":Lorg/jivesoftware/smack/Chat;
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/Chat;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "mychat":Lorg/jivesoftware/smack/Chat;
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "xe":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method

.method public conServer()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    const-string v4, "kankun-smartplug.com"

    const/16 v5, 0x1466

    invoke-direct {v0, v4, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;I)V

    .line 128
    .local v0, "config":Lorg/jivesoftware/smack/ConnectionConfiguration;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSASLAuthenticationEnabled(Z)V

    .line 134
    :try_start_0
    new-instance v4, Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v4, v0}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    sput-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 135
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    .line 136
    const/4 v4, 0x1

    sput-boolean v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    return v2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 140
    sput-boolean v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException;
    :goto_1
    move v2, v3

    .line 145
    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    sput-boolean v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->isNetConnect:Z

    goto :goto_1
.end method

.method public connectionServer()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;-><init>(Lcom/kankunit/smartplugcronus/util/XMPPUtil;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil$connServerThread;->start()V

    .line 77
    return-void
.end method

.method public getRoster(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    :try_start_0
    sget-object v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v3

    .line 372
    .local v3, "roster":Lorg/jivesoftware/smack/Roster;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, "EntriesList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual {v3}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v4

    .line 374
    .local v4, "rosterEntry":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 375
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 382
    .end local v0    # "EntriesList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v3    # "roster":Lorg/jivesoftware/smack/Roster;
    .end local v4    # "rosterEntry":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    :goto_1
    return-object v0

    .line 376
    .restart local v0    # "EntriesList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/RosterEntry;>;"
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    .restart local v3    # "roster":Lorg/jivesoftware/smack/Roster;
    .restart local v4    # "rosterEntry":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/RosterEntry;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    .end local v0    # "EntriesList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v3    # "roster":Lorg/jivesoftware/smack/Roster;
    .end local v4    # "rosterEntry":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getRosterList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    :try_start_0
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v1

    .line 355
    .local v1, "rosters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    .end local v1    # "rosters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    :goto_1
    return-object v1

    .line 355
    .restart local v1    # "rosters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/RosterEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v1    # "rosters":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 203
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    .line 205
    :try_start_0
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    sget-object v2, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    const-string v3, "android"

    invoke-virtual {v2, p1, p2, v3}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 152
    sget-object v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v3, :cond_0

    .line 161
    :goto_0
    return v2

    .line 154
    :cond_0
    sget-object v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getAccountManager()Lorg/jivesoftware/smack/AccountManager;

    move-result-object v0

    .line 156
    .local v0, "amgr":Lorg/jivesoftware/smack/AccountManager;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/AccountManager;->createAccount(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v2, 0x1

    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "phonemac"    # Ljava/lang/String;
    .param p6, "deviceModel"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .param p7, "plugName"    # Ljava/lang/String;
    .param p8, "minaHandler"    # Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .prologue
    .line 405
    :try_start_0
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 406
    sget-object v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 409
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/kankunit/smartplugcronus/service/MessageService;

    move-object/from16 v0, p3

    invoke-direct {v15, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v15, "i":Landroid/content/Intent;
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 411
    const-string v3, "nnnnnn~~~~~not connect"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    const/4 v3, 0x0

    .line 470
    .end local v15    # "i":Landroid/content/Intent;
    :goto_0
    return v3

    .line 418
    :cond_1
    const-string v3, "@kankun-smartplug.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    sget-object v3, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v12

    .line 420
    .local v12, "cm":Lorg/jivesoftware/smack/ChatManager;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v11

    .line 421
    .local v11, "chat":Lorg/jivesoftware/smack/Chat;
    invoke-static/range {p2 .. p2}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jivesoftware/smack/Chat;->sendMessage(Ljava/lang/String;)V

    .line 470
    .end local v11    # "chat":Lorg/jivesoftware/smack/Chat;
    .end local v12    # "cm":Lorg/jivesoftware/smack/ChatManager;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 423
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->minaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 428
    .local v13, "cmd":Ljava/lang/String;
    if-eqz p8, :cond_3

    .line 429
    :try_start_1
    move-object/from16 v0, p8

    invoke-static {v0, v13}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsg(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 433
    :catch_0
    move-exception v14

    .line 434
    .local v14, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 466
    .end local v13    # "cmd":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v14

    .line 467
    .local v14, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v14}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 468
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .end local v14    # "e":Lorg/jivesoftware/smack/XMPPException;
    .restart local v13    # "cmd":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v3, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    invoke-static {v3, v13}, Lcom/kankunit/smartplugcronus/minautil/MinaUtil;->sendMsgWithNoResponse(Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 441
    .end local v13    # "cmd":Ljava/lang/String;
    :cond_4
    if-nez p4, :cond_5

    .line 442
    const/4 v3, 0x1

    goto :goto_0

    .line 444
    :cond_5
    if-eqz p5, :cond_6

    :try_start_4
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 445
    invoke-virtual/range {p6 .. p6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 451
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/kankunit/smartplugcronus/util/DataUtil;->isDirect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 452
    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setIsDirect(I)V

    .line 463
    :cond_7
    new-instance v2, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v4, ""

    const-string v5, ""

    const v7, 0xb156

    invoke-virtual/range {p6 .. p6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v3

    if-nez v3, :cond_9

    const/4 v8, 0x0

    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v10}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;Ljava/lang/String;)V

    .line 464
    .local v2, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    goto/16 :goto_1

    .line 453
    .end local v2    # "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    :cond_8
    invoke-static {}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isNetConnect()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 458
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/kankunit/smartplugcronus/service/MessageService;

    move-object/from16 v0, p3

    invoke-direct {v15, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .restart local v15    # "i":Landroid/content/Intent;
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_1

    .line 460
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 463
    .end local v15    # "i":Landroid/content/Intent;
    :cond_9
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 385
    sget-object v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 386
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    .line 387
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->mac:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 388
    .local v0, "b":Z
    if-nez v0, :cond_1

    .line 400
    .end local v0    # "b":Z
    :goto_0
    return v4

    .line 392
    :cond_1
    sget-object v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v2

    .line 393
    .local v2, "cm":Lorg/jivesoftware/smack/ChatManager;
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v1

    .line 395
    .local v1, "chat":Lorg/jivesoftware/smack/Chat;
    :try_start_0
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/Chat;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    const/4 v4, 0x1

    goto :goto_0

    .line 396
    :catch_0
    move-exception v3

    .line 397
    .local v3, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPresence(I)V
    .locals 6
    .param p1, "code"    # I

    .prologue
    .line 235
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v4, :cond_0

    .line 292
    :goto_0
    return-void

    .line 238
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 241
    .local v2, "presence":Lorg/jivesoftware/smack/packet/Presence;
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 245
    .end local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :pswitch_1
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 246
    .restart local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Mode;->chat:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 247
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 252
    .end local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :pswitch_2
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 253
    .restart local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Mode;->dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 254
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 259
    .end local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :pswitch_3
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 260
    .restart local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Mode;->away:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 261
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 266
    .end local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :pswitch_4
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v3

    .line 267
    .local v3, "roster":Lorg/jivesoftware/smack/Roster;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v0

    .line 268
    .local v0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 278
    .restart local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    const-string v4, "ID_NOT_AVAILABLE"

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 279
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 280
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 281
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 268
    .end local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterEntry;

    .line 269
    .local v1, "entry":Lorg/jivesoftware/smack/RosterEntry;
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 270
    .restart local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    const-string v5, "ID_NOT_AVAILABLE"

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 271
    sget-object v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 273
    sget-object v5, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_1

    .line 285
    .end local v0    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v1    # "entry":Lorg/jivesoftware/smack/RosterEntry;
    .end local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    .end local v3    # "roster":Lorg/jivesoftware/smack/Roster;
    :pswitch_5
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v2, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 286
    .restart local v2    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
