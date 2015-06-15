.class Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v5, 0x7f020353

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 137
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 138
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-static {v0, v4}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->currentPage:I
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->prePageBtn1:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView2:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView1:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->leftScrollView3:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020343

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->nextPageBtn3:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/MasterControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/MasterControlActivity;I)V

    goto :goto_0
.end method
