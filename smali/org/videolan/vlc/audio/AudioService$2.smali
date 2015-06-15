.class Lorg/videolan/vlc/audio/AudioService$2;
.super Lorg/videolan/vlc/interfaces/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/audio/AudioService;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/audio/AudioService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    .line 973
    invoke-direct {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    .locals 3
    .param p1, "cb"    # Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1093
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1094
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1095
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1096
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$19(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :cond_1
    monitor-exit p0

    return-void

    .line 1093
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public append(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "mediaLocationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 1245
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1247
    invoke-virtual {p0, p1, v8, v8}, Lorg/videolan/vlc/audio/AudioService$2;->load(Ljava/util/List;IZ)V

    .line 1268
    :goto_0
    return-void

    .line 1251
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v0

    .line 1252
    .local v0, "db":Lorg/videolan/vlc/MediaDatabase;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 1265
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->saveMediaList()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$30(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1266
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1267
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_0

    .line 1253
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1254
    .local v2, "location":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/videolan/vlc/MediaDatabase;->getMedia(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v3

    .line 1255
    .local v3, "media":Lorg/videolan/libvlc/Media;
    if-nez v3, :cond_3

    .line 1256
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->validateLocation(Ljava/lang/String;)Z
    invoke-static {v4, v2}, Lorg/videolan/vlc/audio/AudioService;->access$24(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1257
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-virtual {v5}, Lorg/videolan/vlc/audio/AudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0078

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lorg/videolan/vlc/audio/AudioService;->showToast(Ljava/lang/String;I)V
    invoke-static {v4, v5, v8}, Lorg/videolan/vlc/audio/AudioService;->access$25(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;I)V

    .line 1252
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1260
    :cond_2
    const-string v4, "VLC/AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating on-the-fly Media object for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    new-instance v3, Lorg/videolan/libvlc/Media;

    .end local v3    # "media":Lorg/videolan/libvlc/Media;
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 1263
    .restart local v3    # "media":Lorg/videolan/libvlc/Media;
    :cond_3
    iget-object v4, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v4}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/videolan/libvlc/MediaList;->add(Lorg/videolan/libvlc/Media;)V

    goto :goto_2
.end method

.method public detectHeadset(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-static {v0, p1}, Lorg/videolan/vlc/audio/AudioService;->access$37(Lorg/videolan/vlc/audio/AudioService;Z)V

    .line 1346
    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$14(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 1015
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1020
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$14(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 1023
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistNext()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistPrev()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCover()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->getCover()Landroid/graphics/Bitmap;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$17(Lorg/videolan/vlc/audio/AudioService;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverNext()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1085
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1087
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverPrev()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1077
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v1

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioUtil;->getCover(Landroid/content/Context;Lorg/videolan/libvlc/Media;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1079
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMediaLocation()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1299
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMediaLocations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1294
    return-object v1

    .line 1292
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v2

    invoke-virtual {v2}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRate()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1350
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getRate()F

    move-result v0

    return v0
.end method

.method public getRepeatType()I
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mRepeating:Lorg/videolan/vlc/audio/RepeatType;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$13(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/vlc/audio/RepeatType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/RepeatType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getTime()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->getCurrentMedia()Lorg/videolan/libvlc/Media;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$14(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1047
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitleNext()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1061
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1063
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitlePrev()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1053
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaList;->getMedia(I)Lorg/videolan/libvlc/Media;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1055
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMedia()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->hasCurrentMedia()Z
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$5(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1329
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mNextIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$16(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1330
    const/4 v0, 0x1

    .line 1332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1337
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevIndex:I
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$15(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1338
    const/4 v0, 0x1

    .line 1340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isShuffling()Z
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mShuffling:Z
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$12(Lorg/videolan/vlc/audio/AudioService;)Z

    move-result v0

    return v0
.end method

.method public load(Ljava/util/List;IZ)V
    .locals 10
    .param p2, "position"    # I
    .param p3, "noVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "mediaPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1136
    const-string v5, "VLC/AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loading position "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$20(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/EventHandler;

    move-result-object v5

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$21(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V

    .line 1139
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/MediaList;->getEventHandler()Lorg/videolan/libvlc/EventHandler;

    move-result-object v5

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mListEventHandler:Landroid/os/Handler;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$22(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/videolan/libvlc/EventHandler;->removeHandler(Landroid/os/Handler;)V

    .line 1140
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->setMediaList()V

    .line 1141
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/MediaList;->clear()V

    .line 1142
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v4

    .line 1144
    .local v4, "mediaList":Lorg/videolan/libvlc/MediaList;
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mPrevious:Ljava/util/Stack;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$23(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    .line 1146
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v0

    .line 1147
    .local v0, "db":Lorg/videolan/vlc/MediaDatabase;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 1162
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1163
    const-string v5, "VLC/AudioService"

    const-string v6, "Warning: empty media list, nothing to play !"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_1
    return-void

    .line 1148
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1149
    .local v2, "location":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lorg/videolan/vlc/MediaDatabase;->getMedia(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v3

    .line 1150
    .local v3, "media":Lorg/videolan/libvlc/Media;
    if-nez v3, :cond_2

    .line 1151
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->validateLocation(Ljava/lang/String;)Z
    invoke-static {v5, v2}, Lorg/videolan/vlc/audio/AudioService;->access$24(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1152
    const-string v5, "VLC/AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid location "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-virtual {v6}, Lorg/videolan/vlc/audio/AudioService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0078

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lorg/videolan/vlc/audio/AudioService;->showToast(Ljava/lang/String;I)V
    invoke-static {v5, v6, v9}, Lorg/videolan/vlc/audio/AudioService;->access$25(Lorg/videolan/vlc/audio/AudioService;Ljava/lang/String;I)V

    .line 1147
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    const-string v5, "VLC/AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Creating on-the-fly Media object for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-instance v3, Lorg/videolan/libvlc/Media;

    .end local v3    # "media":Lorg/videolan/libvlc/Media;
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 1159
    .restart local v3    # "media":Lorg/videolan/libvlc/Media;
    :cond_2
    invoke-virtual {v4, v3, p3}, Lorg/videolan/libvlc/MediaList;->add(Lorg/videolan/libvlc/Media;Z)V

    goto :goto_2

    .line 1166
    .end local v2    # "location":Ljava/lang/String;
    .end local v3    # "media":Lorg/videolan/libvlc/Media;
    :cond_3
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v5

    if-le v5, p2, :cond_4

    if-ltz p2, :cond_4

    .line 1167
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-static {v5, p2}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 1174
    :goto_3
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/videolan/libvlc/MediaList;->getEventHandler()Lorg/videolan/libvlc/EventHandler;

    move-result-object v5

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mListEventHandler:Landroid/os/Handler;
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$22(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V

    .line 1176
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v5

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v6}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 1177
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$19(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1178
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-virtual {v5}, Lorg/videolan/vlc/audio/AudioService;->setUpRemoteControlClient()V

    .line 1179
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->showNotification()V
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$28(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1180
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    iget-object v6, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lorg/videolan/vlc/audio/AudioService;->access$10(Lorg/videolan/vlc/audio/AudioService;Landroid/content/Context;)V

    .line 1181
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->updateRemoteControlClientMetadata()V
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$29(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1182
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->saveMediaList()V
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$30(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1183
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->saveCurrentMedia()V
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$31(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1184
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v5}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    goto/16 :goto_1

    .line 1169
    :cond_4
    const-string v5, "VLC/AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Warning: positon "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of bounds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v5, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-static {v5, v9}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    goto :goto_3
.end method

.method public moveItem(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "positionEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1275
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/MediaList;->move(II)V

    .line 1276
    return-void
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->next()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$8(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1305
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->pause()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$2(Lorg/videolan/vlc/audio/AudioService;)V

    .line 978
    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 982
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->play()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$4(Lorg/videolan/vlc/audio/AudioService;)V

    .line 983
    return-void
.end method

.method public playIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1194
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1195
    const-string v0, "VLC/AudioService"

    const-string v1, "Warning: empty media list, nothing to play !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_0
    return-void

    .line 1198
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1199
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-static {v0, p1}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 1205
    :goto_1
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$20(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/EventHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$21(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V

    .line 1206
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCurrentIndex:I
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$27(Lorg/videolan/vlc/audio/AudioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/LibVLC;->playIndex(I)V

    .line 1207
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$19(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1208
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-virtual {v0}, Lorg/videolan/vlc/audio/AudioService;->setUpRemoteControlClient()V

    .line 1209
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->showNotification()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$28(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1210
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->updateWidget(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lorg/videolan/vlc/audio/AudioService;->access$10(Lorg/videolan/vlc/audio/AudioService;Landroid/content/Context;)V

    .line 1211
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->updateRemoteControlClientMetadata()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$29(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1212
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_0

    .line 1201
    :cond_1
    const-string v0, "VLC/AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-static {v0, v3}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    goto :goto_1
.end method

.method public previous()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1309
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->previous()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$6(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1310
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1280
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaList;->remove(I)V

    .line 1281
    return-void
.end method

.method public declared-synchronized removeAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V
    .locals 3
    .param p1, "cb"    # Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1105
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1106
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1108
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    :goto_0
    monitor-exit p0

    return-void

    .line 1110
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mCallback:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$18(Lorg/videolan/vlc/audio/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1104
    .end local v0    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaList;->remove(Ljava/lang/String;)V

    .line 1286
    return-void
.end method

.method public setRepeatType(I)V
    .locals 1
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1319
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->setRepeatType(I)V
    invoke-static {v0, p1}, Lorg/videolan/vlc/audio/AudioService;->access$36(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 1320
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/LibVLC;->setTime(J)J

    .line 1325
    return-void
.end method

.method public showWithoutParse(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1223
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->getMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/videolan/libvlc/MediaList;->getMRL(I)Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "URI":Ljava/lang/String;
    const-string v1, "VLC/AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with playing URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mLibVLC:Lorg/videolan/libvlc/LibVLC;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$0(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mEventHandler:Lorg/videolan/libvlc/EventHandler;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$20(Lorg/videolan/vlc/audio/AudioService;)Lorg/videolan/libvlc/EventHandler;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mVlcEventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lorg/videolan/vlc/audio/AudioService;->access$21(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/EventHandler;->addHandler(Landroid/os/Handler;)V

    .line 1230
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    invoke-static {v1, p1}, Lorg/videolan/vlc/audio/AudioService;->access$26(Lorg/videolan/vlc/audio/AudioService;I)V

    .line 1233
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # getter for: Lorg/videolan/vlc/audio/AudioService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$19(Lorg/videolan/vlc/audio/AudioService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1234
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->showNotification()V
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$28(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1235
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->determinePrevAndNextIndices()V
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$32(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1236
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdate()V
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$33(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1237
    iget-object v1, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->executeUpdateProgress()V
    invoke-static {v1}, Lorg/videolan/vlc/audio/AudioService;->access$34(Lorg/videolan/vlc/audio/AudioService;)V

    goto :goto_0
.end method

.method public shuffle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->shuffle()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$35(Lorg/videolan/vlc/audio/AudioService;)V

    .line 1315
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lorg/videolan/vlc/audio/AudioService$2;->this$0:Lorg/videolan/vlc/audio/AudioService;

    # invokes: Lorg/videolan/vlc/audio/AudioService;->stop()V
    invoke-static {v0}, Lorg/videolan/vlc/audio/AudioService;->access$7(Lorg/videolan/vlc/audio/AudioService;)V

    .line 988
    return-void
.end method
