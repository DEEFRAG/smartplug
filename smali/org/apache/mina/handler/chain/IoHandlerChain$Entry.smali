.class public Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
.super Ljava/lang/Object;
.source "IoHandlerChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/handler/chain/IoHandlerChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field private final command:Lorg/apache/mina/handler/chain/IoHandlerCommand;

.field private final name:Ljava/lang/String;

.field private final nextCommand:Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

.field private nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field private prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field final synthetic this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 2
    .param p2, "prevEntry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p3, "nextEntry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    if-nez p5, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    if-nez p4, :cond_1

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    iput-object p2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 309
    iput-object p3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 310
    iput-object p4, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;

    .line 311
    iput-object p5, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->command:Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .line 312
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextCommand:Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain;
    .param p2, "x1"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p3, "x2"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .param p6, "x5"    # Lorg/apache/mina/handler/chain/IoHandlerChain$1;

    .prologue
    .line 288
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p1, "x1"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object p1
.end method

.method static synthetic access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p1, "x1"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .prologue
    .line 288
    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->prevEntry:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->command:Lorg/apache/mina/handler/chain/IoHandlerCommand;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->nextCommand:Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    return-object v0
.end method
