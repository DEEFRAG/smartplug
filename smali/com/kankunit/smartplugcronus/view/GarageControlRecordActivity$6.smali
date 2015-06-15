.class Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;
.super Ljava/lang/Object;
.source "GarageControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->access$6(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 282
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->isWait:Z

    .line 283
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$6;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->quit()V

    .line 284
    return-void
.end method
