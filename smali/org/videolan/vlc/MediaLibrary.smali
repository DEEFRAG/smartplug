.class public Lorg/videolan/vlc/MediaLibrary;
.super Ljava/lang/Object;
.source "MediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;,
        Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;,
        Lorg/videolan/vlc/MediaLibrary$RestartHandler;
    }
.end annotation


# static fields
.field public static final MEDIA_ITEMS_UPDATED:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VLC/MediaLibrary"

.field private static mInstance:Lorg/videolan/vlc/MediaLibrary;


# instance fields
.field private isStopping:Z

.field private final mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected mLoadingThread:Ljava/lang/Thread;

.field private mRestart:Z

.field private final mUpdateHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private restartHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 62
    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    .line 369
    new-instance v0, Lorg/videolan/vlc/MediaLibrary$RestartHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/MediaLibrary$RestartHandler;-><init>(Lorg/videolan/vlc/MediaLibrary;)V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;

    .line 66
    sput-object p0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/MediaLibrary;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    return v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/MediaLibrary;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    return v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/MediaLibrary;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    return-void
.end method

.method static synthetic access$6(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lorg/videolan/vlc/MediaLibrary;
    .locals 2

    .prologue
    .line 105
    const-class v1, Lorg/videolan/vlc/MediaLibrary;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lorg/videolan/vlc/MediaLibrary;

    invoke-direct {v0}, Lorg/videolan/vlc/MediaLibrary;-><init>()V

    sput-object v0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;

    .line 107
    :cond_0
    sget-object v0, Lorg/videolan/vlc/MediaLibrary;->mInstance:Lorg/videolan/vlc/MediaLibrary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addUpdateHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 111
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public getAudioItems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "audioItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 140
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    return-object v0

    .line 135
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 136
    .local v2, "item":Lorg/videolan/libvlc/Media;
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAudioItems(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v0, "audioItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    iget-object v6, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 170
    iget-object v4, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    return-object v0

    .line 148
    :cond_0
    iget-object v6, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/libvlc/Media;

    .line 149
    .local v2, "item":Lorg/videolan/libvlc/Media;
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "valid":Z
    packed-switch p3, :pswitch_data_0

    .line 165
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_1

    .line 166
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v3    # "valid":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .restart local v3    # "valid":Z
    :pswitch_1
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v3, v4

    .line 155
    :goto_2
    goto :goto_1

    :cond_3
    move v3, v5

    .line 154
    goto :goto_2

    .line 157
    :pswitch_2
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 158
    goto :goto_1

    .line 160
    :pswitch_3
    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    .line 161
    :goto_3
    goto :goto_1

    :cond_5
    move v3, v5

    .line 160
    goto :goto_3

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getMediaItem(Ljava/lang/String;)Lorg/videolan/libvlc/Media;
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 187
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 188
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 181
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 182
    .local v1, "item":Lorg/videolan/libvlc/Media;
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 180
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaItems(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 197
    return-object v2

    .line 194
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/MediaLibrary;->getMediaItem(Ljava/lang/String;)Lorg/videolan/libvlc/Media;

    move-result-object v1

    .line 195
    .local v1, "item":Lorg/videolan/libvlc/Media;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getVideoItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "videoItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 127
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    return-object v2

    .line 122
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 123
    .local v1, "item":Lorg/videolan/libvlc/Media;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 124
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isWorking()Z
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    .line 100
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMediaItems()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 85
    invoke-static {}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStart()V

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;-><init>(Lorg/videolan/vlc/MediaLibrary;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    .line 87
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    :cond_1
    return-void
.end method

.method public loadMediaItems(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restart"    # Z

    .prologue
    const/4 v1, 0x1

    .line 73
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-boolean v1, p0, Lorg/videolan/vlc/MediaLibrary;->mRestart:Z

    .line 76
    iput-boolean v1, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems()V

    goto :goto_0
.end method

.method public removeUpdateHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/MediaLibrary;->isStopping:Z

    .line 93
    return-void
.end method
