.class public Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProfilerTimerFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;,
        Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
    }
.end annotation


# instance fields
.field private messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private profileMessageReceived:Z

.field private profileMessageSent:Z

.field private profileSessionClosed:Z

.field private profileSessionCreated:Z

.field private profileSessionIdle:Z

.field private profileSessionOpened:Z

.field private sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

.field private volatile timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 107
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;-><init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V

    .line 123
    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p2, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 68
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 74
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 92
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 98
    iput-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 142
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 144
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    .line 145
    return-void
.end method

.method private varargs setProfilers([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 7
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    const/4 v6, 0x1

    .line 153
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/mina/core/session/IoEventType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 154
    .local v3, "type":Lorg/apache/mina/core/session/IoEventType;
    sget-object v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {v3}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 153
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :pswitch_0
    new-instance v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v4, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 157
    iput-boolean v6, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    goto :goto_1

    .line 161
    :pswitch_1
    new-instance v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v4, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 162
    iput-boolean v6, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    goto :goto_1

    .line 166
    :pswitch_2
    new-instance v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v4, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 167
    iput-boolean v6, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    goto :goto_1

    .line 171
    :pswitch_3
    new-instance v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v4, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 172
    iput-boolean v6, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    goto :goto_1

    .line 176
    :pswitch_4
    new-instance v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v4, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 177
    iput-boolean v6, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    goto :goto_1

    .line 181
    :pswitch_5
    new-instance v4, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v4, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    .line 182
    iput-boolean v6, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    goto :goto_1

    .line 186
    .end local v3    # "type":Lorg/apache/mina/core/session/IoEventType;
    :cond_0
    return-void

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private timeNow()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 888
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 890
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    goto :goto_0

    .line 893
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    goto :goto_0

    .line 896
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAverageTime(Lorg/apache/mina/core/session/IoEventType;)D
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 499
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    .line 537
    :goto_0
    return-wide v0

    .line 508
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    goto :goto_0

    .line 515
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    goto :goto_0

    .line 522
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    goto :goto_0

    .line 529
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    goto :goto_0

    .line 536
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getAverage()D

    move-result-wide v0

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getEventsToProfile()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 301
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/mina/core/session/IoEventType;>;"
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v1, :cond_0

    .line 302
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v1, :cond_1

    .line 306
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_1
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v1, :cond_2

    .line 310
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_2
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v1, :cond_3

    .line 314
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_3
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v1, :cond_4

    .line 318
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_4
    iget-boolean v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v1, :cond_5

    .line 322
    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_5
    return-object v0
.end method

.method public getMaximumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 731
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    .line 769
    :goto_0
    return-wide v0

    .line 740
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    goto :goto_0

    .line 747
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    goto :goto_0

    .line 754
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    goto :goto_0

    .line 761
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    goto :goto_0

    .line 768
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMaximum()J

    move-result-wide v0

    goto :goto_0

    .line 731
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMinimumTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 673
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    .line 711
    :goto_0
    return-wide v0

    .line 682
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    goto :goto_0

    .line 689
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    goto :goto_0

    .line 696
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    goto :goto_0

    .line 703
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    goto :goto_0

    .line 710
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getMinimum()J

    move-result-wide v0

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getTotalCalls(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 557
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    .line 595
    :goto_0
    return-wide v0

    .line 566
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    goto :goto_0

    .line 573
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    goto :goto_0

    .line 580
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    goto :goto_0

    .line 587
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    goto :goto_0

    .line 594
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getCallsNumber()J

    move-result-wide v0

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getTotalTime(Lorg/apache/mina/core/session/IoEventType;)J
    .locals 2
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 615
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You are not monitoring this event.  Please add this event first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :pswitch_0
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    .line 653
    :goto_0
    return-wide v0

    .line 624
    :pswitch_1
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    goto :goto_0

    .line 631
    :pswitch_2
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    goto :goto_0

    .line 638
    :pswitch_3
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    goto :goto_0

    .line 645
    :pswitch_4
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    goto :goto_0

    .line 652
    :pswitch_5
    iget-boolean v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-virtual {v0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->getTotal()J

    move-result-wide v0

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    iget-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    if-eqz v4, :cond_0

    .line 354
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 355
    .local v2, "start":J
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 356
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 357
    .local v0, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 361
    .end local v0    # "end":J
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 379
    iget-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    if-eqz v4, :cond_0

    .line 380
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 381
    .local v2, "start":J
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 382
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 383
    .local v0, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 387
    .end local v0    # "end":J
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method public profile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    const/4 v2, 0x1

    .line 203
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    .line 207
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageReceivedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    .line 214
    :pswitch_1
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    .line 216
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->messageSentTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    .line 223
    :pswitch_2
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    .line 225
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    .line 232
    :pswitch_3
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    .line 234
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    .line 241
    :pswitch_4
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    .line 243
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    .line 250
    :pswitch_5
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    .line 252
    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;-><init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 480
    iget-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    if-eqz v4, :cond_0

    .line 481
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 482
    .local v2, "start":J
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 483
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 484
    .local v0, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionClosedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 488
    .end local v0    # "end":J
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 404
    iget-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    if-eqz v4, :cond_0

    .line 405
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 406
    .local v2, "start":J
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 407
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 408
    .local v0, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionCreatedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 412
    .end local v0    # "end":J
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    iget-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    if-eqz v4, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 457
    .local v2, "start":J
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 458
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 459
    .local v0, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionIdleTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 463
    .end local v0    # "end":J
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 429
    iget-boolean v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    if-eqz v4, :cond_0

    .line 430
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v2

    .line 431
    .local v2, "start":J
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    .line 432
    invoke-direct {p0}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeNow()J

    move-result-wide v0

    .line 433
    .local v0, "end":J
    iget-object v4, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->sessionOpenedTimerWorker:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;

    sub-long v5, v0, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->addNewDuration(J)V

    .line 437
    .end local v0    # "end":J
    .end local v2    # "start":J
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public varargs setEventsToProfile([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 0
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->setProfilers([Lorg/apache/mina/core/session/IoEventType;)V

    .line 335
    return-void
.end method

.method public setTimeUnit(Ljava/util/concurrent/TimeUnit;)V
    .locals 0
    .param p1, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 195
    return-void
.end method

.method public stopProfile(Lorg/apache/mina/core/session/IoEventType;)V
    .locals 3
    .param p1, "type"    # Lorg/apache/mina/core/session/IoEventType;

    .prologue
    const/4 v2, 0x0

    .line 266
    sget-object v0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$1;->$SwitchMap$org$apache$mina$core$session$IoEventType:[I

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageReceived:Z

    goto :goto_0

    .line 272
    :pswitch_1
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileMessageSent:Z

    goto :goto_0

    .line 276
    :pswitch_2
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionCreated:Z

    goto :goto_0

    .line 280
    :pswitch_3
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionOpened:Z

    goto :goto_0

    .line 284
    :pswitch_4
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionIdle:Z

    goto :goto_0

    .line 288
    :pswitch_5
    iput-boolean v2, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;->profileSessionClosed:Z

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
