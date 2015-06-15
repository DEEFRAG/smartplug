.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;
.super Ljava/lang/Object;
.source "ShowMasterRCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getControlById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-result-object v0

    .line 174
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V

    .line 175
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->access$1(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByControlId(Landroid/content/Context;I)V

    .line 177
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->finish()V

    .line 178
    return-void
.end method
