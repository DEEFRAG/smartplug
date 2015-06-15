.class Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;

.field private final synthetic val$k:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;

    iput p2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;->val$k:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Confirm:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->map:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;->val$k:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "title"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    const-string v1, "Confirm"

    .line 64
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListAdapter$1;)V

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    return-void
.end method
