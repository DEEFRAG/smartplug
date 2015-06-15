.class Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0201c3

    .line 266
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showingFragment:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$4(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)I

    move-result v1

    if-nez v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->indexFragment:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$5(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->changeGridDeleteable(Z)V

    .line 268
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 269
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->sceneFragment:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$6(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->changeGridDeleteable()Z

    move-result v0

    .line 284
    .local v0, "isOk":Z
    if-eqz v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 286
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4;)Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->navRightBtn:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->access$3(Lcom/kankunit/smartplugcronus/fragment/HomeFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$2;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/HomeFragment$4$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
