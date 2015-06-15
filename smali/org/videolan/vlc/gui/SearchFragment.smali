.class public Lorg/videolan/vlc/gui/SearchFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SearchFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SearchActivity"


# instance fields
.field private mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

.field private mListHeader:Landroid/widget/LinearLayout;

.field private mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

.field private mSearchText:Landroid/widget/EditText;

.field private final searchTextListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final searchTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 167
    new-instance v0, Lorg/videolan/vlc/gui/SearchFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/SearchFragment$1;-><init>(Lorg/videolan/vlc/gui/SearchFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SearchFragment;->searchTextWatcher:Landroid/text/TextWatcher;

    .line 190
    new-instance v0, Lorg/videolan/vlc/gui/SearchFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/SearchFragment$2;-><init>(Lorg/videolan/vlc/gui/SearchFragment;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SearchFragment;->searchTextListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lorg/videolan/vlc/gui/SearchFragment;Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/SearchFragment;->search(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$1(Lorg/videolan/vlc/gui/SearchFragment;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/videolan/vlc/gui/SearchFragment;->showSearchHistory()V

    return-void
.end method

.method static synthetic access$2(Lorg/videolan/vlc/gui/SearchFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    return-object v0
.end method

.method private search(Ljava/lang/CharSequence;I)V
    .locals 17
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/SearchFragment;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v12}, Lorg/videolan/vlc/gui/SearchResultAdapter;->clear()V

    .line 106
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\s+"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "keys":[Ljava/lang/String;
    invoke-static {}, Lorg/videolan/vlc/MediaLibrary;->getInstance()Lorg/videolan/vlc/MediaLibrary;

    move-result-object v12

    invoke-virtual {v12}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 108
    .local v3, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/libvlc/Media;>;"
    const/4 v10, 0x0

    .line 109
    .local v10, "results":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v5, v12, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/SearchFragment;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v12}, Lorg/videolan/vlc/gui/SearchResultAdapter;->sort()V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f0f0000

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v10, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "headerText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/videolan/vlc/gui/SearchFragment;->showListHeader(Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/SearchFragment;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/videolan/vlc/gui/SearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void

    .line 110
    .end local v4    # "headerText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/videolan/libvlc/Media;

    .line 111
    .local v6, "item":Lorg/videolan/libvlc/Media;
    const/4 v12, -0x1

    move/from16 v0, p2

    if-eq v0, v12, :cond_2

    invoke-virtual {v6}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v12

    move/from16 v0, p2

    if-eq v0, v12, :cond_2

    .line 109
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_2
    const/4 v2, 0x1

    .line 114
    .local v2, "add":Z
    invoke-virtual {v6}, Lorg/videolan/libvlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "MRL":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    array-length v12, v8

    if-lt v7, v12, :cond_3

    .line 124
    :goto_3
    if-eqz v2, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/videolan/vlc/gui/SearchFragment;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v12, v6}, Lorg/videolan/vlc/gui/SearchResultAdapter;->add(Ljava/lang/Object;)V

    .line 126
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 117
    :cond_3
    aget-object v12, v8, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 118
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 119
    const/4 v2, 0x0

    .line 120
    goto :goto_3

    .line 116
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private showListHeader(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 142
    .local v2, "lv":Landroid/widget/ListView;
    iget-object v3, p0, Lorg/videolan/vlc/gui/SearchFragment;->mListHeader:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 144
    .local v1, "infalter":Landroid/view/LayoutInflater;
    const v3, 0x7f030094

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lorg/videolan/vlc/gui/SearchFragment;->mListHeader:Landroid/widget/LinearLayout;

    .line 145
    iget-object v3, p0, Lorg/videolan/vlc/gui/SearchFragment;->mListHeader:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 149
    .end local v1    # "infalter":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/SearchFragment;->mListHeader:Landroid/widget/LinearLayout;

    const v4, 0x7f0701c0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, "headerText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method private showSearchHistory()V
    .locals 6

    .prologue
    .line 155
    const v4, 0x7f0c007a

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "headerText":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/SearchFragment;->showListHeader(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v0

    .line 159
    .local v0, "db":Lorg/videolan/vlc/MediaDatabase;
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->clear()V

    .line 160
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lorg/videolan/vlc/MediaDatabase;->getSearchhistory(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 161
    .local v2, "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/SearchFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    return-void

    .line 161
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "s":Ljava/lang/String;
    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v5, v3}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f070361

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    .line 78
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/videolan/vlc/gui/SearchFragment;->searchTextListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 79
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/videolan/vlc/gui/SearchFragment;->searchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 63
    const v1, 0x7f0300d0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    .line 67
    new-instance v1, Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/videolan/vlc/gui/SearchResultAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    .line 69
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/SearchFragment;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    if-ne v6, v7, :cond_1

    .line 202
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "selection":Ljava/lang/String;
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 205
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 230
    .end local v5    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/SearchFragment;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    if-ne v6, v7, :cond_0

    .line 208
    invoke-static {}, Lorg/videolan/vlc/MediaDatabase;->getInstance()Lorg/videolan/vlc/MediaDatabase;

    move-result-object v2

    .line 209
    .local v2, "db":Lorg/videolan/vlc/MediaDatabase;
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/videolan/vlc/MediaDatabase;->addSearchhistoryItem(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/videolan/libvlc/Media;

    .line 213
    .local v4, "item":Lorg/videolan/libvlc/Media;
    if-eqz v4, :cond_2

    .line 214
    invoke-virtual {v4}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v6

    if-nez v6, :cond_3

    .line 215
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v4}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 217
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 223
    invoke-static {}, Lorg/videolan/vlc/audio/AudioServiceController;->getInstance()Lorg/videolan/vlc/audio/AudioServiceController;

    move-result-object v6

    invoke-virtual {v4}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lorg/videolan/vlc/audio/AudioServiceController;->load(Ljava/util/List;I)V

    goto :goto_0

    .line 219
    :cond_4
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 220
    .local v1, "audioItem":Lorg/videolan/libvlc/Media;
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 221
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 98
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 99
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 100
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 86
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 88
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 91
    invoke-direct {p0}, Lorg/videolan/vlc/gui/SearchFragment;->showSearchHistory()V

    .line 92
    return-void
.end method

.method public onSearchKeyPressed()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 236
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 237
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchFragment;->mSearchText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
