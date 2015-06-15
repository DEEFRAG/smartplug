.class Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

.field final synthetic val$item:Lcom/avos/avoscloud/AVObject;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;->this$1:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    iput-object p2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;->val$item:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;->val$item:Lcom/avos/avoscloud/AVObject;

    const-string v3, "deep_link_avoscloud_"

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;->val$item:Lcom/avos/avoscloud/AVObject;

    const-string v3, "app_url_avoscloud_"

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "link":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;->this$1:Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;

    iget-object v2, v2, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-virtual {v2, v0}, Lcom/avos/avoscloud/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 190
    return-void

    .line 184
    .end local v1    # "link":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/search/SearchActivity$SearchResultAdapter$1;->val$item:Lcom/avos/avoscloud/AVObject;

    const-string v3, "deep_link_avoscloud_"

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
