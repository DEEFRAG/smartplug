.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;
.super Ljava/lang/Object;
.source "MasterControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MasterControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v6, 0x7f020342

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 110
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 111
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020354

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 118
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;I)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-static {v0, v5}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;I)V

    goto :goto_0
.end method
