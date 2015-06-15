.class Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;
.super Ljava/lang/Object;
.source "CurtainControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getControlById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    move-result-object v0

    .line 191
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->emitDelete(Lcom/kankunit/smartplugcronus/model/RemoteControlModel;)V

    .line 192
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 193
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->access$2(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByControlId(Landroid/content/Context;I)V

    .line 194
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->finish()V

    .line 195
    return-void
.end method
