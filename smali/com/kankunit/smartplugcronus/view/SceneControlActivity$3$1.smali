.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    .line 1713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 1717
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 1718
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1717
    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1719
    .local v0, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1720
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1721
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentThread:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->interrupt()V

    .line 1722
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1723
    invoke-virtual {v0, v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 1724
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 1727
    :cond_0
    return-void
.end method
