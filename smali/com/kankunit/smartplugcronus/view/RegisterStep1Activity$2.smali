.class Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$2;
.super Ljava/lang/Object;
.source "RegisterStep1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/RegisterProtocolActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity$2;->this$0:Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/RegisterStep1Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
