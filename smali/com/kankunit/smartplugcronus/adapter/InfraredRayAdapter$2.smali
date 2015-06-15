.class Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2;
.super Ljava/lang/Object;
.source "InfraredRayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;

.field private final synthetic val$k:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;

    iput p2, p0, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2;->val$k:I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Cancel:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2;->this$0:Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;->map:Ljava/util/List;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2;->val$k:I

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

    .line 85
    const-string v1, "Confirm"

    .line 86
    new-instance v2, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/InfraredRayAdapter$2;)V

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 92
    return-void
.end method
