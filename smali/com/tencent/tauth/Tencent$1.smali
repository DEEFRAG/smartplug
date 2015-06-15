.class Lcom/tencent/tauth/Tencent$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/open/AsynLoadImgBack;


# instance fields
.field final synthetic this$0:Lcom/tencent/tauth/Tencent;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/tencent/tauth/IUiListener;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$summary:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/Tencent;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/tencent/tauth/Tencent$1;->this$0:Lcom/tencent/tauth/Tencent;

    iput-object p2, p0, Lcom/tencent/tauth/Tencent$1;->val$params:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/tauth/Tencent$1;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/tauth/Tencent$1;->val$summary:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/tauth/Tencent$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    iput-object p6, p0, Lcom/tencent/tauth/Tencent$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saved(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 663
    if-nez p1, :cond_1

    .line 664
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$1;->val$params:Landroid/os/Bundle;

    const-string v1, "imageLocalUrl"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$1;->this$0:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/tencent/tauth/Tencent$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tencent/tauth/Tencent$1;->val$params:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tencent/tauth/Tencent$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    # invokes: Lcom/tencent/tauth/Tencent;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->access$000(Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 676
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$1;->val$title:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tauth/Tencent$1;->val$summary:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/open/Util;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/tencent/tauth/Tencent$1;->val$listener:Lcom/tencent/tauth/IUiListener;

    new-instance v1, Lcom/tencent/tauth/UiError;

    const/4 v2, -0x6

    const-string v3, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    .line 669
    const-string v0, "shareToQQ"

    const-string v1, "\u83b7\u53d6\u5206\u4eab\u56fe\u7247\u5931\u8d25!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
