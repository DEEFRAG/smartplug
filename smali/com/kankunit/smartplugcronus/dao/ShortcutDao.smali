.class public Lcom/kankunit/smartplugcronus/dao/ShortcutDao;
.super Ljava/lang/Object;
.source "ShortcutDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 228
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCountByDeviceid(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 230
    new-instance v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 231
    .local v2, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 232
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 234
    const-string v3, "device"

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2, p1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 237
    const v3, 0x7f0201c9

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 243
    :goto_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v1

    .line 244
    .local v1, "orderNo":I
    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 245
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 246
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 250
    .end local v1    # "orderNo":I
    .end local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_0
    return-void

    .line 238
    .restart local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_1
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 239
    const v3, 0x7f0201c6

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_0

    .line 241
    :cond_2
    const v3, 0x7f0201c7

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_0
.end method

.method public static addShortcutByDeviceid(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceid"    # I

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCountByDeviceid(Landroid/content/Context;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 204
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 205
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v1, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 206
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    new-instance v3, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 207
    .local v3, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 208
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 210
    const-string v4, "device"

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 214
    const v4, 0x7f0201c9

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 220
    :goto_0
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v2

    .line 221
    .local v2, "orderNo":I
    invoke-virtual {v3, v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 222
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 223
    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 225
    .end local v0    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v1    # "finalDb":Lnet/tsz/afinal/FinalDb;
    .end local v2    # "orderNo":I
    .end local v3    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_0
    return-void

    .line 215
    .restart local v0    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v1    # "finalDb":Lnet/tsz/afinal/FinalDb;
    .restart local v3    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_1
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 216
    const v4, 0x7f0201c6

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_0

    .line 218
    :cond_2
    const v4, 0x7f0201c7

    invoke-virtual {v3, v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_0
.end method

.method public static deleteErrShortcut(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 37
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    const-string v2, "title is null or (pluginType is not null and pluginType !=\'\' and pluginType!=\'other\' and deviceMac not in (select deviceMac from ikonke_shortcut where pluginType=\'\' or pluginType is null)) or icon=2130838162"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static deletePluginByDeviceMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    .line 252
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 253
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceMac = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and pluginType!=\'\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static deleteShortCutPluginAll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 191
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " deviceMac=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and shortcutType in(\'rf_module\',\'rt_module\',\'ir_module\',\'tp_module\',\'vd_module\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public static deleteShortcut(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 105
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 106
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v1, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 107
    .local v2, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "deviceMac":Ljava/lang/String;
    const-class v3, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 110
    invoke-static {p0, v0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByDevicemac(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    .end local v0    # "deviceMac":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static deleteShortcutByControlId(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controlId"    # I

    .prologue
    .line 172
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 173
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shortcutType like \'%ontrol\' and relatedid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static deleteShortcutByDeviceId(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceid"    # I

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 116
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcutByDevicemac(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static deleteShortcutByDevicemac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    .line 122
    .local v1, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 126
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shortcutType=\'device\' and relatedid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteShortcutByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;
    .param p2, "pluginType"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 181
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " pluginType=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and deviceMac = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static deleteShortcutByPluginMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginMac"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 177
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " pluginMac=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static deleteShortcutByPluginName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 186
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " deviceMac=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and shortcutType=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static getAllShortcut(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 33
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    const-string v2, "orderNo asc"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceAll(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 131
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    const-string v3, "shortcutType=\'device\'"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 132
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    return-object v1
.end method

.method public static getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 154
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 155
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and (pluginType is null or pluginType=\'\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 159
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDevicesShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 163
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 164
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and shortcutType=\'device\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 168
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDevicetitleByDevicemac(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 339
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deviceMac=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getNoShortcutDevice(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/DeviceModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 51
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    const-string v2, "id not in (select relatedid from ikonke_shortcut)"

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getRemoteListByDevicemac(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 344
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v4, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mac=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 345
    .local v2, "rList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    const-string v1, ""

    .line 346
    .local v1, "idx":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 347
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 350
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 352
    :cond_0
    const-class v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shortcutType like \'%RemoteControl%\' and relatedid in("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 347
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 348
    .local v3, "rModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getShortCutModelByControlId(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controlId"    # I

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 25
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "shortcutType like \'%ontrol\' and relatedid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 26
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    goto :goto_0
.end method

.method public static getShortDeviceList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 307
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    const-string v3, "shortcutType = \'device\'"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 308
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    return-object v1
.end method

.method public static getShortDeviceList(Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOnline"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 312
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    const-string v3, "shortcutType = \'device\' and isOnline=1 ORDER BY orderNo asc"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 313
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    return-object v1
.end method

.method public static getShortDeviceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOnline"    # I
    .param p2, "pluginType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 317
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pluginType = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and isOnline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    return-object v1
.end method

.method public static getShortList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 329
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "shortcutType in(\'rf_module\',\'rt_module\',\'ir_module\',\'tp_module\',\'vd_module\') and deviceMac=\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 331
    .local v3, "shortList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 334
    return-object v1

    .line 331
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 332
    .local v2, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getShortcutType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getShortRemoteControlList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kankunit/smartplugcronus/model/ShortCutModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 323
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    const-string v3, "shortcutType like \'%RemoteControl%\'"

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 324
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    return-object v1
.end method

.method public static getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceid"    # I

    .prologue
    const/4 v5, 0x0

    .line 297
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 298
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "relatedid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and shortcutType = \'device\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 299
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    const/4 v2, 0x0

    .line 302
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    goto :goto_0
.end method

.method public static getShortcutByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 97
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and shortcutType=\'device\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 101
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getShortcutByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;
    .param p2, "pluginType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 88
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and pluginType = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 92
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getShortcutCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v1

    .line 41
    .local v1, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-string v2, "select  orderNo from ikonke_shortcut order by orderNo desc limit 1"

    invoke-virtual {v1, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelBySQL(Ljava/lang/String;)Lnet/tsz/afinal/db/sqlite/DbModel;

    move-result-object v0

    .line 42
    .local v0, "dm":Lnet/tsz/afinal/db/sqlite/DbModel;
    if-eqz v0, :cond_0

    .line 43
    const-string v2, "orderNo"

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/db/sqlite/DbModel;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 45
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getShortcutCountByDeviceid(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceid"    # I

    .prologue
    .line 291
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 292
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "relatedid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and shortcutType = \'device\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method public static getShortcutModelById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 20
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 21
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    return-object v1
.end method

.method public static getShortcutModelByMacAndPluginType(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scm"    # Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 59
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and shortcutType = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getShortcutType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 61
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 63
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getShortcutModelByMacAndPluginType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;
    .param p2, "shortcutType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 68
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and shortcutType = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 69
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 72
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getShortcutModelByPluginMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginMac"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-static {p0, v5}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 137
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pluginMac = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 141
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getShortcutWithDevice(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/tsz/afinal/db/sqlite/DbModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 55
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-string v1, "SELECT a.id as a_id,a.isonline as a_isonline,a.port as a_port,a.time as a_time,a.isdirect as a_isdirect,a.flag as a_flag,a.status as a_status,a.name as a_name,a.mac as a_mac,a.password as a_password,a.shortcutexists as a_shortcutexists,a.version as a_version,a.ip as a_ip ,b.id as b_id,b.isonline as b_isonlie,b.icon as b_icon,b.title as b_title,b.orderNo as b_orderNo,b.shortcutType as b_shortcutType,b.relatedid as b_relatedid FROM ikonke_device a left join ikonke_shortcut b on a.id = b.relatedid where b.id is null"

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->findDbModelListBySQL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static hideRemoteControl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idx"    # Ljava/lang/String;

    .prologue
    .line 367
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 373
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update ikonke_shortcut set isOn=\'off\' where shortcutType like \'%RemoteControl%\' and relatedid in("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hideRemoteControlAll(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 380
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 381
    const-string v1, "update ikonke_shortcut set isOn=\'off\' where shortcutType like \'%RemoteControl%\'"

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public static isDeviceInShortcut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceMac"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 146
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v3, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deviceMac = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and pluginType=\'\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutModel"    # Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getPluginType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getPluginType()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutModelByMacAndPluginType(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v1

    .line 79
    .local v1, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->deleteShortcut(Landroid/content/Context;I)V

    .line 83
    .end local v1    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 84
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static showRemoteControl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idx"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 362
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->checkTableExist(Ljava/lang/Class;)V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update ikonke_shortcut set isOn=\'on\' where shortcutType like \'%RemoteControl%\' and relatedid in("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->exeSql(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateDeviceStateByMac(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scm"    # Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .prologue
    .line 199
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 200
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    const-string v2, "select "

    invoke-virtual {v0, v2}, Lnet/tsz/afinal/FinalDb;->findDbModelListBySQL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, "resList":Ljava/util/List;, "Ljava/util/List<Lnet/tsz/afinal/db/sqlite/DbModel;>;"
    return-void
.end method

.method public static updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scm"    # Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .prologue
    .line 195
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Z)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 196
    .local v0, "finalDb":Lnet/tsz/afinal/FinalDb;
    invoke-virtual {v0, p1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public static updateShortcutByDeviceMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "deviceState"    # Ljava/lang/String;
    .param p3, "isOnline"    # I

    .prologue
    .line 256
    invoke-static {p0, p1}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v0

    .line 257
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCountByDeviceid(Landroid/content/Context;I)I

    move-result v3

    if-nez v3, :cond_4

    .line 259
    new-instance v2, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 260
    .local v2, "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 261
    if-nez p3, :cond_1

    .line 262
    const-string v3, "closed"

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 267
    :goto_0
    invoke-virtual {v2, p1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceMac(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsOnline()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 269
    const-string v3, "device"

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 271
    const v3, 0x7f0201c9

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 277
    :goto_1
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v1

    .line 278
    .local v1, "orderNo":I
    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 279
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 280
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->saveShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 289
    .end local v1    # "orderNo":I
    .end local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_0
    :goto_2
    return-void

    .line 264
    .restart local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_1
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 273
    const v3, 0x7f0201c6

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_1

    .line 275
    :cond_3
    const v3, 0x7f0201c7

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    goto :goto_1

    .line 282
    .end local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    :cond_4
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutByDeviceid(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 283
    .restart local v2    # "scm":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-virtual {v2, p2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, p3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 285
    invoke-static {p0, v2}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->updateShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    goto :goto_2
.end method
