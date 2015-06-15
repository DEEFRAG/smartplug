.class Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;
.super Ljava/lang/Object;
.source "TmallControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$4(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    const-class v1, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->controlId:I
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->access$5(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByControlId(Landroid/content/Context;I)V

    .line 285
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->finish()V

    .line 286
    return-void
.end method
