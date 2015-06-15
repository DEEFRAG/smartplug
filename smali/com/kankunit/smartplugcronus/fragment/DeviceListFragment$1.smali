.class Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$1;
.super Ljava/lang/Object;
.source "DeviceListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    .line 94
    return-void
.end method
