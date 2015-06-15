.class public Lorg/jivesoftware/smack/RosterEntry;
.super Ljava/lang/Object;
.source "RosterEntry.java"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/Connection;

.field private name:Ljava/lang/String;

.field private final roster:Lorg/jivesoftware/smack/Roster;

.field private status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field private type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private user:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;Lorg/jivesoftware/smack/Roster;Lorg/jivesoftware/smack/Connection;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 57
    iput-object p4, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 58
    iput-object p5, p0, Lorg/jivesoftware/smack/RosterEntry;->roster:Lorg/jivesoftware/smack/Roster;

    .line 59
    iput-object p6, p0, Lorg/jivesoftware/smack/RosterEntry;->connection:Lorg/jivesoftware/smack/Connection;

    .line 60
    return-void
.end method

.method static toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .locals 3

    .prologue
    .line 229
    new-instance v1, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    .line 231
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemStatus(Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V

    .line 233
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 234
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 173
    if-ne p0, p1, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    .line 176
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/jivesoftware/smack/RosterEntry;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    check-cast p1, Lorg/jivesoftware/smack/RosterEntry;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsDeep(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 197
    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 199
    goto :goto_0

    .line 200
    :cond_3
    check-cast p1, Lorg/jivesoftware/smack/RosterEntry;

    .line 201
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 202
    iget-object v2, p1, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 203
    goto :goto_0

    .line 205
    :cond_4
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 206
    goto :goto_0

    .line 207
    :cond_5
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-nez v2, :cond_6

    .line 208
    iget-object v2, p1, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    if-eqz v2, :cond_7

    move v0, v1

    .line 209
    goto :goto_0

    .line 211
    :cond_6
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    iget-object v3, p1, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_7
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-nez v2, :cond_8

    .line 214
    iget-object v2, p1, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eqz v2, :cond_9

    move v0, v1

    .line 215
    goto :goto_0

    .line 217
    :cond_8
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    iget-object v3, p1, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 218
    goto :goto_0

    .line 219
    :cond_9
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 220
    iget-object v2, p1, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 221
    goto :goto_0

    .line 223
    :cond_a
    iget-object v2, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    iget-object v3, p1, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public getGroups()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/RosterGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 120
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/RosterGroup;->contains(Lorg/jivesoftware/smack/RosterEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 91
    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/RosterPacket;-><init>()V

    .line 92
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 93
    invoke-static {p0}, Lorg/jivesoftware/smack/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/RosterEntry;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V

    .line 94
    iget-object v1, p0, Lorg/jivesoftware/smack/RosterEntry;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Connection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/RosterEntry;->user:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Lorg/jivesoftware/smack/RosterEntry;->getGroups()Ljava/util/Collection;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 161
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterGroup;

    .line 165
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 167
    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateState(Ljava/lang/String;Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/jivesoftware/smack/RosterEntry;->name:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/jivesoftware/smack/RosterEntry;->type:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    .line 107
    iput-object p3, p0, Lorg/jivesoftware/smack/RosterEntry;->status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    .line 108
    return-void
.end method
