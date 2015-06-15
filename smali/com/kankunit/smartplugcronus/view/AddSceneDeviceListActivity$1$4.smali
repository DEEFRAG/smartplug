.class Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$4;
.super Ljava/lang/Object;
.source "AddSceneDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1$4;->this$1:Lcom/kankunit/smartplugcronus/view/AddSceneDeviceListActivity$1;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 199
    return-void
.end method
