.class Lcom/kankunit/smartplugcronus/view/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/special/ResideMenu/ResideMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 5

    .prologue
    .line 904
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    .line 905
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    if-eqz v3, :cond_1

    .line 906
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v1, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    .line 907
    .local v1, "hFragment":Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->hideShadePopWindow()V

    .line 921
    .end local v1    # "hFragment":Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    if-eqz v3, :cond_2

    .line 909
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v0, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    .line 910
    .local v0, "dFragment":Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->hideShadePopWindow()V

    goto :goto_0

    .line 911
    .end local v0    # "dFragment":Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    if-eqz v3, :cond_3

    .line 912
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v2, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    .line 913
    .local v2, "sFragment":Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->hideShadePopWindow()V

    goto :goto_0

    .line 914
    .end local v2    # "sFragment":Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    if-eqz v3, :cond_4

    .line 915
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v2, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    .line 916
    .local v2, "sFragment":Lcom/kankunit/smartplugcronus/fragment/FAQFragment;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->hideShadePopWindow()V

    goto :goto_0

    .line 917
    .end local v2    # "sFragment":Lcom/kankunit/smartplugcronus/fragment/FAQFragment;
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    if-eqz v3, :cond_0

    .line 918
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v2, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    .line 919
    .local v2, "sFragment":Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->hideShadePopWindow()V

    goto :goto_0
.end method

.method public openMenu()V
    .locals 5

    .prologue
    .line 881
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen:Z

    .line 882
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    if-eqz v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v1, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v1, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;

    .line 884
    .local v1, "hFragment":Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/fragment/HomeFragment;->showShadePopWindow()V

    .line 898
    .end local v1    # "hFragment":Lcom/kankunit/smartplugcronus/fragment/HomeFragment;
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    if-eqz v3, :cond_2

    .line 886
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v0, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v0, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;

    .line 887
    .local v0, "dFragment":Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;->showShadePopWindow()V

    goto :goto_0

    .line 888
    .end local v0    # "dFragment":Lcom/kankunit/smartplugcronus/fragment/DeviceListFragment;
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    if-eqz v3, :cond_3

    .line 889
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v2, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;

    .line 890
    .local v2, "sFragment":Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->showShadePopWindow()V

    goto :goto_0

    .line 891
    .end local v2    # "sFragment":Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    if-eqz v3, :cond_4

    .line 892
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v2, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;

    .line 893
    .local v2, "sFragment":Lcom/kankunit/smartplugcronus/fragment/FAQFragment;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/FAQFragment;->showShadePopWindow()V

    goto :goto_0

    .line 894
    .end local v2    # "sFragment":Lcom/kankunit/smartplugcronus/fragment/FAQFragment;
    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    instance-of v3, v3, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    if-eqz v3, :cond_0

    .line 895
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/MenuActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iget-object v2, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    check-cast v2, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;

    .line 896
    .local v2, "sFragment":Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/AboutFragMent;->showShadePopWindow()V

    goto :goto_0
.end method
