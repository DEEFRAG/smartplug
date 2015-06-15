.class public final enum Lorg/apache/mina/core/session/IoEventType;
.super Ljava/lang/Enum;
.source "IoEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/mina/core/session/IoEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/mina/core/session/IoEventType;

.field public static final enum CLOSE:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

.field public static final enum WRITE:Lorg/apache/mina/core/session/IoEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_CREATED"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    .line 31
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_OPENED"

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    .line 32
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_CLOSED"

    invoke-direct {v0, v1, v5}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    .line 33
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "MESSAGE_RECEIVED"

    invoke-direct {v0, v1, v6}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    .line 34
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "MESSAGE_SENT"

    invoke-direct {v0, v1, v7}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    .line 35
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "SESSION_IDLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    .line 36
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "EXCEPTION_CAUGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    .line 37
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    .line 38
    new-instance v0, Lorg/apache/mina/core/session/IoEventType;

    const-string v1, "CLOSE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/IoEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/mina/core/session/IoEventType;->$VALUES:[Lorg/apache/mina/core/session/IoEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/mina/core/session/IoEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/mina/core/session/IoEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method

.method public static values()[Lorg/apache/mina/core/session/IoEventType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/mina/core/session/IoEventType;->$VALUES:[Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0}, [Lorg/apache/mina/core/session/IoEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/mina/core/session/IoEventType;

    return-object v0
.end method
