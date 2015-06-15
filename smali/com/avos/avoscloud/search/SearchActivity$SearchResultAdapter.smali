.class public Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchResultAdapter"
.end annotation


# instance fields
.field lastVisibleItemId:I

.field volatile loading:Z

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/avos/avoscloud/search/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/search/SearchActivity;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iput-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->searchResults:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->searchResults:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 139
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVObject;

    .line 147
    .local v1, "item":Lcom/avos/avoscloud/AVObject;
    const/4 v0, 0x0

    .line 148
    .local v0, "holder":Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;
    if-nez p2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/avos/avoscloud/search/Resources$layout;->avoscloud_search_result_item(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    new-instance v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;

    .end local v0    # "holder":Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;-><init>(Lcom/avos/avoscloud/search/SearchActivity;)V

    .line 153
    .restart local v0    # "holder":Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/search/Resources$id;->avoscloud_search_result_title(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 156
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/search/Resources$id;->avoscloud_search_result_description(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->description:Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/search/Resources$id;->avoscloud_search_result_open_app(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->openApp:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v2, v2, Lcom/avos/avoscloud/search/SearchActivity;->search:Lcom/avos/avoscloud/search/AVSearchQuery;

    invoke-virtual {v2}, Lcom/avos/avoscloud/search/AVSearchQuery;->getTitleAttribute()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    iget-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v3, v3, Lcom/avos/avoscloud/search/SearchActivity;->search:Lcom/avos/avoscloud/search/AVSearchQuery;

    invoke-virtual {v3}, Lcom/avos/avoscloud/search/AVSearchQuery;->getTitleAttribute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v3, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->description:Landroid/widget/TextView;

    const-string v2, "highlight_avoscloud_"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/avos/avoscloud/search/SearchActivity;->highlightStringMerge(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_1
    const-string v2, "app_url_avoscloud_"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    iget-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->openApp:Landroid/widget/TextView;

    new-instance v3, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;-><init>(Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;Lcom/avos/avoscloud/AVObject;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_0
    return-object p2

    .line 164
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;
    check-cast v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;
    goto :goto_0

    .line 174
    :cond_2
    iget-object v3, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->title:Landroid/widget/TextView;

    const-string v2, "highlight_avoscloud_"

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/avos/avoscloud/search/SearchActivity;->highlightStringMerge(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v2, v0, Lcom/avos/avoscloud/search/SearchActivity$ViewHolder;->description:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 200
    add-int v0, p2, p3

    iput v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->lastVisibleItemId:I

    .line 201
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 206
    iget v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->lastVisibleItemId:I

    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v1, v1, Lcom/avos/avoscloud/search/SearchActivity;->searchResults:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 208
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "show loading"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/SearchActivity;->showLoadingView()V

    .line 210
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->search:Lcom/avos/avoscloud/search/AVSearchQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v1, v1, Lcom/avos/avoscloud/search/SearchActivity;->searchCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/search/AVSearchQuery;->findInBackgroud(Lcom/avos/avoscloud/FindCallback;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/SearchActivity;->hideLoadingView()V

    goto :goto_0
.end method
