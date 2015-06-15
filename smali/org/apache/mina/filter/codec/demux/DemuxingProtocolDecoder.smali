.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;
.super Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.source "DemuxingProtocolDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    }
.end annotation


# static fields
.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final STATE:Lorg/apache/mina/core/session/AttributeKey;

.field private decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;-><init>()V

    .line 75
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 82
    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;)[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    return-object v0
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .line 230
    .local v1, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    if-nez v1, :cond_0

    .line 231
    new-instance v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .end local v1    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    .line 232
    .restart local v1    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    iget-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    .line 234
    .local v0, "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    if-eqz v0, :cond_0

    .line 235
    move-object v1, v0

    .line 239
    .end local v0    # "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addMessageDecoder(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/demux/MessageDecoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "decoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageDecoder;>;"
    if-nez p1, :cond_0

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "decoderClass"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    :try_start_0
    sget-object v2, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "registered":Z
    const-class v2, Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    new-instance v2, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$DefaultConstructorMessageDecoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    .line 99
    const/4 v1, 0x1

    .line 102
    :cond_1
    if-nez v1, :cond_2

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregisterable type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v1    # "registered":Z
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified class doesn\'t have a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "registered":Z
    :cond_2
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoder;)V
    .locals 2
    .param p1, "decoder"    # Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .prologue
    .line 109
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$SingletonMessageDecoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageDecoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V

    .line 110
    return-void
.end method

.method public addMessageDecoder(Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;)V
    .locals 4
    .param p1, "factory"    # Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .prologue
    const/4 v3, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "factory"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 117
    .local v0, "decoderFactories":[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 118
    .local v1, "newDecoderFactories":[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    array-length v2, v0

    aput-object p1, v1, v2

    .line 121
    iput-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->decoderFactories:[Lorg/apache/mina/filter/codec/demux/MessageDecoderFactory;

    .line 122
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-super {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V

    .line 224
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method protected doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
    .locals 16
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v11

    .line 132
    .local v11, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v13

    if-nez v13, :cond_5

    .line 133
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->decoders:[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)[Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v4

    .line 134
    .local v4, "decoders":[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    const/4 v12, 0x0

    .line 136
    .local v12, "undecodables":I
    array-length v13, v4

    add-int/lit8 v7, v13, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_0

    .line 137
    aget-object v3, v4, v7

    .line 138
    .local v3, "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v8

    .line 139
    .local v8, "limit":I
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v9

    .line 144
    .local v9, "pos":I
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decodable(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 146
    .local v10, "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 150
    sget-object v13, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v10, v13, :cond_1

    .line 151
    # setter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11, v3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 162
    .end local v3    # "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .end local v8    # "limit":I
    .end local v9    # "pos":I
    .end local v10    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :cond_0
    array-length v13, v4

    if-ne v12, v13, :cond_4

    .line 164
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "dump":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 166
    new-instance v6, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No appropriate message decoder: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 168
    .local v6, "e":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    invoke-virtual {v6, v5}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    .line 169
    throw v6

    .line 146
    .end local v5    # "dump":Ljava/lang/String;
    .end local v6    # "e":Lorg/apache/mina/filter/codec/ProtocolDecoderException;
    .restart local v3    # "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .restart local v8    # "limit":I
    .restart local v9    # "pos":I
    :catchall_0
    move-exception v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw v13

    .line 153
    .restart local v10    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :cond_1
    sget-object v13, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v10, v13, :cond_3

    .line 154
    add-int/lit8 v12, v12, 0x1

    .line 136
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 155
    :cond_3
    sget-object v13, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-eq v10, v13, :cond_2

    .line 156
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected decode result (see your decodable()): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 172
    .end local v3    # "decoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .end local v8    # "limit":I
    .end local v9    # "pos":I
    .end local v10    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :cond_4
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v13

    if-nez v13, :cond_5

    .line 174
    const/4 v13, 0x0

    .line 185
    .end local v4    # "decoders":[Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    .end local v7    # "i":I
    .end local v12    # "undecodables":I
    :goto_1
    return v13

    .line 179
    :cond_5
    :try_start_1
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    move-result-object v10

    .line 181
    .restart local v10    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    sget-object v13, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v10, v13, :cond_6

    .line 182
    const/4 v13, 0x0

    # setter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11, v13}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 183
    const/4 v13, 0x1

    goto :goto_1

    .line 184
    :cond_6
    sget-object v13, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v10, v13, :cond_7

    .line 185
    const/4 v13, 0x0

    goto :goto_1

    .line 186
    :cond_7
    sget-object v13, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    if-ne v10, v13, :cond_8

    .line 187
    const/4 v13, 0x0

    # setter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11, v13}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 188
    new-instance v13, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v14, "Message decoder returned NOT_OK."

    invoke-direct {v13, v14}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .end local v10    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :catch_0
    move-exception v6

    .line 197
    .local v6, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    # setter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11, v13}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 198
    throw v6

    .line 191
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "result":Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
    :cond_8
    const/4 v13, 0x0

    :try_start_2
    # setter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v11, v13}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$202(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;Lorg/apache/mina/filter/codec/demux/MessageDecoder;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    .line 192
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected decode result (see your decode()): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
.end method

.method public finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    .line 209
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;

    move-result-object v1

    .line 210
    .local v1, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;
    # getter for: Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->currentDecoder:Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    invoke-static {v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolDecoder$State;)Lorg/apache/mina/filter/codec/demux/MessageDecoder;

    move-result-object v0

    .line 211
    .local v0, "currentDecoder":Lorg/apache/mina/filter/codec/demux/MessageDecoder;
    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/filter/codec/demux/MessageDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    goto :goto_0
.end method
