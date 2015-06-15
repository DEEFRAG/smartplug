.class public Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AVMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVMultiPartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private final listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

.field private transferred:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "listener"    # Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    iput-object p2, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    .line 52
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 62
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    .line 63
    iget-object v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    iget-wide v1, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;->transferred(J)V

    .line 64
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    iget-wide v1, p0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;->transferred:J

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;->transferred(J)V

    .line 58
    return-void
.end method
