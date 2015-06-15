.class Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;
.super Ljava/lang/Object;
.source "MediaLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMediaItemsRunnable"
.end annotation


# instance fields
.field private final directories:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final directoriesScanned:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/videolan/vlc/MediaLibrary;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/MediaLibrary;)V
    .locals 1

    .prologue
    .line 205
    iput-object p1, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    .line 203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    .line 206
    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/util/VLCInstance;->getLibVlcInstance()Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/libvlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 219
    .local v16, "libVlcInstance":Lorg/videolan/libvlc/LibVLC;
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v2

    .line 222
    .local v2, "DBManager":Lorg/videolan/vlc/MediaDatabase;
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->showProgressBar()V

    .line 224
    invoke-virtual {v2}, Lorg/videolan/vlc/MediaDatabase;->getMediaDirs()Ljava/util/List;

    move-result-object v18

    .line 225
    .local v18, "mediaDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_0

    .line 227
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v21

    .line 228
    .local v21, "storageDirs":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 234
    .end local v21    # "storageDirs":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-virtual {v2}, Lorg/videolan/vlc/MediaDatabase;->getMedias()Ljava/util/HashMap;

    move-result-object v10

    .line 240
    .local v10, "existingMedias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/libvlc/Media;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 243
    .local v3, "addedLocations":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$1(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 247
    new-instance v19, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;-><init>(Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;)V

    .line 249
    .local v19, "mediaFileFilter":Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;
    const/4 v4, 0x0

    .line 251
    .local v4, "count":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v20, "mediaToScan":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 303
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v22

    if-nez v22, :cond_15

    .line 337
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v15, v0, :cond_20

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->isStopping:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$3(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-nez v22, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 344
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_21

    .line 347
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 349
    invoke-virtual {v2}, Lorg/videolan/vlc/MediaDatabase;->getMediaDirs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_3
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_22

    .line 355
    :cond_4
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo()V

    .line 356
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar()V

    .line 358
    invoke-static {}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mRestart:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$4(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 361
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Restarting scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$5(Lorg/videolan/vlc/MediaLibrary;Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$6(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x1

    const-wide/16 v24, 0xc8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 366
    .end local v2    # "DBManager":Lorg/videolan/vlc/MediaDatabase;
    .end local v3    # "addedLocations":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "count":I
    .end local v10    # "existingMedias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/libvlc/Media;>;"
    .end local v15    # "i":I
    .end local v16    # "libVlcInstance":Lorg/videolan/libvlc/LibVLC;
    .end local v18    # "mediaDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v19    # "mediaFileFilter":Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;
    .end local v20    # "mediaToScan":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_5
    :goto_5
    return-void

    .line 213
    :catch_0
    move-exception v9

    .line 214
    .local v9, "e1":Lorg/videolan/libvlc/LibVlcException;
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "ERROR: LibVLCException while trying to get instance"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 228
    .end local v9    # "e1":Lorg/videolan/libvlc/LibVlcException;
    .restart local v2    # "DBManager":Lorg/videolan/vlc/MediaDatabase;
    .restart local v16    # "libVlcInstance":Lorg/videolan/libvlc/LibVLC;
    .restart local v18    # "mediaDirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v21    # "storageDirs":[Ljava/lang/String;
    :cond_6
    aget-object v6, v21, v22

    .line 229
    .local v6, "dir":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 231
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 255
    .end local v6    # "dir":Ljava/lang/String;
    .end local v11    # "f":Ljava/io/File;
    .end local v21    # "storageDirs":[Ljava/lang/String;
    .restart local v3    # "addedLocations":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "count":I
    .restart local v10    # "existingMedias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/libvlc/Media;>;"
    .restart local v19    # "mediaFileFilter":Lorg/videolan/vlc/MediaLibrary$MediaItemFilter;
    .restart local v20    # "mediaToScan":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 256
    .local v6, "dir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "dirPath":Ljava/lang/String;
    const/4 v11, 0x0

    .line 260
    .local v11, "f":[Ljava/io/File;
    const-string v22, "/proc/"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    const-string v22, "/sys/"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    const-string v22, "/dev/"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    if-nez v22, :cond_1

    .line 265
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 269
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directoriesScanned:Ljava/util/HashSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v22, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "/.nomedia"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v22

    if-nez v22, :cond_1

    .line 281
    :try_start_5
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 282
    array-length v0, v11

    move/from16 v23, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    .line 296
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->isStopping:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$3(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 297
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Stopping scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 337
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v15, v0, :cond_12

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->isStopping:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$3(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-nez v22, :cond_b

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 344
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_13

    .line 347
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 349
    invoke-virtual {v2}, Lorg/videolan/vlc/MediaDatabase;->getMediaDirs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_a
    :goto_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_14

    .line 355
    :cond_b
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo()V

    .line 356
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar()V

    .line 358
    invoke-static {}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mRestart:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$4(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 361
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Restarting scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$5(Lorg/videolan/vlc/MediaLibrary;Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$6(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x1

    const-wide/16 v24, 0xc8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 266
    .end local v15    # "i":I
    :catch_1
    move-exception v8

    .line 267
    .local v8, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 335
    .end local v6    # "dir":Ljava/io/File;
    .end local v7    # "dirPath":Ljava/lang/String;
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "f":[Ljava/io/File;
    :catchall_0
    move-exception v22

    .line 337
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v15, v0, :cond_1d

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->isStopping:Z
    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$3(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v23

    if-nez v23, :cond_d

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v23

    const-string v24, "mounted"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 344
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1e

    .line 347
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 349
    invoke-virtual {v2}, Lorg/videolan/vlc/MediaDatabase;->getMediaDirs()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_c
    :goto_d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_1f

    .line 355
    :cond_d
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo()V

    .line 356
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar()V

    .line 358
    invoke-static {}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mRestart:Z
    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$4(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 361
    const-string v23, "VLC/MediaLibrary"

    const-string v24, "Restarting scan"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v23 .. v24}, Lorg/videolan/vlc/MediaLibrary;->access$5(Lorg/videolan/vlc/MediaLibrary;Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$6(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x1

    const-wide/16 v25, 0xc8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 365
    :cond_e
    throw v22

    .line 282
    .end local v15    # "i":I
    .restart local v6    # "dir":Ljava/io/File;
    .restart local v7    # "dirPath":Ljava/lang/String;
    .restart local v11    # "f":[Ljava/io/File;
    :cond_f
    :try_start_8
    aget-object v12, v11, v22

    .line 283
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v24

    if-eqz v24, :cond_11

    .line 284
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_10
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_7

    .line 285
    :cond_11
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->directories:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_e

    .line 290
    .end local v12    # "file":Ljava/io/File;
    :catch_2
    move-exception v8

    .line 293
    .local v8, "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 338
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v15    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 339
    .local v14, "h":Landroid/os/Handler;
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 344
    .end local v14    # "h":Landroid/os/Handler;
    :cond_13
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 345
    .local v13, "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 349
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_14
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 350
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_a

    .line 351
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeDir(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 303
    .end local v6    # "dir":Ljava/io/File;
    .end local v7    # "dirPath":Ljava/lang/String;
    .end local v11    # "f":[Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "i":I
    :cond_15
    :try_start_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 304
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/videolan/libvlc/LibVLC;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 305
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    .line 306
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 305
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-static {v0, v4, v1}, Lorg/videolan/vlc/gui/MainActivity;->sendTextInfo(Ljava/lang/String;II)V

    .line 307
    add-int/lit8 v4, v4, 0x1

    .line 308
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 313
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_16

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$1(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/videolan/libvlc/Media;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 318
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->isStopping:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$3(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 331
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Stopping scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 337
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v15, v0, :cond_1a

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->isStopping:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$3(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-nez v22, :cond_18

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 344
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_11
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_1b

    .line 347
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeMedias(Ljava/util/Set;)V

    .line 349
    invoke-virtual {v2}, Lorg/videolan/vlc/MediaDatabase;->getMediaDirs()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_17
    :goto_12
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_1c

    .line 355
    :cond_18
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->clearTextInfo()V

    .line 356
    invoke-static {}, Lorg/videolan/vlc/gui/MainActivity;->hideProgressBar()V

    .line 358
    invoke-static {}, Lorg/videolan/vlc/gui/video/VideoGridFragment;->actionScanStop()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mRestart:Z
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$4(Lorg/videolan/vlc/MediaLibrary;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 361
    const-string v22, "VLC/MediaLibrary"

    const-string v23, "Restarting scan"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$5(Lorg/videolan/vlc/MediaLibrary;Z)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->restartHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$6(Lorg/videolan/vlc/MediaLibrary;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x1

    const-wide/16 v24, 0xc8

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 321
    .end local v15    # "i":I
    :cond_19
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    new-instance v17, Lorg/videolan/libvlc/Media;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 324
    .local v17, "m":Lorg/videolan/libvlc/Media;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemList:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$1(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v5

    .line 327
    .local v5, "db":Lorg/videolan/vlc/MediaDatabase;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/videolan/vlc/MediaDatabase;->addMedia(Lorg/videolan/libvlc/Media;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mItemListLock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$0(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_f

    .line 338
    .end local v5    # "db":Lorg/videolan/vlc/MediaDatabase;
    .end local v17    # "m":Lorg/videolan/libvlc/Media;
    .restart local v15    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 339
    .restart local v14    # "h":Landroid/os/Handler;
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_10

    .line 344
    .end local v14    # "h":Landroid/os/Handler;
    :cond_1b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "fileURI":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 345
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 349
    :cond_1c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "file":Ljava/io/File;
    check-cast v12, Ljava/io/File;

    .line 350
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_17

    .line 351
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeDir(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 338
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v23, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 339
    .restart local v14    # "h":Landroid/os/Handler;
    const/16 v23, 0x64

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 344
    .end local v14    # "h":Landroid/os/Handler;
    :cond_1e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 345
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 349
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_1f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 350
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-nez v24, :cond_c

    .line 351
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeDir(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 338
    .end local v12    # "file":Ljava/io/File;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/MediaLibrary$GetMediaItemsRunnable;->this$0:Lorg/videolan/vlc/MediaLibrary;

    move-object/from16 v22, v0

    # getter for: Lorg/videolan/vlc/MediaLibrary;->mUpdateHandler:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lorg/videolan/vlc/MediaLibrary;->access$2(Lorg/videolan/vlc/MediaLibrary;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Handler;

    .line 339
    .restart local v14    # "h":Landroid/os/Handler;
    const/16 v22, 0x64

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 337
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 344
    .end local v14    # "h":Landroid/os/Handler;
    :cond_21
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 345
    .restart local v13    # "fileURI":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 349
    .end local v13    # "fileURI":Ljava/lang/String;
    :cond_22
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 350
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-nez v23, :cond_3

    .line 351
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/videolan/vlc/MediaDatabase;->removeDir(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
