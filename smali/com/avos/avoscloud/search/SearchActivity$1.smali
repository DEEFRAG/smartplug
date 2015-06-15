.class Lcom/avos/avoscloud/search/SearchActivity$1;
.super Lcom/avos/avoscloud/FindCallback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/search/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FindCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {p0}, Lcom/avos/avoscloud/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .param p2, "parseException"    # Lcom/avos/avoscloud/AVException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "parseObjects":Ljava/util/List;, "Ljava/util/List<Lcom/avos/avoscloud/AVObject;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 63
    if-nez p2, :cond_0

    .line 64
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->searchResults:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->adapter:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    new-instance v1, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;-><init>(Lcom/avos/avoscloud/search/SearchActivity;)V

    iput-object v1, v0, Lcom/avos/avoscloud/search/SearchActivity;->adapter:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    .line 67
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v1, v1, Lcom/avos/avoscloud/search/SearchActivity;->adapter:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v1, v1, Lcom/avos/avoscloud/search/SearchActivity;->adapter:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->searchResults:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->emtpyResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->adapter:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->notifyDataSetChanged()V

    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/SearchActivity;->hideLoadingView()V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->emtpyResult:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$1;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    iget-object v0, v0, Lcom/avos/avoscloud/search/SearchActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
