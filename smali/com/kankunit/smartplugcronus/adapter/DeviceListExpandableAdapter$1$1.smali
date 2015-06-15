.class Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1$1;
.super Ljava/lang/Object;
.source "DeviceListExpandableAdapter.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1$1;->this$1:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1$1;->this$1:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    move-result-object v0

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1$1;->this$1:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    move-result-object v1

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    return-void
.end method
