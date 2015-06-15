.class public Lcom/kankunit/smartplugcronus/service/MessageService$LocalBinder;
.super Landroid/os/Binder;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/MessageService;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/service/MessageService;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/MessageService$LocalBinder;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/kankunit/smartplugcronus/service/MessageService;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/service/MessageService$LocalBinder;->this$0:Lcom/kankunit/smartplugcronus/service/MessageService;

    return-object v0
.end method
