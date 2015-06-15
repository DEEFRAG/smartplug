.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$2;
.super Ljava/lang/Object;
.source "WirelessConfigureNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    .line 137
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->changeDirectConfigure()V

    .line 138
    return-void
.end method
