.class public Lorg/apache/mina/core/session/IdleStatus;
.super Ljava/lang/Object;
.source "IdleStatus.java"


# static fields
.field public static final BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

.field public static final READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

.field public static final WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;


# instance fields
.field private final strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/apache/mina/core/session/IdleStatus;

    const-string v1, "reader idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/core/session/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/IdleStatus;->READER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 47
    new-instance v0, Lorg/apache/mina/core/session/IdleStatus;

    const-string v1, "writer idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/core/session/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/IdleStatus;->WRITER_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    .line 52
    new-instance v0, Lorg/apache/mina/core/session/IdleStatus;

    const-string v1, "both idle"

    invoke-direct {v0, v1}, Lorg/apache/mina/core/session/IdleStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "strValue"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/mina/core/session/IdleStatus;->strValue:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/core/session/IdleStatus;->strValue:Ljava/lang/String;

    return-object v0
.end method
