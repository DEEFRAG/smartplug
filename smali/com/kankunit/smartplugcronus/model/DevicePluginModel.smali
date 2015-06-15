.class public Lcom/kankunit/smartplugcronus/model/DevicePluginModel;
.super Ljava/lang/Object;
.source "DevicePluginModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_device_plugin"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private mac:Ljava/lang/String;

.field private pluginName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->id:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->id:I

    .line 17
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->mac:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/DevicePluginModel;->pluginName:Ljava/lang/String;

    .line 29
    return-void
.end method
