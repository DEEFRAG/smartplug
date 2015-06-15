.class Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UpdateFriendsThread;
.super Ljava/lang/Thread;
.source "BaseUdpBroadcastService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateFriendsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UpdateFriendsThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 286
    :goto_0
    sget-object v4, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 287
    .local v4, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UpdateFriendsThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v18, v0

    const-string v19, "initInfo"

    const-string v20, "needUpdateFriends"

    invoke-static/range {v18 .. v20}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, "needUpdate":Ljava/lang/String;
    const-string v18, "yes"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UpdateFriendsThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByVersion(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    .line 290
    .local v6, "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v7, "devicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 294
    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v14

    .line 295
    .local v14, "roster":Lorg/jivesoftware/smack/Roster;
    invoke-virtual {v14}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v15

    .line 296
    .local v15, "rosterEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v16, "rosterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 298
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_4

    .line 302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v3, "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v13, "remoteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 315
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService$UpdateFriendsThread;->this$0:Lcom/kankunit/smartplugcronus/service/BaseUdpBroadcastService;

    move-object/from16 v18, v0

    const-string v19, "initInfo"

    const-string v20, "needUpdateFriends"

    const-string v21, "no"

    invoke-static/range {v18 .. v21}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v3    # "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .end local v7    # "devicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v13    # "remoteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "roster":Lorg/jivesoftware/smack/Roster;
    .end local v15    # "rosterEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .end local v16    # "rosterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-wide/16 v18, 0xbb8

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 336
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 291
    .restart local v6    # "deviceList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/DeviceModel;>;"
    .restart local v7    # "devicesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 292
    .local v5, "dModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v5    # "dModel":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/RosterEntry;>;"
    .restart local v14    # "roster":Lorg/jivesoftware/smack/Roster;
    .restart local v15    # "rosterEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/RosterEntry;>;"
    .restart local v16    # "rosterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jivesoftware/smack/RosterEntry;

    .line 300
    .local v12, "rEntry":Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v12}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 304
    .end local v12    # "rEntry":Lorg/jivesoftware/smack/RosterEntry;
    .restart local v3    # "addList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "remoteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 305
    .local v17, "string":Ljava/lang/String;
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 306
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "kankun-smartplug.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Lorg/jivesoftware/smack/Roster;->createEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 310
    :catch_1
    move-exception v8

    .line 311
    .local v8, "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_3

    .line 315
    .end local v8    # "e":Lorg/jivesoftware/smack/XMPPException;
    .end local v17    # "string":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 316
    .restart local v17    # "string":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 317
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :try_start_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "kankun-smartplug.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v9

    .line 321
    .local v9, "entry":Lorg/jivesoftware/smack/RosterEntry;
    if-eqz v9, :cond_1

    .line 322
    invoke-virtual {v14, v9}, Lorg/jivesoftware/smack/Roster;->removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 324
    .end local v9    # "entry":Lorg/jivesoftware/smack/RosterEntry;
    :catch_2
    move-exception v8

    .line 325
    .restart local v8    # "e":Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v8}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_4
.end method
