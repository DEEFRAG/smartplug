.class Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;
.super Ljava/lang/Object;
.source "GhControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GhControlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GhControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    const-class v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GhControlActivity;->controlId:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByControlId(Landroid/content/Context;I)V

    .line 260
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->finish()V

    .line 261
    return-void
.end method
