.class public Lorg/videolan/vlc/gui/DirectoryViewFragment;
.super Landroid/support/v4/app/ListFragment;
.source "DirectoryViewFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IRefreshable;
.implements Lorg/videolan/vlc/interfaces/ISortable;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DirectoryViewFragment"


# instance fields
.field private mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

.field private final messageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 228
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryViewFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment$1;-><init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->messageReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/DirectoryViewFragment;)Lorg/videolan/vlc/gui/DirectoryAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    return-object v0
.end method

.method private focusHelper(Z)V
    .locals 6
    .param p1, "idIsEmpty"    # Z

    .prologue
    const v5, 0x102000a

    .line 83
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 84
    const v3, 0x7f030066

    const/4 v4, 0x0

    .line 83
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 86
    .local v0, "main":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0, p1, v5}, Lorg/videolan/vlc/gui/MainActivity;->setMenuFocusDown(ZI)V

    .line 87
    invoke-virtual {v0, p1, v1, v5}, Lorg/videolan/vlc/gui/MainActivity;->setSearchAsFocusDown(ZLandroid/view/View;I)V

    .line 88
    return-void
.end method

.method private openMediaFile(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    .line 197
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    .line 198
    .local v0, "audioController":Lorg/videolan/vlc/audio/AudioServiceController;
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v3, p1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "mediaFile":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 202
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/videolan/libvlc/LibVLC;->hasVideoTrack(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getAllMediaLocations()Ljava/util/ArrayList;

    move-result-object v2

    .line 204
    .local v2, "mediaLocations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    .line 211
    .end local v2    # "mediaLocations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public isRootDirectory()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryAdapter;->isRoot()Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 138
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getUserVisibleHint()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    .line 172
    :goto_0
    return v4

    .line 140
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 141
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    if-nez v2, :cond_1

    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 145
    .local v1, "id":I
    iget-object v5, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    iget v6, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getMediaLocation(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "mediaLocation":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 149
    :cond_2
    const v5, 0x7f0703d6

    if-ne v1, v5, :cond_3

    .line 150
    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v5}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->openMediaFile(I)V

    goto :goto_0

    .line 152
    :cond_3
    const v5, 0x7f0703d7

    if-ne v1, v5, :cond_4

    .line 153
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/videolan/vlc/audio/AudioServiceController;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_4
    const v5, 0x7f0703d8

    if-ne v1, v5, :cond_5

    .line 156
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 157
    new-instance v6, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment$3;-><init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V

    .line 156
    invoke-static {v5, v3, v6}, Lorg/videolan/vlc/gui/CommonDialogs;->deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/util/VLCRunnable;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 163
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 165
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_5
    const v5, 0x7f0703d9

    if-ne v1, v5, :cond_6

    .line 166
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/lang/String;Z)V

    goto :goto_0

    .line 168
    :cond_6
    const v5, 0x7f0703da

    if-ne v1, v5, :cond_7

    .line 169
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_7
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    .line 68
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 128
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 130
    .local v1, "position":I
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v2, v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->isChildFile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 132
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    const v2, 0x7f10000b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    .end local v0    # "menuInflater":Landroid/view/MenuInflater;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const v5, 0x102000a

    .line 93
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v4, 0x7f0c0038

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 95
    const v2, 0x7f030066

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 98
    .local v0, "listView":Landroid/widget/ListView;
    const v2, 0x7f0700f9

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextFocusUpId(I)V

    .line 99
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setNextFocusLeftId(I)V

    .line 100
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 101
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setNextFocusForwardId(I)V

    .line 102
    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->focusHelper(Z)V

    .line 103
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 104
    new-instance v2, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;

    invoke-direct {v2, p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment$2;-><init>(Lorg/videolan/vlc/gui/DirectoryViewFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 116
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 117
    return-object v1

    :cond_0
    move v2, v3

    .line 102
    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J

    .prologue
    .line 177
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v1, p3}, Lorg/videolan/vlc/gui/DirectoryAdapter;->browse(I)I

    move-result v0

    .line 179
    .local v0, "success":I
    if-gez v0, :cond_0

    .line 180
    invoke-direct {p0, p3}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->openMediaFile(I)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->setSelection(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStart()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onStop()V

    .line 123
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->refresh()V

    .line 223
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/DirectoryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->focusHelper(Z)V

    .line 226
    :goto_1
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_1
    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->focusHelper(Z)V

    goto :goto_1
.end method

.method public showParentDirectory()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lorg/videolan/vlc/gui/DirectoryViewFragment;->mDirectoryAdapter:Lorg/videolan/vlc/gui/DirectoryAdapter;

    const-string v2, ".."

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/DirectoryAdapter;->browse(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "success":I
    if-ltz v0, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->setSelection(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public sortBy(I)V
    .locals 2
    .param p1, "sortby"    # I

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/Util;->toaster(Landroid/content/Context;I)V

    .line 217
    return-void
.end method
