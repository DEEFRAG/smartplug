.class public Lcom/avos/avoscloud/AVACL;
.super Ljava/lang/Object;
.source "AVACL.java"


# static fields
.field private static publicTag:Ljava/lang/String;

.field private static readTag:Ljava/lang/String;

.field private static rolePrefix:Ljava/lang/String;

.field private static writeTag:Ljava/lang/String;


# instance fields
.field private final permissionsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "read"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    .line 19
    const-string v0, "write"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    .line 20
    const-string v0, "*"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    .line 21
    const-string v0, "role:"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVACL;)V
    .locals 2
    .param p1, "right"    # Lcom/avos/avoscloud/AVACL;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVUser;)V
    .locals 2
    .param p1, "owner"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 44
    return-void
.end method

.method private allowRead(ZLjava/lang/String;)V
    .locals 3
    .param p1, "allowed"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 58
    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private allowWrite(ZLjava/lang/String;)V
    .locals 3
    .param p1, "allowed"    # Z
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 72
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 73
    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "roleName"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    .end local p0    # "roleName":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 329
    .restart local p0    # "roleName":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private isReadAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1, v2}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 66
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isWriteAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, v2}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 81
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private mapForKey(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 48
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v0
.end method

.method public static parseACLWithPublicAccess(ZZ)Lcom/avos/avoscloud/AVACL;
    .locals 1
    .param p0, "read"    # Z
    .param p1, "write"    # Z

    .prologue
    .line 223
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVACL;-><init>()V

    .line 224
    .local v0, "acl":Lcom/avos/avoscloud/AVACL;
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVACL;->setPublicReadAccess(Z)V

    .line 225
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVACL;->setPublicWriteAccess(Z)V

    .line 226
    return-object v0
.end method

.method private roleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "role:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultACL(Lcom/avos/avoscloud/AVACL;Z)V
    .locals 4
    .param p0, "acl"    # Lcom/avos/avoscloud/AVACL;
    .param p1, "withAccessForCurrentUser"    # Z

    .prologue
    const/4 v3, 0x1

    .line 205
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null ACL."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    .line 207
    if-eqz p1, :cond_1

    .line 208
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v1

    .line 209
    .local v1, "user":Lcom/avos/avoscloud/AVUser;
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    .line 210
    .local v0, "defaultACL":Lcom/avos/avoscloud/AVACL;
    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 211
    invoke-virtual {v0, v1, v3}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 213
    .end local v0    # "defaultACL":Lcom/avos/avoscloud/AVACL;
    .end local v1    # "user":Lcom/avos/avoscloud/AVUser;
    :cond_1
    return-void
.end method


# virtual methods
.method getACLMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v0, "aclMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ACL"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVACL;->getPermissionsById()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-object v0
.end method

.method getPermissionsById()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    return-object v0
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Lcom/avos/avoscloud/AVRole;)Z
    .locals 2
    .param p1, "role"    # Lcom/avos/avoscloud/AVRole;

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVACL;->roleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "r":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getRoleReadAccess(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getRoleReadAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Lcom/avos/avoscloud/AVRole;)Z
    .locals 2
    .param p1, "role"    # Lcom/avos/avoscloud/AVRole;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVACL;->roleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "r":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getRoleWriteAccess(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getRoleWriteAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 233
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    .line 234
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 240
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    .line 241
    return-void
.end method

.method public setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 248
    return-void
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 254
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    .line 255
    return-void
.end method

.method public setRoleReadAccess(Lcom/avos/avoscloud/AVRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/avos/avoscloud/AVRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setRoleReadAccess(Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 276
    invoke-static {p1}, Lcom/avos/avoscloud/AVACL;->getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    .line 277
    return-void
.end method

.method public setRoleWriteAccess(Lcom/avos/avoscloud/AVRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/avos/avoscloud/AVRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setRoleWriteAccess(Ljava/lang/String;Z)V

    .line 288
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 298
    invoke-static {p1}, Lcom/avos/avoscloud/AVACL;->getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    .line 299
    return-void
.end method

.method public setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/avos/avoscloud/AVUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 306
    return-void
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 312
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    .line 313
    return-void
.end method
