.class Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$3;
.super Ljava/lang/Object;
.source "ForgetPasswordStep1Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity$3;->this$0:Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ForgetPasswordStep1Activity;->finish()V

    .line 143
    return-void
.end method
