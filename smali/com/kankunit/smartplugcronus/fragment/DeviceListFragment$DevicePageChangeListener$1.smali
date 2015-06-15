.class Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    iput p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->val$index:I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "a"    # Landroid/view/animation/Animation;

    .prologue
    const v3, 0x7f090020

    .line 236
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->val$index:I

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$9(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 239
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceList_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->val$index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->controlButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$13(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 244
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceList_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_1
    iget v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->val$index:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$14(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020179

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 249
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->infraredButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$15(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f020183

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 250
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->deviceList_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$DevicePageChangeListener;)Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 261
    return-void
.end method
