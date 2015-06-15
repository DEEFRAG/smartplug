.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;


# direct methods
.method private constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miniDirect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->loadData()V

    .line 215
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    invoke-static {v3, v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;)V

    .line 216
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mDragAdapter:Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$27(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/adapter/IndexGridAdapter;->refreshData(Ljava/util/List;)V

    .line 217
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->indexGridView:Lcom/kankunit/smartplugcronus/customview/IndexGridView;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/customview/IndexGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/customview/IndexGridView;->invalidateViews()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "msgBody"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "refreshPlug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->initGridInfo()V

    .line 226
    :cond_2
    const-string v2, "rack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 228
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x6f

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 229
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$BaseReceiver;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
