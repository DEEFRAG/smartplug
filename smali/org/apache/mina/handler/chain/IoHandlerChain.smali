.class public Lorg/apache/mina/handler/chain/IoHandlerChain;
.super Ljava/lang/Object;
.source "IoHandlerChain.java"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private final NEXT_COMMAND:Ljava/lang/String;

.field private final head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field private final id:I

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    iput v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->id:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nextCommand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    .line 53
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    const-string v4, "head"

    invoke-direct {p0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v5

    move-object v1, p0

    move-object v3, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 54
    new-instance v3, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    iget-object v5, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    const-string v7, "tail"

    invoke-direct {p0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v8

    move-object v4, p0

    move-object v6, v2

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    iput-object v3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 55
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # setter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 56
    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/handler/chain/IoHandlerChain;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain;
    .param p1, "x1"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method private callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerCommand;->execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    return-void
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 4
    .param p1, "baseName"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 168
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown filter name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    return-object v0
.end method

.method private createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/handler/chain/IoHandlerChain$1;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    return-object v0
.end method

.method private createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/handler/chain/IoHandlerChain$2;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    return-object v0
.end method

.method private deregister(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .prologue
    .line 153
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 154
    .local v1, "prevEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 155
    .local v0, "nextEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    # setter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 156
    # setter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 158
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$400(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method private register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 7
    .param p1, "prevEntry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 144
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    .line 146
    .local v0, "newEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    # setter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 147
    # setter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 149
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 125
    .local v0, "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-direct {p0, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 124
    .end local v0    # "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 118
    .local v0, "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-direct {p0, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 119
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 117
    .end local v0    # "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->remove(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 141
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/handler/chain/IoHandlerCommand;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "commandType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/handler/chain/IoHandlerCommand;>;"
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 241
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v1, :cond_1

    .line 242
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 247
    :goto_1
    return v1

    .line 245
    :cond_0
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Lorg/apache/mina/handler/chain/IoHandlerCommand;)Z
    .locals 2
    .param p1, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 229
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 230
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v1, :cond_1

    .line 231
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 236
    :goto_1
    return v1

    .line 234
    :cond_0
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "next"    # Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 89
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;>;"
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v2}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 206
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v2, :cond_0

    .line 207
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_0
    return-object v1
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;>;"
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v2}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 217
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v2, :cond_0

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_0
    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 81
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    .end local v0    # "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :cond_0
    return-object v0
.end method

.method public getNextCommand(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 98
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 102
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 131
    .local v0, "entry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-direct {p0, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->deregister(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)V

    .line 132
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 130
    .end local v0    # "entry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/4 v2, 0x1

    .line 257
    .local v2, "empty":Z
    iget-object v3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v3}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 258
    .local v1, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v1, v3, :cond_1

    .line 259
    if-nez v2, :cond_0

    .line 260
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :goto_1
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    # getter for: Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 274
    :cond_1
    if-eqz v2, :cond_2

    .line 275
    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
