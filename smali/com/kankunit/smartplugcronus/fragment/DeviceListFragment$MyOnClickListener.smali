.class Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnClickListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 179
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;->index:I

    .line 180
    iput p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;->index:I

    .line 181
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$MyOnClickListener;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 186
    return-void
.end method
