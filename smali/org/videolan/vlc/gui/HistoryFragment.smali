.class public Lorg/videolan/vlc/gui/HistoryFragment;
.super Landroid/support/v4/app/ListFragment;
.source "HistoryFragment.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IRefreshable;


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/HistoryFragment"


# instance fields
.field private mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method private focusHelper(Z)V
    .locals 6
    .param p1, "idIsEmpty"    # Z

    .prologue
    const v5, 0x102000a

    .line 59
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030080

    .line 60
    const/4 v4, 0x0

    .line 59
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "parent":Landroid/view/View;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/MainActivity;

    .line 62
    .local v0, "main":Lorg/videolan/vlc/gui/MainActivity;
    invoke-virtual {v0, p1, v5}, Lorg/videolan/vlc/gui/MainActivity;->setMenuFocusDown(ZI)V

    .line 63
    invoke-virtual {v0, p1, v1, v5}, Lorg/videolan/vlc/gui/MainActivity;->setSearchAsFocusDown(ZLandroid/view/View;I)V

    .line 65
    return-void
.end method

.method private playListIndex(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v0

    .line 99
    .local v0, "audioController":Lorg/videolan/vlc/audio/AudioServiceController;
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/LibVLC;->setMediaList()V

    .line 100
    invoke-virtual {v0, p1}, Lorg/videolan/vlc/audio/AudioServiceController;->playIndex(I)V

    .line 101
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getUserVisibleHint()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 120
    :goto_0
    return v2

    .line 107
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 108
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    if-nez v1, :cond_1

    .line 109
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 112
    .local v0, "id":I
    const v3, 0x7f0703db

    if-ne v0, v3, :cond_2

    .line 113
    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/HistoryFragment;->playListIndex(I)V

    goto :goto_0

    .line 115
    :cond_2
    const v3, 0x7f0703dc

    if-ne v0, v3, :cond_3

    .line 116
    invoke-static {}, Lorg/videolan/libvlc/LibVLC;->getExistingInstance()Lorg/videolan/libvlc/LibVLC;

    move-result-object v3

    invoke-virtual {v3}, Lorg/videolan/libvlc/LibVLC;->getPrimaryMediaList()Lorg/videolan/libvlc/MediaList;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lorg/videolan/libvlc/MediaList;->remove(I)V

    .line 117
    iget-object v3, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {v3}, Lorg/videolan/vlc/gui/HistoryAdapter;->refresh()V

    goto :goto_0

    .line 120
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/HistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    .line 55
    const-string v0, "VLC/HistoryFragment"

    const-string v1, "HistoryFragment()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 88
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
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

    .line 70
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const v4, 0x7f0c0013

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 72
    const v2, 0x7f030080

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/HistoryFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 75
    .local v0, "listView":Landroid/widget/ListView;
    const v2, 0x7f0700f9

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setNextFocusUpId(I)V

    .line 76
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setNextFocusLeftId(I)V

    .line 77
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setNextFocusRightId(I)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setNextFocusForwardId(I)V

    .line 79
    iget-object v2, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {v2}, Lorg/videolan/vlc/gui/HistoryAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lorg/videolan/vlc/gui/HistoryFragment;->focusHelper(Z)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 81
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/HistoryFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 82
    return-object v1

    :cond_0
    move v2, v3

    .line 79
    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "p"    # I
    .param p4, "id"    # J

    .prologue
    .line 93
    invoke-direct {p0, p3}, Lorg/videolan/vlc/gui/HistoryFragment;->playListIndex(I)V

    .line 94
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 125
    const-string v1, "VLC/HistoryFragment"

    const-string v2, "Refreshing view!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/HistoryAdapter;->refresh()V

    .line 128
    iget-object v1, p0, Lorg/videolan/vlc/gui/HistoryFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/HistoryAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/HistoryAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/HistoryFragment;->focusHelper(Z)V

    .line 131
    :goto_1
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0, v0}, Lorg/videolan/vlc/gui/HistoryFragment;->focusHelper(Z)V

    goto :goto_1
.end method
