.class Lcom/avos/avoscloud/AVMultiPartEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "AVMultiPartEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;,
        Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/AVMultiPartEntity;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "listener"    # Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 25
    iput-object p2, p0, Lcom/avos/avoscloud/AVMultiPartEntity;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V
    .locals 0
    .param p1, "mode"    # Lorg/apache/http/entity/mime/HttpMultipartMode;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "listener"    # Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 31
    iput-object p4, p0, Lcom/avos/avoscloud/AVMultiPartEntity;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    .line 32
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;

    iget-object v1, p0, Lcom/avos/avoscloud/AVMultiPartEntity;->listener:Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;

    invoke-direct {v0, p1, v1}, Lcom/avos/avoscloud/AVMultiPartEntity$CountingOutputStream;-><init>(Ljava/io/OutputStream;Lcom/avos/avoscloud/AVMultiPartEntity$ProgressListener;)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 37
    return-void
.end method
