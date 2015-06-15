.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->mFlag:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$6(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->isExpend:Z
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$7(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->expendContent()V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->getCurrentIndex()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 499
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-static {v0, p3}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$8(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;I)V

    .line 500
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->setCurrentIndex(I)V

    .line 501
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveWidth:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$9(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->setMLength(I)V

    .line 502
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveAdapter:Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$3(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/adapter/AddSceneAboveListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
