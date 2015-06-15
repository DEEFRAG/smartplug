.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;
.super Ljava/lang/Object;
.source "CompositeByteArrayRelativeWriter.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChunkedExpander"
.end annotation


# instance fields
.field private final baf:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

.field private final newComponentSize:I


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/ByteArrayFactory;I)V
    .locals 0
    .param p1, "baf"    # Lorg/apache/mina/util/byteaccess/ByteArrayFactory;
    .param p2, "newComponentSize"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->baf:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    .line 81
    iput p2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->newComponentSize:I

    .line 82
    return-void
.end method


# virtual methods
.method public expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 4
    .param p1, "cba"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p2, "minSize"    # I

    .prologue
    .line 87
    move v1, p2

    .line 88
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 90
    iget-object v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->baf:Lorg/apache/mina/util/byteaccess/ByteArrayFactory;

    iget v3, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->newComponentSize:I

    invoke-interface {v2, v3}, Lorg/apache/mina/util/byteaccess/ByteArrayFactory;->create(I)Lorg/apache/mina/util/byteaccess/ByteArray;

    move-result-object v0

    .line 91
    .local v0, "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    invoke-virtual {p1, v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArray;->addLast(Lorg/apache/mina/util/byteaccess/ByteArray;)V

    .line 92
    iget v2, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$ChunkedExpander;->newComponentSize:I

    sub-int/2addr v1, v2

    .line 93
    goto :goto_0

    .line 94
    .end local v0    # "component":Lorg/apache/mina/util/byteaccess/ByteArray;
    :cond_0
    return-void
.end method
