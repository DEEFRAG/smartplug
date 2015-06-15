.class Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;
.super Ljava/lang/Object;
.source "RemoteControlListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

.field private final synthetic val$controlId:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    iput p2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->val$controlId:I

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;)Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-result-object v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->val$controlId:I

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByControlId(Landroid/content/Context;I)V

    .line 209
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;)Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-result-object v1

    iget v2, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->val$controlId:I

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getControlById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-result-object v0

    .line 210
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;)Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V

    .line 211
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;)Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->db:Lnet/tsz/afinal/FinalDb;

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->val$controlId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 212
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;)Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-result-object v1

    # invokes: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->loadData()V
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$3(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)V

    .line 213
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4$1;->this$1:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;->access$0(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity$4;)Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->adapter:Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;->access$4(Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;)Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/adapter/RemoteControlAdapter;->notifyDataSetChanged()V

    .line 214
    return-void
.end method
