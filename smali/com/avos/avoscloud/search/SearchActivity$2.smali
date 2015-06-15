.class Lcom/avos/avoscloud/search/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/search/SearchActivity;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/avos/avoscloud/search/SearchActivity$2;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$2;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/SearchActivity;->onBackPressed()V

    .line 103
    iget-object v0, p0, Lcom/avos/avoscloud/search/SearchActivity$2;->this$0:Lcom/avos/avoscloud/search/SearchActivity;

    invoke-virtual {v0}, Lcom/avos/avoscloud/search/SearchActivity;->finish()V

    .line 104
    return-void
.end method
