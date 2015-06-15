.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;
.super Ljava/lang/Object;
.source "DeviceFragment_bak.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->ids:Ljava/util/Map;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->devicelist:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$12(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 316
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$4;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->ids:Ljava/util/Map;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$10(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$11(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;I)V

    .line 317
    return-void
.end method
