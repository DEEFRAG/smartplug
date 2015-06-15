.class public Lcom/avos/avoscloud/AVUtils;
.super Ljava/lang/Object;
.source "AVUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVUtils$1;
    }
.end annotation


# static fields
.field private static final THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MOBILE:I = 0x2

.field public static final TYPE_NOT_CONNECTED:I = 0x0

.field public static final TYPE_WIFI:I = 0x1

.field public static classNameTag:Ljava/lang/String; = null

.field private static dateFormat:Ljava/lang/String; = null

.field static emailPattern:Ljava/util/regex/Pattern; = null

.field private static fieldsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final objectIdTag:Ljava/lang/String; = "objectId"

.field static pattern:Ljava/util/regex/Pattern; = null

.field static phoneNumPattern:Ljava/util/regex/Pattern; = null

.field public static final typeTag:Ljava/lang/String; = "__type"

.field static verifyCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->dateFormat:Ljava/lang/String;

    .line 31
    const-string v0, "className"

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->classNameTag:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    .line 82
    const-string v0, "^[a-zA-Z_][a-zA-Z_0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->pattern:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "^\\w+?@\\w+?[.]\\w+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->emailPattern:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "1\\d{10}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->phoneNumPattern:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "\\d{6}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->verifyCodePattern:Ljava/util/regex/Pattern;

    .line 177
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    return-void
.end method

