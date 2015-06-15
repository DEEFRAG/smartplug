.class public Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
.super Ljava/lang/Object;
.source "MessageDecoderResult.java"


# static fields
.field public static NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

.field public static NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

.field public static OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    const-string v1, "OK"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 42
    new-instance v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    const-string v1, "NEED_DATA"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    .line 50
    new-instance v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    const-string v1, "NOT_OK"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->name:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->name:Ljava/lang/String;

    return-object v0
.end method
