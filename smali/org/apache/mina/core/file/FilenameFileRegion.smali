.class public Lorg/apache/mina/core/file/FilenameFileRegion;
.super Lorg/apache/mina/core/file/DefaultFileRegion;
.source "FilenameFileRegion.java"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/nio/channels/FileChannel;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/core/file/FilenameFileRegion;-><init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/channels/FileChannel;JJ)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "channel"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "remainingBytes"    # J

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/file/DefaultFileRegion;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/file/FilenameFileRegion;->file:Ljava/io/File;

    .line 49
    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/mina/core/file/FilenameFileRegion;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
