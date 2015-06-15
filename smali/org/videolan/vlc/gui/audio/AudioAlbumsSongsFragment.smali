.class public Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AudioAlbumsSongsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;
    }
.end annotation


# static fields
.field public static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_NAME2:Ljava/lang/String; = "name2"

.field public static final TAG:Ljava/lang/String; = "VLC/AudioAlbumsSongsFragment"


# instance fields
.field albumsListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

.field mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

.field private mCurrentTab:I

.field mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

.field private mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

.field private mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

.field mTabHost:Landroid/widget/TabHost;

.field private mTitle:Ljava/lang/String;

.field private mediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field

.field songsListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I

    .line 332
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$1;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->albumsListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 340
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$2;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->songsListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 349
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$3;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;Landroid/view/Menu;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->setContextMenuItems(Landroid/view/Menu;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;Landroid/view/MenuItem;I)Z
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I

    return-void
.end method

.method static synthetic access$5(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I

    return v0
.end method

.method static synthetic access$6(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)Lorg/videolan/vlc/MediaLibrary;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    return-object v0
.end method

.method private addNewTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, "dcf":Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$DummyContentFactory;
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 187
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getNewTabIndicator(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 189
    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 190
    return-void
.end method

.method private getNewTabIndicator(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300e0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f070131

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-object v1
.end method

.method private handleContextItemSelected(Landroid/view/MenuItem;I)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "position"    # I

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v6

    .line 251
    .local v6, "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 253
    .local v3, "id":I
    const v9, 0x7f0703cd

    if-ne v3, v9, :cond_0

    const/4 v8, 0x1

    .line 254
    .local v8, "useAllItems":Z
    :goto_0
    const v9, 0x7f0703cb

    if-ne v3, v9, :cond_1

    const/4 v1, 0x1

    .line 256
    .local v1, "append":Z
    :goto_1
    const-class v9, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    invoke-virtual {v9, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v4, v6

    .line 257
    check-cast v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 258
    .local v4, "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v9, v4, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 263
    .end local v4    # "info":Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    .local v2, "groupPosition":I
    :goto_2
    const v9, 0x7f0703ce

    if-ne v3, v9, :cond_3

    .line 265
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    .line 266
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 267
    new-instance v11, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;

    iget-object v12, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v12, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v12

    invoke-direct {v11, p0, v12}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$6;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;Ljava/lang/Object;)V

    .line 264
    invoke-static {v10, v9, v11}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/util/VLCRunnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 278
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 279
    const/4 v9, 0x1

    .line 311
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :goto_3
    return v9

    .line 253
    .end local v1    # "append":Z
    .end local v2    # "groupPosition":I
    .end local v8    # "useAllItems":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 254
    .restart local v8    # "useAllItems":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 261
    .restart local v1    # "append":Z
    :cond_2
    move v2, p2

    .restart local v2    # "groupPosition":I
    goto :goto_2

    .line 282
    :cond_3
    const v9, 0x7f0703d0

    if-ne v3, v9, :cond_4

    .line 283
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v9

    iget-object v9, v9, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mMediaList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/videolan/libvlc/Media;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/videolan/vlc/gui/audio/AudioUtil;->setRingtone(Lorg/videolan/libvlc/Media;Landroid/content/Context;)V

    .line 284
    const/4 v9, 0x1

    goto :goto_3

    .line 287
    :cond_4
    if-eqz v8, :cond_5

    .line 288
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v5, "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v5, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getListWithPosition(Ljava/util/List;I)I

    move-result v7

    .line 306
    .local v7, "startPosition":I
    :goto_4
    if-eqz v1, :cond_6

    .line 307
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v9, v5}, Lorg/videolan/vlc/audio/AudioServiceController;->append(Ljava/util/List;)V

    .line 311
    :goto_5
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_3

    .line 292
    .end local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "startPosition":I
    :cond_5
    const/4 v7, 0x0

    .line 293
    .restart local v7    # "startPosition":I
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 302
    const/4 v9, 0x1

    goto :goto_3

    .line 296
    :pswitch_0
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 297
    .restart local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 299
    .end local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v9, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getLocations(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 300
    .restart local v5    # "medias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 309
    :cond_6
    iget-object v9, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    invoke-virtual {v9, v5, v7}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    goto :goto_5

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setContextMenuItems(Landroid/view/Menu;Landroid/view/View;I)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const v3, 0x7f0703cf

    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "songs"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0, p3}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->getItem(I)Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;

    move-result-object v0

    iget-boolean v0, v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ListItem;->mIsSeparator:Z

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    const v0, 0x7f0703cc

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 228
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 230
    :cond_1
    invoke-static {}, Lorg/videolan/vlc/util/AndroidDevices;->isPhone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 232
    :cond_2
    return-void
.end method

.method private updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mediaList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 330
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 319
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->clear()V

    .line 321
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mediaList:Ljava/util/ArrayList;

    sget-object v3, Lorg/videolan/vlc/gui/audio/MediaComparators;->byAlbum:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 324
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mediaList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 325
    .local v1, "media":Lorg/videolan/libvlc/Media;
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->addSeparator(Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 326
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 327
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->addSeparator(Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 328
    iget-object v2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->add(Ljava/lang/String;Ljava/lang/String;Lorg/videolan/libvlc/Media;)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/MenuItem;

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 242
    :goto_0
    return v1

    .line 239
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 240
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, p1, v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->handleContextItemSelected(Landroid/view/MenuItem;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const/4 v1, 0x1

    goto :goto_0

    .line 242
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

    .line 97
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    .line 98
    new-instance v0, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    .line 100
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V

    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    iget-object v1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mContextPopupMenuListener:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;->setContextPopupMenuListener(Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter$ContextPopupMenuListener;)V

    .line 103
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAudioController:Lorg/videolan/vlc/audio/AudioServiceController;

    .line 104
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mMediaLibrary:Lorg/videolan/vlc/MediaLibrary;

    .line 105
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 218
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f100004

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "position":I
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 221
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 222
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->setContextMenuItems(Landroid/view/Menu;Landroid/view/View;I)V

    .line 223
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    const v3, 0x7f030036

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "v":Landroid/view/View;
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    .line 120
    const v3, 0x7f0700f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 121
    .local v0, "albumsList":Landroid/widget/ListView;
    const v3, 0x7f0700fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 122
    .local v1, "songsList":Landroid/widget/ListView;
    const v3, 0x7f0700f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/videolan/vlc/widget/FlingViewGroup;

    iput-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    .line 124
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mSongsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mAlbumsAdapter:Lorg/videolan/vlc/gui/audio/AudioBrowserListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->songsListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->albumsListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 133
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 135
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "albums"

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->addNewTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "songs"

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->addNewTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    iget v4, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 139
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    iget v4, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    .line 141
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    new-instance v4, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;

    invoke-direct {v4, p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$4;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 149
    iget-object v3, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mFlingViewGroup:Lorg/videolan/vlc/widget/FlingViewGroup;

    new-instance v4, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$5;

    invoke-direct {v4, p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment$5;-><init>(Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;)V

    invoke-virtual {v3, v4}, Lorg/videolan/vlc/widget/FlingViewGroup;->setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V

    .line 169
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 202
    iget-object v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mCurrentTab:I

    .line 203
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 208
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->updateList()V

    .line 111
    return-void
.end method

.method public setMediaList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "mediaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    iput-object p1, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mediaList:Ljava/util/ArrayList;

    .line 91
    iput-object p2, p0, Lorg/videolan/vlc/gui/audio/AudioAlbumsSongsFragment;->mTitle:Ljava/lang/String;

    .line 92
    return-void
.end method