.method public static Base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 969
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 376
    if-nez p0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v5

    .line 380
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 381
    .local v2, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 382
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    if-nez p3, :cond_3

    .line 383
    :cond_2
    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v5, 0x1

    goto :goto_0

    .line 381
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 388
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static checkClassName(Ljava/lang/String;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blank class name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid class name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    return-void
.end method

.method public static checkEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->emailPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static checkMobilePhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->phoneNumPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static checkMobileVerifyCode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/avos/avoscloud/AVUtils;->verifyCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 788
    if-nez p0, :cond_1

    .line 789
    const-string v1, "context is null"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 793
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static collectionNonNullCount(Ljava/util/Collection;)I
    .locals 3
    .param p0, "collection"    # Ljava/util/Collection;

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "count":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 925
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 930
    :cond_1
    return v0
.end method

.method public static compareNumberString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "firstNumber"    # Ljava/lang/String;
    .param p1, "secondNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 965
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static computeMD5([B)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # [B

    .prologue
    .line 840
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 841
    .local v4, "md":Ljava/security/MessageDigest;
    const/4 v6, 0x0

    array-length v7, p0

    invoke-virtual {v4, p0, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 842
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 844
    .local v5, "md5bytes":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 845
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 846
    aget-byte v6, v5, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 848
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 850
    .end local v1    # "hex":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 851
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "md5bytes":[B
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static contains(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;

    .prologue
    .line 434
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 436
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/avos/avoscloud/JSONHelper;->mapFromString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 437
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v1, p1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 439
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V
    .locals 6
    .param p1, "object"    # Lcom/avos/avoscloud/AVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/AVObject;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 444
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 450
    .local v3, "valueObject":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1, v2, v3}, Lcom/avos/avoscloud/AVUtils;->checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 452
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/avos/avoscloud/AVObject;->INVALID_KEYS:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    invoke-virtual {p1, v2, v3, v5}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 456
    :cond_2
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 457
    check-cast v3, Ljava/util/Collection;

    .end local v3    # "valueObject":Ljava/lang/Object;
    invoke-static {p1, v2, v3}, Lcom/avos/avoscloud/AVUtils;->updatePropertyFromList(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 458
    .restart local v3    # "valueObject":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 459
    check-cast v3, Ljava/util/Map;

    .end local v3    # "valueObject":Ljava/lang/Object;
    invoke-static {p1, v2, v3}, Lcom/avos/avoscloud/AVUtils;->updatePropertyFromMap(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 461
    .restart local v3    # "valueObject":Ljava/lang/Object;
    :cond_4
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 462
    invoke-virtual {p1, v2, v3, v5}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 466
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "valueObject":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public static copyPropertiesFromMapToObject(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 470
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 472
    .local v3, "valueObject":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1, v2, v3}, Lcom/avos/avoscloud/AVUtils;->checkAndSetValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 476
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "valueObject":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static createArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "__op"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    .local v3, "obj":Ljava/lang/Object;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    const-string v5, "objects"

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v4, "ops":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object v4
.end method

.method public static createDeleteOpMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "__op"

    const-string v3, "Delete"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-object v1
.end method

.method public static createPointerArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "objects":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/avos/avoscloud/AVObject;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "__op"

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/AVObject;

    .line 131
    .local v3, "obj":Lcom/avos/avoscloud/AVObject;
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v3    # "obj":Lcom/avos/avoscloud/AVObject;
    :cond_0
    const-string v5, "objects"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object v4
.end method

.method public static createStringObjectMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-object v0
.end method

.method public static dataFromMap(Ljava/util/Map;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "base64"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static dateFromMap(Ljava/util/Map;)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Date;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "iso"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static dateFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    .line 193
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isDigitString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    .local v0, "date":Ljava/util/Date;
    sget-object v3, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 199
    .local v2, "format":Ljava/text/SimpleDateFormat;
    if-nez v2, :cond_2

    .line 200
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    sget-object v3, Lcom/avos/avoscloud/AVUtils;->dateFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .restart local v2    # "format":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 202
    sget-object v3, Lcom/avos/avoscloud/AVUtils;->THREAD_LOCAL_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 205
    :cond_2
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorLog"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "e":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 953
    .local v0, "i":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 954
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 957
    .end local v0    # "i":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVFile;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/avos/avoscloud/AVFile;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, "file":Lcom/avos/avoscloud/AVFile;
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToObject(Ljava/util/Map;Ljava/lang/Object;)V

    .line 327
    const-string v2, "metaData"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 328
    .local v1, "metadata":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    check-cast v1, Ljava/util/Map;

    .end local v1    # "metadata":Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 329
    :cond_0
    const-string v2, "_name"

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "_name"

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    sget-object v2, Lcom/avos/avoscloud/AVUtils$1;->$SwitchMap$com$avos$avoscloud$AVOSCloud$StorageType:[I

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVOSCloud$StorageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 347
    :goto_0
    :pswitch_0
    return-object v0

    .line 341
    :pswitch_1
    const-string v2, "objectId"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVFile;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static fileMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVGeoPoint;"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "latitude"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 241
    .local v0, "la":D
    const-string v5, "longitude"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 242
    .local v2, "lo":D
    new-instance v4, Lcom/avos/avoscloud/AVGeoPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/avos/avoscloud/AVGeoPoint;-><init>(DD)V

    .line 243
    .local v4, "point":Lcom/avos/avoscloud/AVGeoPoint;
    return-object v4
.end method

.method public static getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 52
    if-eqz p0, :cond_0

    const-class v11, Ljava/lang/Object;

    if-ne p0, v11, :cond_2

    .line 53
    :cond_0
    new-array v10, v12, [Ljava/lang/reflect/Field;

    .line 79
    :cond_1
    :goto_0
    return-object v10

    .line 55
    :cond_2
    sget-object v11, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    invoke-interface {v11, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/reflect/Field;

    .line 56
    .local v10, "theResult":[Ljava/lang/reflect/Field;
    if-nez v10, :cond_1

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/reflect/Field;>;"
    const/4 v8, 0x0

    .line 61
    .local v8, "length":I
    :goto_1
    if-eqz p0, :cond_4

    const-class v11, Ljava/lang/Object;

    if-eq p0, v11, :cond_4

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 63
    .local v1, "declaredFields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_3

    array-length v11, v1

    :goto_2
    add-int/2addr v8, v11

    .line 64
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 66
    goto :goto_1

    :cond_3
    move v11, v12

    .line 63
    goto :goto_2

    .line 67
    .end local v1    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_4
    new-array v10, v8, [Ljava/lang/reflect/Field;

    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/reflect/Field;

    .line 70
    .local v9, "someFields":[Ljava/lang/reflect/Field;
    if-eqz v9, :cond_5

    .line 71
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_4
    if-ge v6, v7, :cond_6

    aget-object v2, v0, v6

    .line 72
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 74
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_6
    array-length v11, v9

    invoke-static {v9, v12, v10, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    array-length v11, v9

    add-int/2addr v4, v11

    goto :goto_3

    .line 78
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "someFields":[Ljava/lang/reflect/Field;
    :cond_7
    sget-object v11, Lcom/avos/avoscloud/AVUtils;->fieldsMap:Ljava/util/Map;

    invoke-interface {v11, p0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getArchiveRequestFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "_internalId"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "relativePath"    # Ljava/lang/String;
    .param p4, "paramString"    # Ljava/lang/String;

    .prologue
    .line 908
    const-string v0, "put"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 919
    .end local p1    # "_internalId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 912
    .restart local p1    # "_internalId":Ljava/lang/String;
    :cond_1
    const-string v0, "post"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    const-string v0, "delete"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 919
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getClass(Ljava/util/Map;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "__type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    .local v0, "type":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 482
    :cond_0
    const-class v1, Ljava/util/Map;

    .line 493
    :goto_0
    return-object v1

    .line 483
    :cond_1
    const-string v1, "Pointer"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    const-class v1, Lcom/avos/avoscloud/AVObject;

    goto :goto_0

    .line 485
    :cond_2
    const-string v1, "GeoPoint"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    const-class v1, Lcom/avos/avoscloud/AVGeoPoint;

    goto :goto_0

    .line 487
    :cond_3
    const-string v1, "Bytes"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 488
    const-class v1, [B

    goto :goto_0

    .line 489
    :cond_4
    const-string v1, "Date"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 490
    const-class v1, Ljava/util/Date;

    goto :goto_0

    .line 493
    :cond_5
    const-class v1, Ljava/util/Map;

    goto :goto_0
.end method

.method public static getConnectivityStatus(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 877
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 880
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 881
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v2

    .line 884
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v2, v3

    goto :goto_0

    .line 886
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getConnectivityStatusString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 892
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getConnectivityStatus(Landroid/content/Context;)I

    move-result v0

    .line 893
    .local v0, "conn":I
    const/4 v1, 0x0

    .line 894
    .local v1, "status":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 895
    const-string v1, "Wifi enabled"

    .line 901
    :cond_0
    :goto_0
    return-object v1

    .line 896
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 897
    const-string v1, "Mobile data enabled"

    goto :goto_0

    .line 898
    :cond_2
    if-nez v0, :cond_0

    .line 899
    const-string v1, "Not connected to Internet"

    goto :goto_0
.end method

.method public static getCurrentTimestamp()J
    .locals 2

    .prologue
    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDirectlyClientForUse()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 2

    .prologue
    .line 974
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static final getFromJSON(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getJSONInteger(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;J)J
    .locals 1
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long p2, v0

    .line 869
    .end local p2    # "defaultValue":J
    :cond_0
    return-wide p2
.end method

.method static getJSONString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 858
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 861
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method static getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 690
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 691
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    .line 696
    :cond_0
    :goto_0
    return-object p0

    .line 692
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 693
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method static getObjectFrom(Ljava/util/Map;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "__type"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 660
    .local v6, "type":Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_3

    .line 661
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 663
    .local v3, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 664
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 666
    .local v4, "o":Ljava/lang/Object;
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    move-object p0, v3

    .line 686
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_1
    return-object p0

    .line 670
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string v7, "Pointer"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Object"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 671
    :cond_4
    const-string v7, "className"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v5

    .line 672
    .local v5, "parseObject":Lcom/avos/avoscloud/AVObject;
    const-string v7, "__type"

    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-static {p0, v5}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    move-object p0, v5

    .line 674
    goto :goto_1

    .line 675
    .end local v5    # "parseObject":Lcom/avos/avoscloud/AVObject;
    :cond_5
    const-string v7, "GeoPoint"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 676
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;

    move-result-object p0

    goto :goto_1

    .line 677
    :cond_6
    const-string v7, "Bytes"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 678
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dataFromMap(Ljava/util/Map;)[B

    move-result-object p0

    goto :goto_1

    .line 679
    :cond_7
    const-string v7, "Date"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 680
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object p0

    goto :goto_1

    .line 681
    :cond_8
    const-string v7, "Relation"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 682
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->objectFromRelationMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object p0

    goto :goto_1

    .line 683
    :cond_9
    const-string v7, "File"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 684
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    goto :goto_1
.end method

.method static getObjectFrom(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p0, "list"    # Ljava/util/Collection;

    .prologue
    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v1, "newList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 652
    .local v2, "obj":Ljava/lang/Object;
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method static getParsedList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .param p0, "list"    # Ljava/util/Collection;

    .prologue
    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .local v1, "newList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 596
    .local v2, "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method static getParsedMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 583
    .local v3, "newMap":Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 584
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 586
    .local v4, "o":Ljava/lang/Object;
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 589
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public static getParsedObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 603
    if-nez p0, :cond_1

    .line 604
    const/4 p0, 0x0

    .line 624
    .end local p0    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 605
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 606
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 607
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 608
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 609
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_4

    .line 610
    check-cast p0, Lcom/avos/avoscloud/AVObject;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 611
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lcom/avos/avoscloud/AVGeoPoint;

    if-eqz v0, :cond_5

    .line 612
    check-cast p0, Lcom/avos/avoscloud/AVGeoPoint;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 613
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 614
    check-cast p0, Ljava/util/Date;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromDate(Ljava/util/Date;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 615
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [B

    if-eqz v0, :cond_7

    .line 616
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromByteArray([B)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 617
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, Lcom/avos/avoscloud/AVFile;

    if-eqz v0, :cond_8

    .line 618
    check-cast p0, Lcom/avos/avoscloud/AVFile;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 619
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_9

    .line 620
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 621
    :cond_9
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public static getRandomMessageId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 713
    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 714
    .local v1, "letters":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 716
    .local v2, "randomString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 717
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getSessionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "selfId"    # Ljava/lang/String;

    .prologue
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasProperty(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getAllFiels(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 366
    .local v2, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 367
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 368
    const/4 v5, 0x1

    .line 371
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_1
    return v5

    .line 366
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isACL(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 509
    if-eqz p0, :cond_0

    const-string v0, "ACL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlankContent(Ljava/lang/String;)Z
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlankString(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 742
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 744
    .local v1, "conMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 746
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 755
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "conMgr":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v4, "Please add ACCESS_NETWORK_STATE permission in your manifest"

    invoke-static {v4, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 752
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 753
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Exception: "

    invoke-static {v3, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 755
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isData(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 517
    if-eqz p0, :cond_0

    const-string v0, "Bytes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDate(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 513
    if-eqz p0, :cond_0

    const-string v0, "Date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDigitString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 181
    if-nez p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 184
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isEmptyList(Ljava/util/List;)Z
    .locals 1
    .param p0, "e"    # Ljava/util/List;

    .prologue
    .line 948
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 521
    if-eqz p0, :cond_0

    const-string v0, "File"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileFromUrulu(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    .line 527
    .local v0, "result":Z
    const-string v1, "mime_type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    .line 528
    return v0

    .line 527
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGeoPoint(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 505
    if-eqz p0, :cond_0

    const-string v0, "GeoPoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 808
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPointer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 501
    if-eqz p0, :cond_0

    const-string v0, "Pointer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    .line 797
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 798
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 801
    .local v2, "resolveInfo":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 802
    const/4 v3, 0x1

    .line 804
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isRelation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 497
    if-eqz p0, :cond_0

    const-string v0, "Relation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 731
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 733
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 734
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 737
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 765
    .local v3, "wasFirst":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 766
    .local v2, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 767
    const/4 v3, 0x0

    .line 768
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 773
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "map"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static jsonStringFromObjectWithNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "map"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static mapFromByteArray([B)Ljava/util/Map;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "__type"

    const-string v2, "Bytes"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "base64"

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-object v0
.end method

.method public static mapFromChildObject(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "cid":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 171
    .local v0, "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v2, "className"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v2, "key"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-object v0

    .line 168
    .end local v0    # "child":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "cid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static mapFromDate(Ljava/util/Date;)Ljava/util/Map;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "__type"

    const-string v2, "Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "iso"

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-object v0
.end method

.method public static mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;
    .locals 3
    .param p0, "file"    # Lcom/avos/avoscloud/AVFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVFile;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 305
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "__type"

    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "metaData"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v1, Lcom/avos/avoscloud/AVUtils$1;->$SwitchMap$com$avos$avoscloud$AVOSCloud$StorageType:[I

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->getStorageType()Lcom/avos/avoscloud/AVOSCloud$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVOSCloud$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 321
    :goto_0
    return-object v0

    .line 310
    :pswitch_0
    const-string v1, "name"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :pswitch_1
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;
    .locals 4
    .param p0, "point"    # Lcom/avos/avoscloud/AVGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 233
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "__type"

    const-string v2, "GeoPoint"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-object v0
.end method

.method public static mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;
    .locals 3
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v1, "className"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->internalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "objectId"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    return-object v0
.end method

.method public static mapFromUserObjectId(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p0, "userObjectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "__type"

    const-string v2, "Pointer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v1, "className"

    const-string v2, "_User"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "objectId"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 703
    const/4 v1, 0x0

    .line 705
    .local v1, "hash":[B
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 709
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Huh,UTF-8 should be supported?"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 540
    const-string v2, "_Role"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    new-instance v2, Lcom/avos/avoscloud/AVRole;

    invoke-direct {v2}, Lcom/avos/avoscloud/AVRole;-><init>()V

    .line 555
    :goto_0
    return-object v2

    .line 542
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->userClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/AVObject;->getSubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 547
    .local v1, "subClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/avos/avoscloud/AVObject;>;"
    if-eqz v1, :cond_2

    .line 549
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/avos/avoscloud/AVRuntimeException;

    const-string v3, "New subclass instance failed."

    invoke-direct {v2, v3, v0}, Lcom/avos/avoscloud/AVRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 532
    const-class v1, Lcom/avos/avoscloud/AVUser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->newAVUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 535
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 536
    .local v0, "object":Lcom/avos/avoscloud/AVObject;
    goto :goto_0
.end method

.method public static objectFromRelationMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVObject;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/avos/avoscloud/AVUtils;->classNameTag:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->objectFromClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v1

    .line 250
    .local v1, "object":Lcom/avos/avoscloud/AVObject;
    return-object v1
.end method

.method public static parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/avos/avoscloud/AVObject;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/avos/avoscloud/AVUtils;->classNameTag:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->newAVObjectByClassName(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 352
    .local v0, "object":Lcom/avos/avoscloud/AVObject;
    const-string v1, "objectId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->setObjectId(Ljava/lang/String;)V

    .line 353
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 354
    return-object v0
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v1, p0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 825
    .local v1, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    .line 826
    .local v3, "longlength":J
    long-to-int v2, v3

    .line 827
    .local v2, "length":I
    int-to-long v5, v2

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "File size >= 2 GB"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .end local v2    # "length":I
    .end local v3    # "longlength":J
    :catchall_0
    move-exception v5

    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 830
    .restart local v2    # "length":I
    .restart local v3    # "longlength":J
    :cond_0
    :try_start_1
    new-array v0, v2, [B

    .line 831
    .local v0, "data":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 834
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->readFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method public static restfulServerData(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez p0, :cond_0

    const-string v1, "{}"

    .line 361
    :goto_0
    return-object v1

    .line 360
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 361
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->jsonStringFromMapWithNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static stringFromBytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 778
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-object v0

    .line 779
    :catch_0
    move-exception v0

    .line 782
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 213
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/avos/avoscloud/AVUtils;->dateFormat:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 215
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "isoDate":Ljava/lang/String;
    return-object v1
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "clazz":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static updatePropertyFromList(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p0, "object"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getObjectFrom(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 430
    .local v0, "data":Ljava/util/List;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 431
    return-void
.end method

.method public static updatePropertyFromMap(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p0, "parent"    # Lcom/avos/avoscloud/AVObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 396
    const-string v7, "objectId"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 397
    .local v4, "objectId":Ljava/lang/String;
    const-string v7, "__type"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 398
    .local v6, "type":Ljava/lang/String;
    if-nez v6, :cond_0

    if-nez v4, :cond_0

    .line 399
    invoke-virtual {p0, p1, p2, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 426
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isGeoPoint(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 404
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->geoPointFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVGeoPoint;

    move-result-object v5

    .line 405
    .local v5, "point":Lcom/avos/avoscloud/AVGeoPoint;
    invoke-virtual {p0, p1, v5, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 406
    .end local v5    # "point":Lcom/avos/avoscloud/AVGeoPoint;
    :cond_1
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isDate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 407
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object v1

    .line 408
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p0, p1, v1, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 409
    .end local v1    # "date":Ljava/util/Date;
    :cond_2
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isData(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 410
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->dataFromMap(Ljava/util/Map;)[B

    move-result-object v0

    .line 411
    .local v0, "data":[B
    invoke-virtual {p0, p1, v0, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 412
    .end local v0    # "data":[B
    :cond_3
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 413
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object v2

    .line 414
    .local v2, "file":Lcom/avos/avoscloud/AVFile;
    invoke-virtual {p0, p1, v2, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 415
    .end local v2    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_4
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isFileFromUrulu(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 416
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->fileFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVFile;

    move-result-object v2

    .line 417
    .restart local v2    # "file":Lcom/avos/avoscloud/AVFile;
    invoke-virtual {p0, p1, v2, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 418
    .end local v2    # "file":Lcom/avos/avoscloud/AVFile;
    :cond_5
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isRelation(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 419
    sget-object v7, Lcom/avos/avoscloud/AVUtils;->classNameTag:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, p1, v7, v8}, Lcom/avos/avoscloud/AVObject;->addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 420
    :cond_6
    invoke-static {v6}, Lcom/avos/avoscloud/AVUtils;->isPointer(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v6, :cond_8

    .line 421
    :cond_7
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->parseObjectFromMap(Ljava/util/Map;)Lcom/avos/avoscloud/AVObject;

    move-result-object v3

    .line 422
    .local v3, "object":Lcom/avos/avoscloud/AVObject;
    invoke-virtual {p0, p1, v3, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 424
    .end local v3    # "object":Lcom/avos/avoscloud/AVObject;
    :cond_8
    invoke-virtual {p0, p1, p2, v8}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public static urlCleanLastSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 934
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 937
    .end local p0    # "url":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
