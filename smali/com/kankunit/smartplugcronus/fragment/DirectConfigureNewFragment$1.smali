.class Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$1;
.super Ljava/lang/Object;
.source "DirectConfigureNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/DirectConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    .line 109
    .local v0, "activity":Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->changeNetConfigure()V

    .line 110
    return-void
.end method
