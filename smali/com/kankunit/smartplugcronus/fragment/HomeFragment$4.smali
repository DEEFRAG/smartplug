.class Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->initPopWin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->pop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$2(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDeleteable(Z)V

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020327

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;

    invoke-direct {v1, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->changeGridDeleteable()Z

    goto :goto_0
.end method
