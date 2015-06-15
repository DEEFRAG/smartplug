.class public Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;
.super Landroid/support/v4/app/Fragment;
.source "AudioBrowserFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;
    }
.end annotation


# static fields
.field public static final MODE_ALBUM:I = 0x1

.field public static final MODE_ARTIST:I = 0x0

.field public static final MODE_GENRE:I = 0x3

.field public static final MODE_SONG:I = 0x2

.field public static final MODE_TOTAL:I = 0x4

.field public static final TAG:Ljava/lang/String; = "VLC/AudioBrowserFragment"


# instance fields
.field albumListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field artistListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field genreListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field keyListener:Landroid/view/View$OnKeyListener;

.field private mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field private mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field private mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

.field mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

.field private mEmptyView:Landroid/view/View;

.field private mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

.field private mFlingViewPosition:I

.field private mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

.field private mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

.field private mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field private final mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

.field songListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    .line 187
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->keyListener:Landroid/view/View$OnKeyListener;

    .line 249
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->songListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 257
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->artistListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 269
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$4;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->albumListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 277
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$5;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->genreListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 404
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$6;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .line 433
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$AudioBrowserHandler;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHandler:Landroid/os/Handler;

    .line 522
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$7;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    .line 92
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    return v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    return-void
.end method

.method static synthetic access$10(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Landroid/view/MenuItem;I)Z
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V

    return-void
.end method

