.class public Lorg/videolan/vlc/gui/DirectoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "DirectoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;,
        Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DirectoryAdapter"


# instance fields
.field private mAlignMode:I

.field private mCurrentDir:Ljava/lang/String;

.field private mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

.field private mCurrentRoot:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->DirectoryAdapter_Core(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private DirectoryAdapter_Core(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "rootDir"    # Ljava/lang/String;

    .prologue
    .line 265
    if-eqz p2, :cond_0

    .line 266
    invoke-static {p2}, Lorg/videolan/vlc/util/Strings;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 267
    :cond_0
    const-string v1, "VLC/DirectoryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rootMRL is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 269
    new-instance v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-direct {v1, p0, p2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 270
    iput-object p2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-direct {p0, v1, p2}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mRootNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iput-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 273
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 274
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "audio_title_alignment"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mAlignMode:I

    .line 275
    return-void
.end method

.method public static acceptedPath(Ljava/lang/String;)Z
    .locals 2
    .param p0, "f"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lorg/videolan/libvlc/Media;->EXTENSIONS_REGEX:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private getParentDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 467
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/videolan/libvlc/LibVLC;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 472
    :goto_0
    invoke-static {p1}, Lorg/videolan/vlc/util/Strings;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVisibleName(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 476
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method private populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V
    .locals 21
    .param p1, "n"    # Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .prologue
    .line 186
    if-nez p2, :cond_2

    .line 188
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "storages":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 250
    .end local v15    # "storages":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 189
    .restart local v15    # "storages":[Ljava/lang/String;
    :cond_1
    aget-object v14, v15, v17

    .line 190
    .local v14, "storage":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, "f":Ljava/io/File;
    new-instance v3, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getVisibleName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v3, v0, v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v3, "child":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 193
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v14, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V

    .line 189
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 200
    .end local v3    # "child":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .end local v4    # "f":Ljava/io/File;
    .end local v14    # "storage":Ljava/lang/String;
    .end local v15    # "storages":[Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v7, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lorg/videolan/libvlc/LibVLC;->nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 206
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v17, 0x64

    move/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v13, "sb":Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 211
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v9, v0, :cond_4

    .line 245
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 248
    .end local v9    # "i":I
    :cond_3
    new-instance v16, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    const-string v17, ".."

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 249
    .local v16, "up":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 212
    .end local v16    # "up":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    .restart local v9    # "i":I
    :cond_4
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 214
    .local v6, "filename":Ljava/lang/String;
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, ".."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 211
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 216
    :cond_6
    new-instance v12, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;-><init>(Lorg/videolan/vlc/gui/DirectoryAdapter;Ljava/lang/String;)V

    .line 217
    .local v12, "nss":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v12, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    .line 218
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 222
    .local v11, "newPath":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    invoke-static {v11}, Lorg/videolan/libvlc/LibVLC;->nativeIsPathDirectory(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0xa

    move/from16 v0, p3

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 226
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v8, "files_int":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v11, v8}, Lorg/videolan/libvlc/LibVLC;->nativeReadDirectory(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 228
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 232
    .local v10, "mCurrentDir_old":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 233
    add-int/lit8 v17, p3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v11, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;I)V

    .line 234
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 243
    .end local v8    # "files_int":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "mCurrentDir_old":Ljava/lang/String;
    :cond_7
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->addChildNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)V

    goto :goto_3

    .line 237
    :cond_8
    invoke-static {v11}, Lorg/videolan/vlc/gui/DirectoryAdapter;->acceptedPath(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 238
    invoke-virtual {v12}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->setIsFile()V

    goto :goto_4
.end method


# virtual methods
.method public browse(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 364
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v1, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 365
    .local v0, "selectedNode":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 366
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->browse(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public browse(Ljava/lang/String;)I
    .locals 9
    .param p1, "directoryName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 375
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 377
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->getMediaDirectories()[Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "storages":[Ljava/lang/String;
    array-length v7, v3

    move v6, v4

    :goto_0
    if-lt v6, v7, :cond_3

    .line 407
    .end local v3    # "storages":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v6, "VLC/DirectoryAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Browsing to "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "currentDirPosition":I
    const-string v6, ".."

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 411
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v6, v6, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v7, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v6, v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->getChildPosition(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;)I

    move-result v0

    .line 412
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v6, v6, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->parent:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 422
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->notifyDataSetChanged()V

    .line 423
    if-ne v0, v5, :cond_2

    move v0, v4

    .end local v0    # "currentDirPosition":I
    :cond_2
    :goto_3
    return v0

    .line 378
    .restart local v3    # "storages":[Ljava/lang/String;
    :cond_3
    aget-object v2, v3, v6

    .line 379
    .local v2, "storage":Ljava/lang/String;
    invoke-static {v2}, Lorg/videolan/vlc/util/Strings;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-virtual {v2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 381
    iput-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentRoot:Ljava/lang/String;

    .line 382
    invoke-static {v2}, Lorg/videolan/vlc/util/Strings;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    goto :goto_1

    .line 378
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "storage":Ljava/lang/String;
    .end local v3    # "storages":[Ljava/lang/String;
    :cond_5
    :try_start_0
    new-instance v6, Ljava/net/URI;

    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/videolan/libvlc/LibVLC;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v6}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 388
    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 391
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v6}, Lorg/videolan/vlc/util/Strings;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 393
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    iget-object v7, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentRoot:Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getParentDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 395
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    .line 396
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentRoot:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v4, "VLC/DirectoryAdapter"

    const-string v6, "URISyntaxException in browse()"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    .line 400
    goto :goto_3

    .line 401
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "VLC/DirectoryAdapter"

    const-string v6, "NullPointerException in browse()"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    .line 403
    goto :goto_3

    .line 414
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "currentDirPosition":I
    :cond_6
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v6, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->getChildNode(Ljava/lang/String;)Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 415
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    invoke-virtual {v6}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->subfolderCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 417
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v6, v6, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 418
    iget-object v6, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v7, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getAllMediaLocations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v0, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 453
    return-object v0

    .line 451
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, v2, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 297
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaLocation(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 434
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v0, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Lorg/videolan/libvlc/LibVLC;->PathToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 302
    iget-object v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v9, v9, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 304
    .local v7, "selectedNode":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    move-object/from16 v8, p2

    .line 306
    .local v8, "v":Landroid/view/View;
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 309
    .local v1, "context":Landroid/content/Context;
    if-nez v8, :cond_1

    .line 310
    iget-object v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030067

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 311
    new-instance v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    invoke-direct {v3}, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;-><init>()V

    .line 312
    .local v3, "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    const v9, 0x7f070105

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->layout:Landroid/view/View;

    .line 313
    const v9, 0x7f07003d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    .line 314
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 315
    iget v9, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mAlignMode:I

    iget-object v10, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-static {v9, v10}, Lorg/videolan/vlc/util/Util;->setAlignModeByPref(ILandroid/widget/TextView;)V

    .line 316
    const v9, 0x7f0701c0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    .line 317
    const v9, 0x7f0701bf

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    .line 318
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 322
    :goto_0
    const-string v4, ""

    .line 323
    .local v4, "holderText":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 324
    const-string v9, "VLC/DirectoryAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Loading media "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v5, Lorg/videolan/libvlc/Media;

    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v9

    invoke-virtual/range {p0 .. p1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 326
    .local v5, "m":Lorg/videolan/libvlc/Media;
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    .line 331
    .end local v5    # "m":Lorg/videolan/libvlc/Media;
    :goto_1
    iget-object v9, v7, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->name:Ljava/lang/String;

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 332
    const v9, 0x7f0c002c

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    :cond_0
    :goto_2
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 351
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    const v10, 0x7f02027a

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    :goto_3
    return-object v8

    .line 320
    .end local v3    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    .end local v4    # "holderText":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;

    .restart local v3    # "holder":Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;
    goto :goto_0

    .line 329
    .restart local v4    # "holderText":Ljava/lang/String;
    :cond_2
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->getVisibleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 333
    :cond_3
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    .line 334
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->subfolderCount()I

    move-result v2

    .line 335
    .local v2, "folderCount":I
    invoke-virtual {v7}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->subfilesCount()I

    move-result v6

    .line 336
    .local v6, "mediaFileCount":I
    const-string v4, ""

    .line 338
    if-lez v2, :cond_4

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 340
    const v11, 0x7f0f0003

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 339
    invoke-virtual {v10, v11, v2, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 342
    :cond_4
    if-lez v2, :cond_5

    if-lez v6, :cond_5

    .line 343
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    :cond_5
    if-lez v6, :cond_0

    .line 345
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 346
    const v11, 0x7f0f0004

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 345
    invoke-virtual {v10, v11, v6, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 353
    .end local v2    # "folderCount":I
    .end local v6    # "mediaFileCount":I
    :cond_6
    iget-object v9, v3, Lorg/videolan/vlc/gui/DirectoryAdapter$DirectoryViewHolder;->icon:Landroid/widget/ImageView;

    const v10, 0x7f020210

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method

.method public getmCurrentDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public isChildFile(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 427
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v1, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 428
    .local v0, "selectedNode":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->isFile()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 457
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v1, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v1, v1, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentNode:Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryAdapter;->mCurrentDir:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter;->populateNode(Lorg/videolan/vlc/gui/DirectoryAdapter$Node;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->notifyDataSetChanged()V

    .line 463
    return-void

    .line 457
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;

    .line 458
    .local v0, "n":Lorg/videolan/vlc/gui/DirectoryAdapter$Node;
    iget-object v2, v0, Lorg/videolan/vlc/gui/DirectoryAdapter$Node;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
