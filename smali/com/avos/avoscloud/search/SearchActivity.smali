.class public Lcom/avos/avoscloud/search/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;,
        Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;
    }
.end annotation


# static fields
.field static final HIGHLIGHTS_MAX_LENGTH:I = 0xc8

.field public static highlightFontStyle:Ljava/lang/String;


# instance fields
.field adapter:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

.field emtpyResult:Landroid/view/View;

.field listView:Landroid/widget/ListView;

.field loadingView:Landroid/view/View;

.field search:Lcom/avos/avoscloud/search/AVSearchQuery;

.field searchCallback:Lcom/avos/avoscloud/FindCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/FindCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field

.field searchResults:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/search/SearchActivity;->highlightFontStyle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity;->searchResults:Ljava/util/LinkedList;

    .line 261
    return-void
.end method

.method public static highLightStringStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v1, "<em>"

    sget-object v0, Lcom/avos/avoscloud/search/SearchActivity;->highlightFontStyle:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<font color=\'#E68A00\'>"

    :goto_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 246
    const-string v0, "</em>"

    const-string v1, "</font>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 247
    return-object p0

    .line 242
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/search/SearchActivity;->highlightFontStyle:Ljava/lang/String;

    goto :goto_0
.end method

.method public static highlightStringMerge(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "highlights":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v10, 0xc8

    const/4 v9, 0x0

    .line 218
    if-eqz p0, :cond_3

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    const-string v8, "..."

    invoke-static {v7, v8}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 224
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "tempString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v5

    .line 226
    .local v5, "tempSB":Ljava/lang/StringBuilder;
    const-string v7, "<me>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, "lastHeadTagIndex":I
    const-string v7, "<me/>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 228
    .local v3, "lastTailTagIndex":I
    if-ge v2, v3, :cond_1

    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v7

    rsub-int v8, v3, 0xc8

    invoke-virtual {v7, v9, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/search/SearchActivity;->highLightStringStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lastHeadTagIndex":I
    .end local v3    # "lastTailTagIndex":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "tempSB":Ljava/lang/StringBuilder;
    .end local v6    # "tempString":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 232
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "lastHeadTagIndex":I
    .restart local v3    # "lastTailTagIndex":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "tempSB":Ljava/lang/StringBuilder;
    .restart local v6    # "tempString":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Lcom/avos/avoscloud/search/SearchActivity;->highLightStringStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 234
    .end local v2    # "lastHeadTagIndex":I
    .end local v3    # "lastTailTagIndex":I
    .end local v5    # "tempSB":Ljava/lang/StringBuilder;
    .end local v6    # "tempString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/avos/avoscloud/search/SearchActivity;->highLightStringStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 237
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const-string v7, ""

    goto :goto_1
.end method

.method public static setHighLightStyle(Ljava/lang/String;)V
    .locals 0
    .param p0, "style"    # Ljava/lang/String;

    .prologue
    .line 258
    sput-object p0, Lcom/avos/avoscloud/search/SearchActivity;->highlightFontStyle:Ljava/lang/String;

    .line 259
    return-void
.end method

.method private setupActionBar()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/avos/avoscloud/search/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/avos/avoscloud/search/Resources$layout;->avoscloud_search_actionbar(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Lcom/avos/avoscloud/search/Resources$id;->avoscloud_search_actionbar_back(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "backButton":Landroid/view/View;
    new-instance v2, Lcom/avos/avoscloud/search/SearchActivity$2;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/search/SearchActivity$2;-><init>(Lcom/avos/avoscloud/search/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .end local v1    # "backButton":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public hideLoadingView()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/avos/avoscloud/search/Resources$layout;->avoscloud_search_activity(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/search/SearchActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/avos/avoscloud/search/SearchActivity;->setupActionBar()V

    .line 49
    invoke-static {p0}, Lcom/avos/avoscloud/search/Resources$id;->avoscloud_search_result_listview(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->listView:Landroid/widget/ListView;

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {p0}, Lcom/avos/avoscloud/search/Resources$layout;->avoscloud_search_loading(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    .line 52
    invoke-static {p0}, Lcom/avos/avoscloud/search/Resources$id;->avoscloud_search_emtpy_result(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->emtpyResult:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/avos/avoscloud/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/avos/avoscloud/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.avos.avoscloud.search.key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "searchString":Ljava/lang/String;
    const-class v1, Lcom/avos/avoscloud/search/AVSearchQuery;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/search/AVSearchQuery;

    iput-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->search:Lcom/avos/avoscloud/search/AVSearchQuery;

    .line 59
    new-instance v1, Lcom/avos/avoscloud/search/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/search/SearchActivity$1;-><init>(Lcom/avos/avoscloud/search/SearchActivity;)V

    iput-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->searchCallback:Lcom/avos/avoscloud/FindCallback;

    .line 84
    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity;->search:Lcom/avos/avoscloud/search/AVSearchQuery;

    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity;->searchCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/search/AVSearchQuery;->findInBackgroud(Lcom/avos/avoscloud/FindCallback;)V

    .line 86
    .end local v0    # "searchString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity;->loadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_0
    return-void
.end method
