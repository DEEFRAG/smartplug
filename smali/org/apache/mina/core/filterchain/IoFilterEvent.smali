.class public Lorg/apache/mina/core/filterchain/IoFilterEvent;
.super Lorg/apache/mina/core/session/IoEvent;
.source "IoFilterEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/filterchain/IoFilterEvent$1;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    .line 43
    sget-object v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    sput-boolean v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "type"    # Lorg/apache/mina/core/session/IoEventType;
    .param p3, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p4, "parameter"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/mina/core/session/IoEvent;-><init>(Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nextFilter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 56
    return-void
.end method


# virtual methods
.method public fire()V
    .locals 10

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 65
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v0

    .line 66
    .local v0, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v4

    .line 68
    .local v4, "type":Lorg/apache/mina/core/session/IoEventType;
    sget-boolean v6, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 69
    sget-object v6, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Firing a {} event for session {}"

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v4, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :cond_0
    sget-object v6, Lorg/apache/mina/core/filterchain/IoFilterEvent$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v4}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 114
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown event type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "parameter":Ljava/lang/Object;
    invoke-interface {v0, v2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 117
    .end local v1    # "parameter":Ljava/lang/Object;
    :goto_0
    sget-boolean v6, Lorg/apache/mina/core/filterchain/IoFilterEvent;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 118
    sget-object v6, Lorg/apache/mina/core/filterchain/IoFilterEvent;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Event {} has been fired for session {}"

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v4, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    :cond_1
    return-void

    .line 79
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 80
    .local v5, "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v0, v2, v5}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 84
    .end local v5    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 85
    .restart local v5    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v0, v2, v5}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 89
    .end local v5    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :pswitch_3
    invoke-interface {v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 94
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-interface {v0, v2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->getParameter()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/core/session/IdleStatus;

    invoke-interface {v0, v2, v6}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0

    .line 102
    :pswitch_6
    invoke-interface {v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 106
    :pswitch_7
    invoke-interface {v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 110
    :pswitch_8
    invoke-interface {v0, v2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/IoFilterEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object v0
.end method
