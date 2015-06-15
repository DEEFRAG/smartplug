.class Lorg/apache/mina/handler/stream/StreamIoHandler$StreamIoException;
.super Ljava/lang/RuntimeException;
.source "StreamIoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/handler/stream/StreamIoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamIoException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3730353236393336L


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method