.method static synthetic access$12(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/MediaLibrary;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/HeaderScrollView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

    return-object v0
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/widget/FlingViewGroup;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    return-object v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/audio/AudioServiceController;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    return-object v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Landroid/view/Menu;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->setContextMenuItems(Landroid/view/Menu;Landroid/view/View;)V

    return-void
.end method

.method private focusHelper(ZI)V
    .locals 4
    .param p1, "idIsEmpty"    # Z
    .param p2, "listId"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 182
    .local v0, "main":Lorg/videolan/vlc/gui/MainActivity;
    const/4 v2, 0x0

    const v3, 0x7f0700fb

    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/gui/MainActivity;->setMenuFocusDown(ZI)V

    .line 183
    invoke-virtual {v0, p1, v1, p2}, Lorg/videolan/vlc/gui/MainActivity;->setSearchAsFocusDown(ZLandroid/view/View;I)V

    .line 184
    return-void
.end method

.method private handleContextItemSelected(Landroid/view/MenuItem;I)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "position"    # I

    .prologue
    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    .line 327
    .local v6, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 329
    .local v3, "id":I
    const v9, 0x7f0703cd

    if-ne v3, v9, :cond_0

    const/4 v8, 0x1

    .line 330
    .local v8, "useAllItems":Z
    :goto_0
    const v9, 0x7f0703cb

    if-ne v3, v9, :cond_1

    const/4 v1, 0x1

    .line 332
    .local v1, "append":Z
    :goto_1
    const-class v9, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v4, v6

    .line 333
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 334
    .local v4, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v9, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 339
    .end local v4    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .local v2, "groupPosition":I
    :goto_2
    const v9, 0x7f0703ce

    if-ne v3, v9, :cond_3

    .line 341
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    .line 342
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 343
    new-instance v11, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;

    iget-object v12, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v12, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$9;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;Ljava/lang/Object;)V

    .line 340
    invoke-static {v10, v9, v11}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/util/VLCRunnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 353
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 354
    const/4 v9, 0x1

    .line 392
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :goto_3
    return v9

    .line 329
    .end local v1    # "append":Z
    .end local v2    # "groupPosition":I
    .end local v8    # "useAllItems":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 330
    .restart local v8    # "useAllItems":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 337
    .restart local v1    # "append":Z
    :cond_2
    move v2, p2

    .restart local v2    # "groupPosition":I
    goto :goto_2

    .line 357
    :cond_3
    const v9, 0x7f0703d0

    if-ne v3, v9, :cond_4

    .line 358
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v9

    iget-object v9, v9, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/videolan/vlc/gui/audio/AudioUtil;->setRingtone(Lorg/videolan/libvlc/Media;Landroid/content/Context;)V

    .line 359
    const/4 v9, 0x1

    goto :goto_3

    .line 362
    :cond_4
    if-eqz v8, :cond_5

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v5, "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v5, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getListWithPosition(Ljava/util/List;I)I

    move-result v7

    .line 387
    .local v7, "startPosition":I
    :goto_4
    if-eqz v1, :cond_6

    .line 388
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v9, v5}, Lorg/videolan/vlc/audio/AudioServiceController;->append(Ljava/util/List;)V

    .line 392
    :goto_5
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_3

    .line 367
    .end local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "startPosition":I
    :cond_5
    const/4 v7, 0x0

    .line 368
    .restart local v7    # "startPosition":I
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    invoke-virtual {v9}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 383
    const/4 v9, 0x1

    goto :goto_3

    .line 371
    :pswitch_0
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 372
    .restart local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 374
    .end local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 375
    .restart local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 377
    .end local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 378
    .restart local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 380
    .end local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 381
    .restart local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 390
    :cond_6
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v9, v5, v7}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    goto :goto_5

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setContextMenuItems(Landroid/view/Menu;Landroid/view/View;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0703cf

    const/4 v4, 0x0

    .line 297
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    invoke-virtual {v2}, Lorg/videolan/vlc/widget/FlingViewGroup;->getPosition()I

    move-result v1

    .line 298
    .local v1, "pos":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 299
    const v2, 0x7f0703cc

    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 300
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 302
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 303
    :cond_1
    const v2, 0x7f0703ca

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 304
    .local v0, "play":Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    .end local v0    # "play":Landroid/view/MenuItem;
    :cond_2
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->isPhone()Z

    move-result v2

    if-nez v2, :cond_3

    .line 307
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 308
    :cond_3
    return-void
.end method

.method private updateLists()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x4

    .line 454
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v9

    invoke-virtual {v9}, Lorg/videolan/vlc/MediaLibrary;->getAudioItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 455
    .local v0, "audioList":Ljava/util/List;, "Ljava/util/List<Lorg/videolan/libvlc/Media;>;"
    const/4 v3, 0x4

    .line 458
    .local v3, "listId":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 459
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const/4 v3, 0x2

    .line 464
    :goto_0
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 465
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 466
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 467
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 469
    sget-object v9, Lorg/videolan/vlc/gui/audio/MediaComparators;->byName:Ljava/util/Comparator;

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_6

    .line 474
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->addScrollSections()V

    .line 475
    if-ne v3, v12, :cond_0

    if-lez v1, :cond_0

    .line 476
    const/4 v3, 0x2

    .line 478
    :cond_0
    sget-object v9, Lorg/videolan/vlc/gui/audio/MediaComparators;->byArtist:Ljava/util/Comparator;

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 479
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_7

    .line 483
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->addLetterSeparators()V

    .line 484
    if-lez v1, :cond_1

    .line 485
    const/4 v3, 0x0

    .line 487
    :cond_1
    sget-object v9, Lorg/videolan/vlc/gui/audio/MediaComparators;->byAlbum:Ljava/util/Comparator;

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 488
    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_8

    .line 492
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->addLetterSeparators()V

    .line 493
    if-ne v3, v12, :cond_2

    if-lez v1, :cond_2

    .line 494
    const/4 v3, 0x1

    .line 496
    :cond_2
    sget-object v9, Lorg/videolan/vlc/gui/audio/MediaComparators;->byGenre:Ljava/util/Comparator;

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    const/4 v1, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v1, v9, :cond_9

    .line 501
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->addLetterSeparators()V

    .line 502
    if-ne v3, v12, :cond_3

    if-lez v1, :cond_3

    .line 503
    const/4 v3, 0x3

    .line 505
    :cond_3
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 506
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 507
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 508
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->notifyDataSetChanged()V

    .line 510
    new-array v4, v12, [I

    fill-array-data v4, :array_0

    .line 511
    .local v4, "lists":[I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 512
    array-length v10, v4

    move v9, v8

    :goto_5
    if-lt v9, v10, :cond_a

    .line 518
    :cond_4
    if-ne v3, v12, :cond_b

    :goto_6
    aget v8, v4, v3

    invoke-direct {p0, v7, v8}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->focusHelper(ZI)V

    .line 519
    return-void

    .line 462
    .end local v1    # "i":I
    .end local v4    # "lists":[I
    :cond_5
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mEmptyView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 471
    .restart local v1    # "i":I
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 472
    .local v5, "media":Lorg/videolan/libvlc/Media;
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 480
    .end local v5    # "media":Lorg/videolan/libvlc/Media;
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 481
    .restart local v5    # "media":Lorg/videolan/libvlc/Media;
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13, v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 489
    .end local v5    # "media":Lorg/videolan/libvlc/Media;
    :cond_8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 490
    .restart local v5    # "media":Lorg/videolan/libvlc/Media;
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 498
    .end local v5    # "media":Lorg/videolan/libvlc/Media;
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/libvlc/Media;

    .line 499
    .restart local v5    # "media":Lorg/videolan/libvlc/Media;
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v5}, Lorg/videolan/libvlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13, v5}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 512
    .end local v5    # "media":Lorg/videolan/libvlc/Media;
    .restart local v4    # "lists":[I
    :cond_a
    aget v6, v4, v9

    .line 513
    .local v6, "r":I
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 514
    .local v2, "l":Landroid/widget/ListView;
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 515
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 512
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .end local v2    # "l":Landroid/widget/ListView;
    .end local v6    # "r":I
    :cond_b
    move v7, v8

    .line 518
    goto :goto_6

    .line 510
    :array_0
    .array-data 4
        0x7f070101
        0x7f070102
        0x7f070103
        0x7f070104
    .end array-data
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/MenuItem;

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 315
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 316
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, p1, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 100
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    .line 102
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    .line 103
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    .line 104
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    .line 105
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    .line 107
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V

    .line 108
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V

    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V

    .line 110
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V

    .line 111
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 292
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 293
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->setContextMenuItems(Landroid/view/Menu;Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    const v6, 0x7f0c002d

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 118
    const v5, 0x7f030037

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 120
    .local v4, "v":Landroid/view/View;
    const v5, 0x7f070100

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/widget/FlingViewGroup;

    iput-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    .line 121
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/widget/FlingViewGroup;->setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V

    .line 123
    const v5, 0x7f0700fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/widget/HeaderScrollView;

    iput-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

    .line 124
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

    new-instance v6, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$8;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment$8;-><init>(Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;)V

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/widget/HeaderScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

    iget-object v6, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/widget/HeaderScrollView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 133
    const v5, 0x7f0700ff

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mEmptyView:Landroid/view/View;

    .line 135
    const v5, 0x7f070103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 136
    .local v3, "songsList":Landroid/widget/ListView;
    const v5, 0x7f070101

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 137
    .local v1, "artistList":Landroid/widget/ListView;
    const v5, 0x7f070102

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 138
    .local v0, "albumList":Landroid/widget/ListView;
    const v5, 0x7f070104

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 140
    .local v2, "genreList":Landroid/widget/ListView;
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 141
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->songListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->artistListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->albumListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->genreListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 153
    iget-object v5, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 157
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 160
    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 398
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 399
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mArtistsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 400
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 401
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mGenresAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 402
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 166
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->removeUpdateHandler(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 172
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->setPosition(I)V

    .line 173
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

    const/4 v1, -0x1

    iget v2, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    invoke-virtual {v0, v1, v2}, Lorg/videolan/vlc/widget/HeaderScrollView;->highlightTab(II)V

    .line 174
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHeader:Lorg/videolan/vlc/widget/HeaderScrollView;

    iget v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mFlingViewPosition:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/widget/HeaderScrollView;->scroll(F)V

    .line 175
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->updateLists()V

    .line 176
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioBrowserFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/MediaLibrary;->addUpdateHandler(Landroid/os/Handler;)V

    .line 177
    return-void
.end method
