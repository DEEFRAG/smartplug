.class Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$2;
.super Ljava/lang/Object;
.source "TimerAdapt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2$2;->this$1:Lcom/kankunit/smartplugcronus/adapter/TimerAdapt$2;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 184
    return-void
.end method
