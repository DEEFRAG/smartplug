.class public Lorg/apache/mina/proxy/event/IoSessionEvent;
.super Ljava/lang/Object;
.source "IoSessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/event/IoSessionEvent$1;
    }
.end annotation


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private status:Lorg/apache/mina/core/session/IdleStatus;

.field private final type:Lorg/apache/mina/proxy/event/IoSessionEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEvent;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEvent;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 84
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventType;->IDLE:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    .line 85
    iput-object p3, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->status:Lorg/apache/mina/core/session/IdleStatus;

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V
    .locals 0
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "type"    # Lorg/apache/mina/proxy/event/IoSessionEventType;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 70
    iput-object p2, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->session:Lorg/apache/mina/core/session/IoSession;

    .line 71
    iput-object p3, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->type:Lorg/apache/mina/proxy/event/IoSessionEventType;

    .line 72
    return-void
.end method

.method private static deliverEvent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2
    .param p0, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "type"    # Lorg/apache/mina/proxy/event/IoSessionEventType;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 109
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEvent$1;->$SwitchMap$org$apache$mina$proxy$event$IoSessionEventType:[I

    invoke-virtual {p2}, Lorg/apache/mina/proxy/event/IoSessionEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 111
    :pswitch_0
    invoke-interface {p0, p1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-interface {p0, p1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-interface {p0, p1, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0

    .line 120
    :pswitch_3
    invoke-interface {p0, p1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public deliverEvent()V
    .locals 4

    .prologue
    .line 92
    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEvent;->logger:Lorg/slf4j/Logger;

    const-string v1, "Delivering event {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->session:Lorg/apache/mina/core/session/IoSession;

    iget-object v2, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->type:Lorg/apache/mina/proxy/event/IoSessionEventType;

    iget-object v3, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->status:Lorg/apache/mina/core/session/IdleStatus;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;Lorg/apache/mina/core/session/IdleStatus;)V

    .line 94
    return-void
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public getStatus()Lorg/apache/mina/core/session/IdleStatus;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->status:Lorg/apache/mina/core/session/IdleStatus;

    return-object v0
.end method

.method public getType()Lorg/apache/mina/proxy/event/IoSessionEventType;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->type:Lorg/apache/mina/proxy/event/IoSessionEventType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, " - [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/proxy/event/IoSessionEvent;->type:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
