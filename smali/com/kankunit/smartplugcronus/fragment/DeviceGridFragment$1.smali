.class Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment$1;
.super Ljava/lang/Object;
.source "DeviceGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->exa1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 39
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->exa2:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;->access$1(Lcom/kankunit/smartplugcronus/fragment/DeviceGridFragment;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 40
    return-void
.end method
