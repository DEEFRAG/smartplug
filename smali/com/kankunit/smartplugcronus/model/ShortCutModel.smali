.class public Lcom/kankunit/smartplugcronus/model/ShortCutModel;
.super Ljava/lang/Object;
.source "ShortCutModel.java"


# annotations
.annotation runtime Lnet/tsz/afinal/annotation/sqlite/Table;
    name = "ikonke_shortcut"
.end annotation


# instance fields
.field private deviceMac:Ljava/lang/String;

.field private deviceTitle:Ljava/lang/String;

.field private icon:I

.field private id:I
    .annotation runtime Lnet/tsz/afinal/annotation/sqlite/Id;
        column = "id"
    .end annotation
.end field

.field private isOn:Ljava/lang/String;

.field private isOnline:I

.field private orderNo:I

.field private pluginMac:Ljava/lang/String;

.field private pluginType:Ljava/lang/String;

.field private relatedid:I

.field private shortcutType:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->pluginMac:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->pluginType:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->deviceTitle:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->deviceTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->icon:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->id:I

    return v0
.end method

.method public getIsOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->isOn:Ljava/lang/String;

    return-object v0
.end method

.method public getIsOnline()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->isOnline:I

    return v0
.end method

.method public getOrderNo()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->orderNo:I

    return v0
.end method

.method public getPluginMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->pluginMac:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->pluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedid()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->relatedid:I

    return v0
.end method

.method public getShortcutType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->shortcutType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->deviceMac:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setDeviceTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceTitle"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->deviceTitle:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->icon:I

    .line 83
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->id:I

    .line 59
    return-void
.end method

.method public setIsOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "isOn"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->isOn:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIsOnline(I)V
    .locals 0
    .param p1, "isOnline"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->isOnline:I

    .line 113
    return-void
.end method

.method public setOrderNo(I)V
    .locals 0
    .param p1, "orderNo"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->orderNo:I

    .line 89
    return-void
.end method

.method public setPluginMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginMac"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->pluginMac:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPluginType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->pluginType:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setRelatedid(I)V
    .locals 0
    .param p1, "relatedid"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->relatedid:I

    .line 77
    return-void
.end method

.method public setShortcutType(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutType"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->shortcutType:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->title:Ljava/lang/String;

    .line 95
    return-void
.end method
